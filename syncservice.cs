using System;
using System.Collections.Generic;
using System.Text;
using System.Timers;
using Dotmim.Sync;
using Dotmim.Sync.Enumerations;
using Dotmim.Sync.SqlServer;
using System.Threading.Tasks;
using System.IO;
using Microsoft.Extensions.Configuration;


namespace dbsyncMSsql
{
    class syncservice
    {
        private readonly Timer _timer;

        public static void VerifyDir(string path)
        {
            try
            {
                DirectoryInfo dir = new DirectoryInfo(path);
                if (!dir.Exists)
                {
                    dir.Create();
                }
            }
            catch { }
        }

        public static void Logger(string lines)
        {
            string path = "C:/DBsyncLog/";
            VerifyDir(path);
            string fileName = DateTime.Now.Day.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + "_Logs.txt";
            try
            {
                StreamWriter file = new StreamWriter(path + fileName, true);
                file.WriteLine(DateTime.Now.ToString() + ": " + lines);
                file.Close();
            }
            catch (Exception) { }
        }

        public syncservice()
        {
            _timer = new Timer(2 * 60 * 1000) { AutoReset = false };
            _timer.Elapsed += ExecuteServiceAsync;
        }
                

        private void ExecuteServiceAsync(object sender, ElapsedEventArgs ev)
        {
            _ = dbsAsync();

            try
            {
                _timer.Stop();
            }
            catch (Exception ex)
            {
                Console.WriteLine("Something Wrong" + ex.Message);
                Logger("Something Wrong" + ex.Message);
            }
            finally
            {
                _timer.Start();
            }
        }

        private async Task dbsAsync()
        {
            await datasync_condtion();

        }

        public void Start()
        {
            _timer.Start();
        }
        public void Stop()
        {
            _timer.Stop();
        }

        

        private static async Task datasync_condtion()
        {            

            var serverProvider = new SqlSyncChangeTrackingProvider(DBHelper.GetDatabaseConnectionStringMSsqlServer("AdventureWorks"));
            var clientProvider = new SqlSyncChangeTrackingProvider(DBHelper.GetDatabaseConnectionString("RetailProExtended"));


        var tables = new string[] { "Address", "BuildVersion", "Codes", "Customer", "CustomerAddress", "ErrorLog", "Product", "ProductCategory", "ProductDescription", "ProductModel", "ProductModelProductDescription", "SalesOrderDetail", "SalesOrderHeader" };  //"BinaryOptions", "Categories", "EmailDetail", "InvoiceImages", "ModifierImage",  "ProductImage", "SampleFiles",


            var setup = new SyncSetup(tables);
        //});

            // Creating an agent that will handle all the process
            var agent = new SyncAgent(clientProvider, serverProvider);

            var progress = new SynchronousProgress<ProgressArgs>(s =>
            Console.WriteLine($"{s.Context.SyncStage}:\t{s.Message}"));

            do
            {
                Console.WriteLine("Sync start");
                Logger("Sync start");
                try
                {
                    var s = await agent.SynchronizeAsync(setup, progress);
                    Console.WriteLine(s);
                    Logger(s.ToString());
                }
                catch (SyncException e)
                {
                    Console.WriteLine(e.ToString());
                    Logger(e.ToString());
                }
                catch (Exception e)
                {
                    Console.WriteLine("UNKNOW EXCEPTION : " + e.Message);
                    Logger(e.Message.ToString());
                }


                Console.WriteLine("Sync Ended. Press a key to start again, or Escapte to end");
            } while (Console.ReadKey().Key != ConsoleKey.Escape);

        }
    }
}
