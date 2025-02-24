﻿using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;

namespace dbsyncMSsql
{
    class DBHelper
    {
        private static IConfiguration configuration;

        static DBHelper()
        {
            configuration = new ConfigurationBuilder()
              .AddJsonFile("appsettings.json", false, true)
              .AddJsonFile("appsettings.local.json", true, true)
              .Build();

        }

        public static string GetDatabaseConnectionString(string dbName) =>
            string.Format(configuration.GetSection("ConnectionStrings")["SqlConnection"], dbName);

        public static string GetDatabaseConnectionStringMSsqlServer(string dbName) =>
            string.Format(configuration.GetSection("ConnectionStrings")["SqlConnectionServer"], dbName);

        public static string GetSyncTime()
        {
            return configuration["SyncInternal:SyncTime"];
        }


        /// <summary>
        /// create a server database with datas and an empty client database
        /// </summary>
        /// <returns></returns>


        public static async Task DeleteDatabaseAsync(string dbName)
        {
            var masterConnection = new SqlConnection(GetDatabaseConnectionString("master"));
            await masterConnection.OpenAsync();
            var cmdDb = new SqlCommand(GetDeleteDatabaseScript(dbName), masterConnection);
            await cmdDb.ExecuteNonQueryAsync();
            masterConnection.Close();
        }



        public static async Task CreateDatabaseAsync(string dbName, bool recreateDb = true)
        {
            var masterConnection = new SqlConnection(GetDatabaseConnectionString("master"));
            await masterConnection.OpenAsync();
            var cmdDb = new SqlCommand(GetCreationDBScript(dbName, recreateDb), masterConnection);
            await cmdDb.ExecuteNonQueryAsync();
            masterConnection.Close();
        }

        private static string GetDeleteDatabaseScript(string dbName) =>
                  $@"if (exists (Select * from sys.databases where name = '{dbName}'))
            begin
	            alter database [{dbName}] SET SINGLE_USER WITH ROLLBACK IMMEDIATE
	            drop database {dbName}
            end";

        private static string GetCreationDBScript(string dbName, bool recreateDb = true)
        {
            if (recreateDb)
                return $@"if (exists (Select * from sys.databases where name = '{dbName}'))
                    begin
	                    alter database [{dbName}] SET SINGLE_USER WITH ROLLBACK IMMEDIATE
	                    drop database {dbName}
                    end
                    Create database {dbName}";
            else
                return $@"if not (exists (Select * from sys.databases where name = '{dbName}')) 
                          Create database {dbName}";

        }
    }
}
