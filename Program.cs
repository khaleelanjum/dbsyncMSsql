using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using Topshelf;

namespace dbsyncMSsql
{
    class Program
    {
        static void Main(string[] args)
        {
            try
            {
                var code = HostFactory.Run(x =>
                {
                    x.Service<syncservice>
                    (s =>
                    {
                        s.ConstructUsing(ServiceBuilderException => new syncservice());
                        s.WhenStarted(service => service.Start());
                        s.WhenStopped(service => service.Start());
                    });

                    x.RunAsLocalSystem();
                    x.SetServiceName("DatabaseSync");
                    x.SetDisplayName("Database Sync");
                    x.SetDescription("MSsql to Mssql");
                    x.StartManually();
                });

                int codeValue = (int)Convert.ChangeType(code, code.GetTypeCode());
                Environment.ExitCode = codeValue;

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }
    }
}
