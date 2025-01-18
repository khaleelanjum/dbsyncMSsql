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
            _timer = new Timer(.5 * 60 * 1000) { AutoReset = true };
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

            var serverProvider = new SqlSyncChangeTrackingProvider(DBHelper.GetDatabaseConnectionStringMSsqlServer("RetailProExtended"));
            var clientProvider = new SqlSyncChangeTrackingProvider(DBHelper.GetDatabaseConnectionString("RetailProExtended"));



            //var tables = new string[] {
            //"Areas", "BankAccounts", "Banks", "BarcodeDesign", "Billers",   "ChartOfAccounts", "ChartOfAccounts_Backup", "ComboItems",
            //"Companies", "CompaniesManager", "Countries", "CustomerAddress", "CustomerArea", "CustomerGroups", "CustomerPaymentHistory", "Customers", "DailyExpenses",
            //"DailyExpenseTypes", "Deliveries", "DeliveryBoyPayment", "DeliveryStatus", "Designations", "DiscountGiven", "DiscountTaken",  "Employee", "EmployeeExpenseTypes",
            //"EmployeeManager", "EmployeePayments", "EmployeesByLocation", "ExpiryManager", "InventoryLedger",  "IssueStock", "Journal", "KitchenGroup", "Kitchens",
            //"LabelPrinter", "LinkedAccounts", "LocationsManager", "ModifierGroup",  "ModifierOrder", "Modifiers", "MonthlyExpenses", "MonthlyExpenseTypes",
            //"OpenItems", "Options", "OtherIncome", "PaymentMethod", "PaymentMethodDetail", "PaymentMethods", "Payments", "PaymentsDetail", "Permissions", "PermissionsGroup", "POSRegister", 
            //"ProductAttributes",  "ProductsIngridiants", "ProductsManager", "ProductsModifier", "ProductsModifierGroup", "PurchaseBill", "PurchaseBillDetail", "PurchaseReturn",
            //"PurchaseReturnDetail", "PurchasesOrder", "PurchasesOrderDetail", "RecieveStock", "Recovery", "RecoveryDetail", "Reports", "SaleModifiers", "SaleReturn", "SaleReturnDetail",
            //"Sales", "SalesDetail", "SalesIngridiants", "SalesOrder", "SalesOrderDetail", "SaleTaxes",  "SMSDetail", "SMSTemplets", "StockByLocation", "StockBySaleMan", 
            //"StockTransferOrder", "StockTransferOrderDetail", "StockTransfers", "SubCategories", "Suppliers", "SuspendDetail", "Suspends", "SystemPrinters", "Tables", "TaxRates", "Terms",
            //"Transactions", "Units", "WholePayments" };  //"BinaryOptions", "Categories", "EmailDetail", "InvoiceImages", "ModifierImage",  "ProductImage", "SampleFiles",


        ////var tables = new string[] {
        ////"Areas" };  

        //var setup = new SyncSetup(tables);
        //setup.Tables["Areas"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["BankAccounts"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["Banks"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["BarcodeDesign"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["Billers"].SyncDirection = SyncDirection.Bidirectional;
        ////setup.Tables["BinaryOptions"].SyncDirection = SyncDirection.Bidirectional;
        ////setup.Tables["Categories"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["ChartOfAccounts"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["ChartOfAccounts_Backup"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["ComboItems"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["Companies"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["CompaniesManager"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["Countries"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["CustomerAddress"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["CustomerArea"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["CustomerGroups"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["CustomerPaymentHistory"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["Customers"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["DailyExpenses"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["DailyExpenseTypes"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["Deliveries"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["DeliveryBoyPayment"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["DeliveryStatus"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["Designations"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["DiscountGiven"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["DiscountTaken"].SyncDirection = SyncDirection.Bidirectional;
        ////setup.Tables["EmailDetail"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["Employee"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["EmployeeExpenseTypes"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["EmployeeManager"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["EmployeePayments"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["EmployeesByLocation"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["ExpiryManager"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["InventoryLedger"].SyncDirection = SyncDirection.Bidirectional;
        ////setup.Tables["InvoiceImages"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["IssueStock"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["Journal"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["KitchenGroup"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["Kitchens"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["LabelPrinter"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["LinkedAccounts"].SyncDirection = SyncDirection.Bidirectional;
        ////setup.Tables["LinkedAccounts_Retaila"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["LocationsManager"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["ModifierGroup"].SyncDirection = SyncDirection.Bidirectional;
        ////setup.Tables["ModifierImage"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["ModifierOrder"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["Modifiers"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["MonthlyExpenses"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["MonthlyExpenseTypes"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["OpenItems"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["Options"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["OtherIncome"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["PaymentMethod"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["PaymentMethodDetail"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["PaymentMethods"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["Payments"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["PaymentsDetail"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["Permissions"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["PermissionsGroup"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["POSRegister"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["ProductAttributes"].SyncDirection = SyncDirection.Bidirectional;
        ////setup.Tables["ProductImage"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["ProductsIngridiants"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["ProductsManager"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["ProductsModifier"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["ProductsModifierGroup"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["PurchaseBill"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["PurchaseBillDetail"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["PurchaseReturn"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["PurchaseReturnDetail"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["PurchasesOrder"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["PurchasesOrderDetail"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["RecieveStock"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["Recovery"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["RecoveryDetail"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["Reports"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["SaleModifiers"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["SaleReturn"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["SaleReturnDetail"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["Sales"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["SalesDetail"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["SalesIngridiants"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["SalesOrder"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["SalesOrderDetail"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["SaleTaxes"].SyncDirection = SyncDirection.Bidirectional;
        ////setup.Tables["SampleFiles"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["SMSDetail"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["SMSTemplets"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["StockByLocation"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["StockBySaleMan"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["StockTransferOrder"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["StockTransferOrderDetail"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["StockTransfers"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["SubCategories"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["Suppliers"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["SuspendDetail"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["Suspends"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["SystemPrinters"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["Tables"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["TaxRates"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["Terms"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["Transactions"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["Units"].SyncDirection = SyncDirection.Bidirectional;
        //setup.Tables["WholePayments"].SyncDirection = SyncDirection.Bidirectional;


        var tables = new string[] { "Units","WholePayments" };  //"BinaryOptions", "Categories", "EmailDetail", "InvoiceImages", "ModifierImage",  "ProductImage", "SampleFiles",


            var setup = new SyncSetup(tables);
            ////setup.Tables["Areas"].SyncDirection = SyncDirection.Bidirectional;
            ////setup.Tables["Areas"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["BankAccounts"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["Banks"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["BarcodeDesign"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["Billers"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["CancelledItems"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["Categories"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["ChartOfAccounts"].SyncDirection = SyncDirection.Bidirectional;
            ////setup.Tables["ChartOfAccounts_Backup"].SyncDirection = SyncDirection.Bidirectional;
            ////setup.Tables["ComboItems"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["Companies"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["CompaniesManager"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["Countries"].SyncDirection = SyncDirection.Bidirectional;
            ////setup.Tables["CustomerAddress"].SyncDirection = SyncDirection.Bidirectional;
            ////setup.Tables["CustomerArea"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["CustomerGroups"].SyncDirection = SyncDirection.Bidirectional;
            ////setup.Tables["CustomerPaymentHistory"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["Customers"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["DailyExpenses"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["DailyExpenseTypes"].SyncDirection = SyncDirection.Bidirectional;
            ////setup.Tables["Deliveries"].SyncDirection = SyncDirection.Bidirectional;
            //////setup.Tables["DeliveryBoyPayment"].SyncDirection = SyncDirection.Bidirectional;
            ////setup.Tables["DeliveryStatus"].SyncDirection = SyncDirection.Bidirectional;
            ////setup.Tables["Designations"].SyncDirection = SyncDirection.Bidirectional;
            ////setup.Tables["DiscountGiven"].SyncDirection = SyncDirection.Bidirectional;
            ////setup.Tables["DiscountTaken"].SyncDirection = SyncDirection.Bidirectional;
            //////setup.Tables["EmailDetail"].SyncDirection = SyncDirection.Bidirectional;
            ////setup.Tables["Employee"].SyncDirection = SyncDirection.Bidirectional;
            ////setup.Tables["EmployeeExpenseTypes"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["EmployeeManager"].SyncDirection = SyncDirection.Bidirectional;
            ////setup.Tables["EmployeePayments"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["EmployeesByLocation"].SyncDirection = SyncDirection.Bidirectional;
            ////setup.Tables["ExpiryManager"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["InventoryLedger"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["ItemAttributesCurrentStock"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["ItemAttributesStockDetail"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["Journal"].SyncDirection = SyncDirection.Bidirectional;
            ////setup.Tables["KitchenGroup"].SyncDirection = SyncDirection.Bidirectional;
            ////setup.Tables["Kitchens"].SyncDirection = SyncDirection.Bidirectional;
            ////setup.Tables["LabelPrinter"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["LinkedAccounts"].SyncDirection = SyncDirection.Bidirectional;
            ////setup.Tables["LinkedAccounts_Retaila"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["LocationsManager"].SyncDirection = SyncDirection.Bidirectional;
            ////setup.Tables["ModifierGroup"].SyncDirection = SyncDirection.Bidirectional;
            //////setup.Tables["ModifierImage"].SyncDirection = SyncDirection.Bidirectional;
            ////setup.Tables["ModifierOrder"].SyncDirection = SyncDirection.Bidirectional;
            ////setup.Tables["Modifiers"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["MonthlyExpenses"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["MonthlyExpenseTypes"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["OpenItems"].SyncDirection = SyncDirection.Bidirectional;
            ////setup.Tables["Options"].SyncDirection = SyncDirection.Bidirectional;
            ////setup.Tables["OtherIncome"].SyncDirection = SyncDirection.Bidirectional;
            ////setup.Tables["PaymentMethod"].SyncDirection = SyncDirection.Bidirectional;
            ////setup.Tables["PaymentMethodDetail"].SyncDirection = SyncDirection.Bidirectional;
            ////setup.Tables["PaymentMethods"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["Payments"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["PaymentsDetail"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["Permissions"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["PermissionsGroup"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["POSRegister"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["PriceGroup"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["PriceGroupItems"].SyncDirection = SyncDirection.Bidirectional;
            ////setup.Tables["ProductsIngridiants"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["ProductsManager"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["ProductsPricing"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["ProductsSKU"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["ProductsVariants"].SyncDirection = SyncDirection.Bidirectional;
            ////setup.Tables["ProductsModifier"].SyncDirection = SyncDirection.Bidirectional;
            ////setup.Tables["ProductsModifierGroup"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["PurchaseBill"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["PurchaseBillDetail"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["PurchaseReturn"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["PurchaseReturnDetail"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["PurchasesOrder"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["PurchasesOrderDetail"].SyncDirection = SyncDirection.Bidirectional;
            ////setup.Tables["RecieveStock"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["Recovery"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["RecoveryDetail"].SyncDirection = SyncDirection.Bidirectional;
            ////setup.Tables["Reports"].SyncDirection = SyncDirection.Bidirectional;
            ////setup.Tables["SaleModifiers"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["SaleReturn"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["SaleReturnDetail"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["Sales"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["SalesDetail"].SyncDirection = SyncDirection.Bidirectional;
            ////setup.Tables["SalesIngridiants"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["SalesOrder"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["SalesOrderDetail"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["SaleTaxes"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["Sizes"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["StockByLocation"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["StockBySaleMan"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["StockTransferOrder"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["StockTransferOrderDetail"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["StockTransfers"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["SubCategories"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["Suppliers"].SyncDirection = SyncDirection.Bidirectional;
            ////setup.Tables["SuspendDetail"].SyncDirection = SyncDirection.Bidirectional;
            ////setup.Tables["Suspends"].SyncDirection = SyncDirection.Bidirectional;
            ////setup.Tables["SystemPrinters"].SyncDirection = SyncDirection.Bidirectional;
            ////setup.Tables["Tables"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["TaxRates"].SyncDirection = SyncDirection.Bidirectional;
            ////setup.Tables["Terms"].SyncDirection = SyncDirection.Bidirectional;
            ////setup.Tables["Transactions"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["Units"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["VariantGroups"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["Variants"].SyncDirection = SyncDirection.Bidirectional;
            //setup.Tables["WholePayments"].SyncDirection = SyncDirection.Bidirectional;

            //var setup = new SyncSetup(tables);
            //setup.Tables["Areas"].SyncDirection = SyncDirection.Bidirectional;



            // Using the Progress pattern to handle progession during the synchronization
            //var progress = new SynchronousProgress<ProgressArgs>(s =>
            //{
            //    Console.ForegroundColor = ConsoleColor.Green;
            //    //Console.WriteLine($"{s.PogressPercentageString}:\t{s.Source}:\t{s.Message}");
            //    Console.ResetColor();
            //    //Logger($"{s.PogressPercentageString}:\t{s.Source}:\t{s.Message}");
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
