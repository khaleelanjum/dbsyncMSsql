-- Server database
if (exists (select * from sys.databases where name = 'RetailProServer'))
Begin
	ALTER DATABASE [RetailProServer] SET  SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE [RetailProServer]
End
Create database [RetailProServer]
Go

ALTER DATABASE [RetailProServer] SET ALLOW_SNAPSHOT_ISOLATION ON  
ALTER DATABASE [RetailProServer] SET READ_COMMITTED_SNAPSHOT ON  
ALTER DATABASE [RetailProServer] SET CHANGE_TRACKING = ON (CHANGE_RETENTION = 14 DAYS, AUTO_CLEANUP = ON)

USE [RetailProServer]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 2/2/2025 8:23:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[AccountName] [nvarchar](500) NULL,
	[AccountValue] [numeric](18, 2) NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccountTypes]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountTypes](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[AccountType] [nvarchar](200) NULL,
	[IsDeleted] [tinyint] NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_AccountTypes] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Attendance]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendance](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[AttendanceDate] [datetime] NULL,
	[Month] [nvarchar](100) NULL,
	[Year] [nvarchar](100) NULL,
	[CreatedBy] [numeric](18, 0) NULL,
	[Description] [nvarchar](200) NULL,
	[IsDeleted] [tinyint] NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [Attendance_Code] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AttendanceDetail]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttendanceDetail](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[AttendanceCode] [numeric](18, 0) NOT NULL,
	[EmpCode] [numeric](18, 0) NOT NULL,
	[AttendanceDetail] [nvarchar](100) NULL,
	[Remarks] [nvarchar](200) NULL,
	[CreatedBy] [numeric](18, 0) NULL,
	[Day1] [nvarchar](20) NULL,
	[Day2] [nvarchar](20) NULL,
	[Day3] [nvarchar](20) NULL,
	[Day4] [nvarchar](20) NULL,
	[Day5] [nvarchar](20) NULL,
	[Day6] [nvarchar](20) NULL,
	[Day7] [nvarchar](20) NULL,
	[Day8] [nvarchar](20) NULL,
	[Day9] [nvarchar](20) NULL,
	[Day10] [nvarchar](20) NULL,
	[Day11] [nvarchar](20) NULL,
	[Day12] [nvarchar](20) NULL,
	[Day13] [nvarchar](20) NULL,
	[Day14] [nvarchar](20) NULL,
	[Day15] [nvarchar](20) NULL,
	[Day16] [nvarchar](20) NULL,
	[Day17] [nvarchar](20) NULL,
	[Day18] [nvarchar](20) NULL,
	[Day19] [nvarchar](20) NULL,
	[Day20] [nvarchar](20) NULL,
	[Day21] [nvarchar](20) NULL,
	[Day22] [nvarchar](20) NULL,
	[Day23] [nvarchar](20) NULL,
	[Day24] [nvarchar](20) NULL,
	[Day25] [nvarchar](20) NULL,
	[Day26] [nvarchar](20) NULL,
	[Day27] [nvarchar](20) NULL,
	[Day28] [nvarchar](20) NULL,
	[Day29] [nvarchar](20) NULL,
	[Day30] [nvarchar](20) NULL,
	[Day31] [nvarchar](20) NULL,
	[UpdatedBy] [numeric](18, 0) NULL,
	[Day1Remarks] [nvarchar](20) NULL,
	[Day2Remarks] [nvarchar](20) NULL,
	[Day3Remarks] [nvarchar](20) NULL,
	[Day4Remarks] [nvarchar](20) NULL,
	[Day5Remarks] [nvarchar](20) NULL,
	[Day6Remarks] [nvarchar](20) NULL,
	[Day7Remarks] [nvarchar](20) NULL,
	[Day8Remarks] [nvarchar](20) NULL,
	[Day9Remarks] [nvarchar](20) NULL,
	[Day10Remarks] [nvarchar](20) NULL,
	[Day11Remarks] [nvarchar](20) NULL,
	[Day12Remarks] [nvarchar](20) NULL,
	[Day13Remarks] [nvarchar](20) NULL,
	[Day14Remarks] [nvarchar](20) NULL,
	[Day15Remarks] [nvarchar](20) NULL,
	[Day16Remarks] [nvarchar](20) NULL,
	[Day17Remarks] [nvarchar](20) NULL,
	[Day18Remarks] [nvarchar](20) NULL,
	[Day19Remarks] [nvarchar](20) NULL,
	[Day20Remarks] [nvarchar](20) NULL,
	[Day21Remarks] [nvarchar](20) NULL,
	[Day22Remarks] [nvarchar](20) NULL,
	[Day23Remarks] [nvarchar](20) NULL,
	[Day24Remarks] [nvarchar](20) NULL,
	[Day25Remarks] [nvarchar](20) NULL,
	[Day26Remarks] [nvarchar](20) NULL,
	[Day27Remarks] [nvarchar](20) NULL,
	[Day28Remarks] [nvarchar](20) NULL,
	[Day29Remarks] [nvarchar](20) NULL,
	[Day30Remarks] [nvarchar](20) NULL,
	[Day31Remarks] [nvarchar](20) NULL,
	[IsDeleted] [tinyint] NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_AttendanceDetail] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BankAccounts]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankAccounts](
	[ID] [int] NOT NULL,
	[BankID] [numeric](10, 0) NULL,
	[BankAccountNumber] [nvarchar](300) NULL,
	[BankAccountName] [nvarchar](300) NULL,
	[LedgerAccountCode] [nvarchar](300) NULL,
	[IsActive] [tinyint] NULL,
	[IsDeleted] [tinyint] NULL,
	[IsSync] [numeric](18, 0) NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [numeric](18, 0) NULL,
 CONSTRAINT [BankAccounts_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Banks]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banks](
	[ID] [numeric](10, 0) NOT NULL,
	[BankName] [nvarchar](300) NULL,
	[Branch] [nvarchar](300) NULL,
	[ContactPerson] [nvarchar](100) NULL,
	[Address] [nvarchar](500) NULL,
	[City] [nvarchar](100) NULL,
	[Country] [nvarchar](100) NULL,
	[Phone] [nvarchar](100) NULL,
	[Mobile] [nvarchar](100) NULL,
	[Fax] [nvarchar](100) NULL,
	[Website] [nvarchar](300) NULL,
	[Email] [nvarchar](100) NULL,
	[Remarks] [nvarchar](510) NULL,
	[IsActive] [tinyint] NULL,
	[IsDeleted] [tinyint] NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [numeric](18, 0) NULL,
 CONSTRAINT [PK_Banks] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BarcodeDesign]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BarcodeDesign](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](300) NULL,
	[PageSize] [nvarchar](100) NULL,
	[LabelHeight] [nvarchar](100) NULL,
	[LabelWidth] [nvarchar](100) NULL,
	[LeftMargin] [nvarchar](100) NULL,
	[TopMargin] [nvarchar](100) NULL,
	[InvoiceType] [nvarchar](100) NULL,
	[InvoiceName] [nvarchar](100) NULL,
	[InvoiceSize] [nvarchar](100) NULL,
	[Path] [nvarchar](1000) NULL,
	[IsDeleted] [tinyint] NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [BarcodeDesign_Code] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Billers]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Billers](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[BusinessTitle] [nvarchar](500) NULL,
	[BusinessTitleArabic] [nvarchar](500) NULL,
	[Address] [nvarchar](500) NULL,
	[AddressArabic] [nvarchar](500) NULL,
	[POBOXNO] [nvarchar](100) NULL,
	[POBOXNOArabic] [nvarchar](100) NULL,
	[Telephone] [nvarchar](100) NULL,
	[TRNNO] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[Website] [nvarchar](100) NULL,
	[C1] [nvarchar](500) NULL,
	[C2] [nvarchar](500) NULL,
	[C3] [nvarchar](500) NULL,
	[C4] [nvarchar](500) NULL,
	[Terms] [nvarchar](1000) NULL,
	[SaleInvoiceSize] [nvarchar](100) NULL,
	[SaleInvoiceLeftMargin] [nvarchar](50) NULL,
	[SaleInvoiceTopMargin] [nvarchar](50) NULL,
	[SaleOrderInvoiceSize] [nvarchar](100) NULL,
	[SaleOrderInvoiceLeftMargin] [nvarchar](50) NULL,
	[SaleOrderInvoiceTopMargin] [nvarchar](50) NULL,
	[PurchaseInvoiceSize] [nvarchar](100) NULL,
	[PurchaseInvoiceLeftMargin] [nvarchar](50) NULL,
	[PurchaseInvoiceTopMargin] [nvarchar](50) NULL,
	[PurchaseOrderInvoiceSize] [nvarchar](100) NULL,
	[PurchaseOrderInvoiceLeftMargin] [nvarchar](50) NULL,
	[PurchaseOrderInvoiceTopMargin] [nvarchar](50) NULL,
	[NoofSaleInvoice] [numeric](18, 0) NULL,
	[NoofSaleOrderInvoice] [numeric](18, 0) NULL,
	[NoofPurchaseInvoice] [numeric](18, 0) NULL,
	[NoofPurchaseOrderInvoice] [numeric](18, 0) NULL,
	[UseDefaultPrinter] [int] NULL,
	[DefaultPrinter] [nvarchar](200) NULL,
	[PaySlipInvoiceSize] [nvarchar](100) NULL,
	[PayslipLeftMargin] [nvarchar](100) NULL,
	[PaySlipTopMargin] [nvarchar](100) NULL,
	[PaySlipCopies] [nvarchar](100) NULL,
	[IsDeleted] [tinyint] NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
	[CustomerReceiptSize] [nvarchar](100) NULL,
	[CustomerReceiptLeftMargin] [nvarchar](50) NULL,
	[CustomerReceiptTopMargin] [nvarchar](50) NULL,
	[NoofCustomerReceipts] [numeric](18, 0) NULL,
	[UseLabelPrinter] [int] NULL,
	[DefaultLabelPrinter] [nvarchar](400) NULL,
	[BranchCode] [numeric](18, 0) NULL,
	[EnableSignleKOT] [int] NULL,
	[SingleKOTPrinter] [nvarchar](200) NULL,
	[SingleKOTPrintCopies] [int] NULL,
 CONSTRAINT [PK_Billers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillOfMaterial_Input]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillOfMaterial_Input](
	[BillID] [numeric](18, 0) NOT NULL,
	[RowID] [int] NULL,
	[ProductCode] [bigint] NULL,
	[Attributes] [nvarchar](2000) NULL,
	[Quantity] [numeric](18, 3) NULL,
	[Unit] [nvarchar](50) NULL,
	[UnitCost] [numeric](18, 2) NULL,
	[Amount] [numeric](18, 2) NULL,
	[InventoryCreditAccount] [nvarchar](150) NULL,
	[IsDeleted] [tinyint] NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_BillOfMaterial_Input] PRIMARY KEY CLUSTERED 
(
	[BillID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillOfMaterial_Master]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillOfMaterial_Master](
	[BillID] [numeric](18, 0) NOT NULL,
	[BillDate] [datetime] NULL,
	[LocationCode] [bigint] NULL,
	[Remarks] [nvarchar](600) NULL,
	[CompanyCode] [bigint] NULL,
	[UserName] [nvarchar](150) NULL,
	[IsDeleted] [tinyint] NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [BillOfMaterial_Master_BillID] PRIMARY KEY CLUSTERED 
(
	[BillID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillOfMaterial_Output]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillOfMaterial_Output](
	[BillID] [numeric](18, 0) NOT NULL,
	[RowID] [int] NULL,
	[ProductCode] [bigint] NULL,
	[Attributes] [nvarchar](2000) NULL,
	[Quantity] [numeric](18, 3) NULL,
	[Unit] [nvarchar](50) NULL,
	[SalePrice] [numeric](18, 2) NULL,
	[Amount] [numeric](18, 2) NULL,
	[InventoryDebitAccount] [nvarchar](150) NULL,
	[ManufacturingDate] [datetime] NULL,
	[UnitPackingCost] [numeric](18, 2) NULL,
	[IsDeleted] [tinyint] NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_BillOfMaterial_Output] PRIMARY KEY CLUSTERED 
(
	[BillID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BinaryOptions]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinaryOptions](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](300) NULL,
	[Value] [image] NULL,
	[CompanyCode] [int] NULL,
	[IsDeleted] [tinyint] NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_BinaryOptions] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CancelledItems]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CancelledItems](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductCode] [int] NULL,
	[ProductName] [nvarchar](1000) NULL,
	[Quantity] [numeric](18, 4) NULL,
	[UserCode] [int] NULL,
	[UserName] [nvarchar](100) NULL,
	[Operation] [nvarchar](100) NULL,
	[CancelledDate] [datetime] NULL,
	[IsSync] [int] NULL,
	[BranchCode] [int] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
 CONSTRAINT [CancelledItems_Code] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CID] [bigint] IDENTITY(1,1) NOT NULL,
	[Category] [nvarchar](500) NULL,
	[IsDeleted] [tinyint] NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[MyShopsCatID] [int] NULL,
	[MyShopsSync] [tinyint] NULL,
	[MyShopsLastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
	[MyShopsStatus] [int] NULL,
	[Color] [nvarchar](200) NULL,
	[ImageName] [nvarchar](2000) NULL,
	[BranchCode] [numeric](18, 0) NULL,
	[Parent] [int] NULL,
	[WCProductCategoryId] [int] NULL,
	[WCProductParentCategoryId] [int] NULL,
	[WCSyncDate] [datetime] NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories_Medicines]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories_Medicines](
	[CID] [numeric](18, 0) NOT NULL,
	[Category] [nvarchar](500) NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories_SuperMarket]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories_SuperMarket](
	[CID] [numeric](18, 0) NOT NULL,
	[Category] [nvarchar](1000) NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChartOfAccounts]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChartOfAccounts](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[AccountCode] [nvarchar](200) NOT NULL,
	[AccountCodeMasterPart] [numeric](10, 0) NULL,
	[AccountCodeNumericPart] [numeric](10, 0) NULL,
	[ParentAccountCode] [nvarchar](200) NULL,
	[TopParentOfSameType] [nvarchar](200) NULL,
	[Name] [nvarchar](510) NULL,
	[Description] [nvarchar](1000) NULL,
	[OpeningBalance] [money] NULL,
	[ClosingBalance] [money] NULL,
	[DebitorOrCreditor] [nvarchar](20) NULL,
	[AccountType] [nvarchar](200) NULL,
	[Hidden] [bit] NULL,
	[LeafNode] [bit] NULL,
	[DepthLevel] [int] NULL,
	[EquityRelated] [bit] NULL,
	[CompanyCode] [bigint] NOT NULL,
	[IsDeleted] [tinyint] NULL,
	[IsSync] [numeric](18, 0) NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_ChartOfAccounts] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChartOfAccounts_JellyERP]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChartOfAccounts_JellyERP](
	[Code] [int] IDENTITY(6,1) NOT NULL,
	[AccountCode] [nvarchar](200) NULL,
	[AccountCodeMasterPart] [numeric](10, 0) NULL,
	[AccountCodeNumericPart] [numeric](10, 0) NULL,
	[ParentAccountCode] [nvarchar](200) NULL,
	[TopParentOfSameType] [nvarchar](200) NULL,
	[Name] [nvarchar](510) NULL,
	[Description] [nvarchar](1000) NULL,
	[OpeningBalance] [numeric](18, 2) NULL,
	[ClosingBalance] [numeric](18, 2) NULL,
	[DebitorOrCreditor] [nvarchar](20) NULL,
	[AccountType] [nvarchar](200) NULL,
	[Hidden] [bit] NULL,
	[LeafNode] [bit] NULL,
	[DepthLevel] [int] NULL,
	[EquityRelated] [bit] NULL,
	[CompanyCode] [bigint] NULL,
	[IsDeleted] [tinyint] NULL,
	[IsSync] [numeric](18, 0) NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_ChartOfAccounts_JellyERP] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChartOfAccounts_MultiTechERP]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChartOfAccounts_MultiTechERP](
	[AccountCode] [nvarchar](400) NULL,
	[AccountCodeMasterPart] [numeric](10, 0) NULL,
	[AccountCodeNumericPart] [numeric](10, 0) NULL,
	[ParentAccountCode] [nvarchar](400) NULL,
	[TopParentOfSameType] [nvarchar](400) NULL,
	[Name] [nvarchar](1020) NULL,
	[Description] [nvarchar](2000) NULL,
	[OpeningBalance] [numeric](18, 2) NULL,
	[ClosingBalance] [numeric](18, 2) NULL,
	[DebitorOrCreditor] [nvarchar](40) NULL,
	[AccountType] [nvarchar](400) NULL,
	[Hidden] [bit] NULL,
	[LeafNode] [bit] NULL,
	[DepthLevel] [int] NULL,
	[EquityRelated] [bit] NULL,
	[CompanyCode] [bigint] NULL,
	[LastSyncDate] [datetime] NULL,
	[IsSync] [numeric](18, 0) NULL,
	[BranchCode] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChartOfAccounts_Retaila]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChartOfAccounts_Retaila](
	[Code] [int] NOT NULL,
	[AccountCode] [nvarchar](200) NOT NULL,
	[AccountCodeMasterPart] [numeric](10, 0) NULL,
	[AccountCodeNumericPart] [numeric](10, 0) NULL,
	[ParentAccountCode] [nvarchar](200) NULL,
	[TopParentOfSameType] [nvarchar](200) NULL,
	[Name] [nvarchar](510) NULL,
	[Description] [nvarchar](1000) NULL,
	[OpeningBalance] [money] NULL,
	[ClosingBalance] [money] NULL,
	[DebitorOrCreditor] [nvarchar](20) NULL,
	[AccountType] [nvarchar](200) NULL,
	[Hidden] [bit] NULL,
	[LeafNode] [bit] NULL,
	[DepthLevel] [numeric](10, 0) NULL,
	[EquityRelated] [bit] NULL,
	[CompanyCode] [bigint] NULL,
	[IsDeleted] [int] NULL,
	[IsSync] [numeric](18, 0) NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Colors]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colors](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[Color] [nvarchar](300) NULL,
	[IsDeleted] [tinyint] NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_Colors] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ComboItems]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComboItems](
	[ID] [int] NOT NULL,
	[ComboID] [int] NULL,
	[ProductCode] [int] NULL,
	[Qty] [numeric](25, 0) NULL,
	[IsSync] [numeric](18, 0) NULL,
	[BranchCode] [numeric](18, 0) NULL,
	[IsDeleted] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
 CONSTRAINT [ComboItems_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Companies]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Companies](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[COID] [numeric](18, 0) NULL,
	[Company] [nvarchar](500) NULL,
	[IsDeleted] [tinyint] NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_Companies] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Companies_Medicines]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Companies_Medicines](
	[Company] [nvarchar](500) NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompaniesManager]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompaniesManager](
	[Code] [bigint] NOT NULL,
	[Name] [nvarchar](1800) NULL,
	[City] [nvarchar](500) NULL,
	[Country] [nvarchar](500) NULL,
	[Remarks] [nvarchar](1000) NULL,
	[IsActive] [tinyint] NULL,
	[Telephone] [nvarchar](1000) NULL,
	[Mobile] [nvarchar](1000) NULL,
	[Fax] [nvarchar](1000) NULL,
	[Address] [nvarchar](1000) NULL,
	[Website] [nvarchar](1000) NULL,
	[Email] [nvarchar](1000) NULL,
	[IsDeleted] [tinyint] NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [numeric](18, 0) NULL,
 CONSTRAINT [CompaniesManager_Code] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[Country] [nvarchar](300) NULL,
	[IsDeleted] [tinyint] NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[Country] [nvarchar](300) NULL,
	[LastSyncDate] [datetime] NULL,
	[IsSync] [numeric](18, 0) NULL,
	[BranchCode] [numeric](18, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Currency]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Currency](
	[Code] [nvarchar](100) NOT NULL,
	[Name] [nvarchar](300) NULL,
	[IsDeleted] [tinyint] NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [numeric](18, 0) NULL,
 CONSTRAINT [PK_Currency] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerAddress]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerAddress](
	[ID] [int] NOT NULL,
	[CustomerCode] [numeric](18, 0) NULL,
	[Address] [nvarchar](1000) NULL,
	[IsPrimary] [numeric](18, 0) NULL,
	[IsSync] [numeric](18, 0) NULL,
	[BranchCode] [numeric](18, 0) NULL,
	[IsDeleted] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
 CONSTRAINT [CustomerAddress_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerArea]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerArea](
	[CAID] [int] NOT NULL,
	[Name] [nvarchar](510) NULL,
	[CompanyCode] [int] NULL,
	[IsDeleted] [tinyint] NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_CustomerArea] PRIMARY KEY CLUSTERED 
(
	[CAID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerGroups]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerGroups](
	[CGID] [int] NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Rate] [nvarchar](500) NULL,
	[Type] [nvarchar](500) NULL,
	[IsDefault] [tinyint] NULL,
	[IsDeleted] [tinyint] NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_CustomerGroup] PRIMARY KEY CLUSTERED 
(
	[CGID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerPaymentHistory]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerPaymentHistory](
	[PID] [numeric](18, 0) NOT NULL,
	[PaymentDate] [datetime] NULL,
	[CustomerName] [nvarchar](300) NULL,
	[SaleID] [bigint] NULL,
	[Amount] [numeric](18, 2) NULL,
	[IsDeleted] [tinyint] NULL,
	[IsSync] [tinyint] NULL,
	[BranchCode] [numeric](18, 0) NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
 CONSTRAINT [CustomerPaymentHistory_PID] PRIMARY KEY CLUSTERED 
(
	[PID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](1800) NULL,
	[CustomerGroup] [int] NULL,
	[TRNNo] [nvarchar](50) NULL,
	[Brand] [nvarchar](100) NULL,
	[VehicleNo] [nvarchar](500) NULL,
	[ContactPerson] [nvarchar](500) NULL,
	[Telephone] [nvarchar](500) NULL,
	[Fax] [nvarchar](500) NULL,
	[Mobile] [nvarchar](500) NULL,
	[Address] [nvarchar](1000) NULL,
	[POBox] [nvarchar](50) NULL,
	[City] [nvarchar](500) NULL,
	[Country] [nvarchar](500) NULL,
	[Website] [nvarchar](1000) NULL,
	[Email] [nvarchar](500) NULL,
	[Remarks] [nvarchar](1000) NULL,
	[Balance] [numeric](18, 4) NULL,
	[IsActive] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[CompanyCode] [bigint] NULL,
	[ReceivableAccountCode] [nvarchar](200) NULL,
	[TermsCode] [int] NULL,
	[CreditLimit] [numeric](18, 4) NULL,
	[C1] [nvarchar](100) NULL,
	[C2] [nvarchar](100) NULL,
	[C3] [nvarchar](100) NULL,
	[C4] [nvarchar](100) NULL,
	[IsDeleted] [tinyint] NULL,
	[IsSync] [numeric](18, 0) NULL,
	[Area] [nvarchar](510) NULL,
	[LastSyncDate] [datetime] NULL,
	[CNIC] [nvarchar](200) NULL,
	[BranchCode] [numeric](18, 0) NULL,
	[TotalRewardPoints] [int] NULL,
	[TotalRewardPointsUsed] [int] NULL,
	[TotalRewardPointsAmountUsed] [numeric](18, 4) NULL,
	[TotalRewardPointExpired] [int] NULL,
 CONSTRAINT [Customers_Code] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DailyExpenses]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DailyExpenses](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ExpenseDate] [datetime] NULL,
	[Expense] [nvarchar](100) NULL,
	[Amount] [numeric](18, 4) NULL,
	[UserName] [nvarchar](150) NULL,
	[TaxID] [int] NULL,
	[TaxName] [nvarchar](100) NULL,
	[TaxRate] [numeric](25, 4) NULL,
	[ExpenseTax] [numeric](25, 4) NULL,
	[CompanyCode] [int] NULL,
	[IsSync] [tinyint] NULL,
	[IsDeleted] [tinyint] NULL,
	[BranchCode] [numeric](18, 0) NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
 CONSTRAINT [DailyExpenses_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DailyExpenseTypes]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DailyExpenseTypes](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Category] [nvarchar](500) NULL,
	[IsDeleted] [tinyint] NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [DailyExpenseTypes_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeletedItems]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeletedItems](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[TableName] [nvarchar](200) NULL,
	[ConditionalText] [nvarchar](1000) NULL,
	[ProductCode] [nvarchar](1000) NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_DeletedItems] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deliveries]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deliveries](
	[ID] [bigint] NOT NULL,
	[SaleID] [numeric](18, 0) NULL,
	[SaleDate] [datetime] NULL,
	[CustomerCode] [int] NULL,
	[Address] [nvarchar](100) NULL,
	[Status] [nvarchar](100) NULL,
	[DeliveredBy] [nvarchar](100) NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[UpdateBy] [nvarchar](100) NULL,
	[UpdateAt] [datetime] NULL,
	[SourceID] [numeric](18, 0) NULL,
	[Source] [nvarchar](200) NULL,
	[Notes] [nvarchar](2000) NULL,
	[IsSync] [int] NULL,
	[BranchCode] [int] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
 CONSTRAINT [Deliveries_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[Department] [nvarchar](150) NULL,
	[IsDeleted] [tinyint] NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Designation]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Designation](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](1000) NULL,
	[IsDeleted] [tinyint] NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [Designation_Code] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Designations]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Designations](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Designation] [nvarchar](500) NOT NULL,
	[IsDeleted] [tinyint] NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [Designations_Designation] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiscountGiven]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiscountGiven](
	[ID] [numeric](10, 0) NOT NULL,
	[CardID] [numeric](10, 0) NULL,
	[SaleID] [numeric](10, 0) NULL,
	[DiscountDate] [datetime] NULL,
	[DebitedAccount] [nvarchar](600) NULL,
	[CreditedAccount] [nvarchar](600) NULL,
	[DiscountAmount] [numeric](18, 2) NULL,
	[JournalMemo] [nvarchar](1020) NULL,
	[IsDeleted] [tinyint] NULL,
	[IsSync] [tinyint] NULL,
	[BranchCode] [numeric](18, 0) NULL,
	[LastSyncDate] [datetime] NULL,
 CONSTRAINT [PK_DiscountGiven] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiscountTaken]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiscountTaken](
	[ID] [numeric](10, 0) NOT NULL,
	[CardID] [numeric](10, 0) NULL,
	[PurchaseID] [numeric](10, 0) NULL,
	[DiscountDate] [datetime] NULL,
	[DebitedAccount] [nvarchar](600) NULL,
	[CreditedAccount] [nvarchar](600) NULL,
	[DiscountAmount] [numeric](18, 2) NULL,
	[JournalMemo] [nvarchar](1020) NULL,
	[IsSync] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_DiscountTaken] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmailDetail]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailDetail](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[Status] [nvarchar](50) NULL,
	[FileDetail] [image] NULL,
	[ResentBy] [nvarchar](100) NULL,
	[IsDeleted] [tinyint] NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_EmailDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Employee_ID] [bigint] NOT NULL,
	[First_Name] [nvarchar](300) NULL,
	[Last_Name] [nvarchar](100) NULL,
	[Date_of_Birth] [datetime] NULL,
	[Country] [nvarchar](100) NULL,
	[Email_Address] [nvarchar](300) NULL,
	[Age] [int] NULL,
	[IsActive] [bit] NULL,
	[IsSync] [tinyint] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [Employee_Employee_ID] PRIMARY KEY CLUSTERED 
(
	[Employee_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeByLocation]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeByLocation](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[EmployeeCode] [numeric](18, 0) NULL,
	[BranchCode] [numeric](18, 0) NULL,
	[Branch] [nvarchar](200) NULL,
	[IsDeleted] [tinyint] NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
 CONSTRAINT [PK_EmployeeByLocation] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeExpenseTypes]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeExpenseTypes](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Category] [nvarchar](500) NULL,
	[IsDeleted] [tinyint] NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [EmployeeExpenseTypes_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeManager]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeManager](
	[EmployeeCode] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Login] [nvarchar](500) NULL,
	[Password] [nvarchar](500) NULL,
	[Role] [nvarchar](500) NULL,
	[Telephone] [nvarchar](500) NULL,
	[Mobile] [nvarchar](500) NULL,
	[Email] [nvarchar](500) NULL,
	[Address] [nvarchar](2000) NULL,
	[City] [nvarchar](500) NULL,
	[Country] [nvarchar](500) NULL,
	[Salary] [numeric](18, 4) NULL,
	[Allowances] [numeric](18, 4) NULL,
	[Balance] [numeric](18, 4) NULL,
	[IsActive] [smallint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[PayableAccountCode] [nvarchar](200) NULL,
	[CompanyCode] [int] NULL,
	[BillerCode] [int] NULL,
	[IsSync] [tinyint] NULL,
	[CanDiscount] [int] NULL,
	[CanSee] [int] NULL,
	[CanSwitchPriceGroup] [int] NULL,
	[CanChangePrice] [int] NULL,
	[CanViewRegister] [int] NULL,
	[CanCloseRegister] [int] NULL,
	[EnableMobileReport] [int] NULL,
	[PriceGroup] [int] NULL,
	[GroupCode] [int] NULL,
	[Gender] [int] NULL,
	[DOB] [datetime] NULL,
	[PassportNo] [nvarchar](200) NULL,
	[PassportExpiry] [datetime] NULL,
	[VisaType] [nvarchar](200) NULL,
	[VisaExpiry] [datetime] NULL,
	[Identification] [int] NULL,
	[NetBalance] [float] NULL,
	[SalaryCalculationMethod] [nvarchar](100) NULL,
	[WorkingHours] [nvarchar](100) NULL,
	[ShortLeaveCalculationMethod] [nvarchar](100) NULL,
	[EmployeeCompanyCode] [nvarchar](200) NULL,
	[Designation] [nvarchar](1000) NULL,
	[NativeCountry] [nvarchar](100) NULL,
	[JoiningDate] [datetime] NULL,
	[BankAccountNumber] [nvarchar](100) NULL,
	[BankName] [nvarchar](100) NULL,
	[IDNumber] [nvarchar](100) NULL,
	[IDExpiry] [datetime] NULL,
	[MedicalPolicyNumber] [nvarchar](100) NULL,
	[MedicalPolicyExpiry] [datetime] NULL,
	[DrivingLicense] [nvarchar](100) NULL,
	[DrivingLicenseExpiry] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[DefaultLanguage] [int] NULL,
	[EnableDeleteRow] [int] NULL,
	[DeleteRowPassword] [nvarchar](1000) NULL,
	[CanViewBils] [bit] NULL,
	[BranchCode] [int] NULL,
	[CustomerSelection] [int] NULL,
	[CanChangeDate] [int] NULL,
 CONSTRAINT [EmployeeManager_EmployeeCode] PRIMARY KEY CLUSTERED 
(
	[EmployeeCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeePayments]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeePayments](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[EmployeeCode] [bigint] NULL,
	[PaymentDate] [datetime] NULL,
	[PaymentType] [nvarchar](150) NULL,
	[PaymentAmount] [numeric](18, 4) NULL,
	[EmployeeBalance] [numeric](18, 4) NULL,
	[Remarks] [nvarchar](500) NULL,
	[PaymentMethodDetailID] [bigint] NULL,
	[DebitedAccountCode] [nvarchar](200) NULL,
	[CreditedAccountCode] [nvarchar](200) NULL,
	[CompanyCode] [bigint] NULL,
	[UserName] [nvarchar](150) NULL,
	[IsSync] [tinyint] NULL,
	[BranchCode] [numeric](18, 0) NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
 CONSTRAINT [EmployeePayments_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeRemarks]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeRemarks](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[EmpCode] [numeric](18, 0) NULL,
	[Remarks] [nvarchar](100) NULL,
	[RemarkDate] [datetime] NULL,
	[CreatedBy] [numeric](18, 0) NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [EmployeeRemarks_Code] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EMPLOYEES]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPLOYEES](
	[Auto] [bigint] IDENTITY(1,1) NOT NULL,
	[EmpCode] [nvarchar](50) NOT NULL,
	[EmpName] [nvarchar](50) NULL,
	[FHName] [nvarchar](50) NULL,
	[NIC] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[TelR] [nvarchar](50) NULL,
	[TelM] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Designation] [nvarchar](50) NULL,
	[DOJ] [smalldatetime] NULL,
	[SalaryType] [nvarchar](50) NULL,
	[MSalary] [decimal](18, 4) NULL,
	[DSalary] [decimal](18, 4) NULL,
	[Reference] [nvarchar](50) NULL,
	[Status] [nvarchar](50) NULL,
	[advbalance] [decimal](18, 4) NULL,
	[EmpUName] [nvarchar](50) NULL,
	[LedgerCode] [nvarchar](50) NULL,
	[ShiftName] [nvarchar](50) NULL,
	[TimeIn] [smalldatetime] NULL,
	[TimeOut] [smalldatetime] NULL,
	[MaxLeaves] [int] NULL,
	[picture] [image] NULL,
 CONSTRAINT [PK_EMPLOYEES] PRIMARY KEY CLUSTERED 
(
	[Auto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeSalary]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeSalary](
	[SCode] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
	[EmployeeCode] [numeric](18, 0) NULL,
	[Month] [nvarchar](100) NULL,
	[MonthDays] [nvarchar](100) NULL,
	[Year] [nvarchar](100) NULL,
	[TotalAmount] [float] NULL,
	[PaidAmount] [float] NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[IsSync] [int] NULL,
	[BranchCode] [numeric](18, 0) NULL,
	[WorkingDays] [float] NULL,
	[TotalPresentDays] [float] NULL,
	[TotalAbsent] [float] NULL,
	[TotalLeaves] [float] NULL,
	[TotalShortLeaves] [float] NULL,
	[TotalOverTime] [float] NULL,
	[PerDaySalary] [float] NULL,
	[OverTimeAmount] [float] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
 CONSTRAINT [EmployeeSalary_SCode] PRIMARY KEY CLUSTERED 
(
	[SCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeSalaryDetail]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeSalaryDetail](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[RowID] [numeric](18, 0) NULL,
	[SCode] [numeric](18, 0) NULL,
	[Type] [nvarchar](100) NULL,
	[TypeDetail] [nvarchar](1000) NULL,
	[Amount] [float] NULL,
	[Remarks] [nvarchar](2000) NULL,
	[IsSync] [int] NULL,
	[BranchCode] [numeric](18, 0) NULL,
	[PaymentType] [nvarchar](100) NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
 CONSTRAINT [EmployeeSalaryDetail_Code] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeesByLocation]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeesByLocation](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[BranchCode] [numeric](18, 0) NULL,
	[Branch] [nvarchar](200) NULL,
	[EmployeeCode] [numeric](18, 0) NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
 CONSTRAINT [PK_EmployeesByLocation] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Examination]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Examination](
	[ID] [numeric](18, 0) NOT NULL,
	[Name] [nvarchar](800) NULL,
	[BP] [nvarchar](1600) NULL,
	[PR] [nvarchar](1600) NULL,
	[Weight] [nvarchar](1600) NULL,
	[Chest] [nvarchar](1600) NULL,
	[JVP] [nvarchar](1600) NULL,
	[Temp] [nvarchar](1600) NULL,
	[CNS] [nvarchar](1600) NULL,
	[GI] [nvarchar](1600) NULL,
	[CVS] [nvarchar](1600) NULL,
	[Odema] [nvarchar](1600) NULL,
	[PatientNo] [numeric](18, 0) NULL,
	[PRNO] [nvarchar](1600) NULL,
	[VisitedOn] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [Examination_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExpiryManager]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExpiryManager](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductCode] [nvarchar](500) NOT NULL,
	[BatchNo] [nvarchar](500) NOT NULL,
	[Stock] [numeric](18, 3) NULL,
	[ExpiryDate] [datetime] NULL,
	[Bonus] [bigint] NULL,
	[CompanyCode] [bigint] NULL,
	[IsSync] [tinyint] NULL,
	[BranchCode] [numeric](18, 0) NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[ID] [numeric](18, 0) NULL,
 CONSTRAINT [PK_ExpiryManager] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GeneralExpense]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GeneralExpense](
	[ID] [numeric](10, 0) NOT NULL,
	[CardID] [numeric](10, 0) NULL,
	[VoucherDate] [datetime] NULL,
	[PaymentMethodDetailID] [int] NULL,
	[DebitedAccount] [nvarchar](300) NULL,
	[CreditedAccount] [nvarchar](300) NULL,
	[JournalMemo] [nvarchar](510) NULL,
	[TotalAmount] [numeric](18, 2) NULL,
	[AmountInWords] [nvarchar](400) NULL,
	[IsSync] [tinyint] NULL,
	[BranchCode] [numeric](18, 0) NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
 CONSTRAINT [PK_GeneralExpense] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupRights]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupRights](
	[GroupID] [numeric](10, 0) NOT NULL,
	[MenuItemIndex] [nvarchar](400) NULL,
	[TreeNodeIndex] [nvarchar](400) NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_GroupRights] PRIMARY KEY CLUSTERED 
(
	[GroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[history_store]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[history_store](
	[timemark] [datetime] NULL,
	[table_name] [nvarchar](200) NOT NULL,
	[pk_date_src] [nvarchar](1600) NULL,
	[pk_date_dest] [nvarchar](1600) NULL,
	[record_state] [smallint] NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [history_store_table_name] PRIMARY KEY CLUSTERED 
(
	[table_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InventoryAdjustment]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventoryAdjustment](
	[ID] [numeric](10, 0) NOT NULL,
	[AdjustmentDate] [datetime] NULL,
	[IncreaseOrDecrease] [nvarchar](200) NULL,
	[Account] [nvarchar](300) NULL,
	[TotalAmount] [numeric](18, 2) NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_InventoryAdjustment] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InventoryAdjustmentDetail]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventoryAdjustmentDetail](
	[Code] [int] IDENTITY(2,1) NOT NULL,
	[AdjustmentID] [numeric](10, 0) NULL,
	[SupplierID] [numeric](10, 0) NULL,
	[ItemID] [numeric](10, 0) NULL,
	[Quantity] [float] NULL,
	[CostPerUnit] [numeric](18, 2) NULL,
	[Amount] [numeric](18, 2) NULL,
	[JournalMemo] [nvarchar](510) NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_InventoryAdjustmentDetail] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InventoryLedger]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventoryLedger](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[TranDate] [datetime] NULL,
	[ProductCode] [bigint] NULL,
	[SourceID] [bigint] NULL,
	[Source] [nvarchar](300) NULL,
	[OpeningQuantity] [numeric](18, 3) NULL,
	[ClosingQuantity] [numeric](18, 3) NULL,
	[OpeningValue] [numeric](18, 4) NULL,
	[ClosingValue] [numeric](18, 4) NULL,
	[CompanyCode] [int] NULL,
	[OpeningBonus] [bigint] NULL,
	[ClosingBonus] [bigint] NULL,
	[SystemDate] [datetime] NULL,
	[Attributes] [nvarchar](2000) NULL,
	[IsSync] [tinyint] NULL,
	[BranchCode] [numeric](18, 0) NULL,
	[Remarks] [nvarchar](2000) NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
 CONSTRAINT [PK_InventoryLedger] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InvoiceImages]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvoiceImages](
	[Code] [int] NOT NULL,
	[InvoiceNo] [int] NULL,
	[InvoiceImage] [image] NULL,
	[Status] [tinyint] NULL,
	[BranchCode] [int] NULL,
	[IsSync] [tinyint] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
 CONSTRAINT [InvoiceImages_Code] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IssueStock]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IssueStock](
	[IssueCode] [bigint] NOT NULL,
	[EmployeeCode] [bigint] NULL,
	[ProductCode] [bigint] NULL,
	[Quantity] [float] NULL,
	[IssueDate] [datetime] NULL,
	[LoginEmployeeCode] [bigint] NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_IssueStock] PRIMARY KEY CLUSTERED 
(
	[IssueCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item](
	[ID] [numeric](10, 0) NOT NULL,
	[Code] [nvarchar](200) NULL,
	[ItemName] [nvarchar](200) NULL,
	[GroupID] [numeric](10, 0) NULL,
	[ReorderLevel] [numeric](10, 0) NULL,
	[QuantityOnHand] [float] NULL,
	[CurrentValue] [numeric](18, 2) NULL,
	[Description] [nvarchar](510) NULL,
	[Specifications] [nvarchar](510) NULL,
	[ImageName] [nvarchar](100) NULL,
	[PurchasePrice] [numeric](18, 2) NULL,
	[PurchaseUnitOfMeassure] [nvarchar](100) NULL,
	[ItemsPerPurchaseUnit] [numeric](10, 0) NULL,
	[SupplierID] [numeric](10, 0) NULL,
	[SupplierItemCode] [nvarchar](200) NULL,
	[SalePrice] [numeric](18, 2) NULL,
	[SaleUnitOfMeassure] [nvarchar](200) NULL,
	[ItemsPerSaleUnit] [numeric](10, 0) NULL,
	[Inactive] [bit] NULL,
	[SomeColumn] [nvarchar](50) NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_Item] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemAttributes]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemAttributes](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](300) NULL,
	[Value] [nvarchar](300) NULL,
	[ListBox] [nvarchar](100) NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_ItemAttributes] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemAttributesCurrentStock]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemAttributesCurrentStock](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductCode] [bigint] NULL,
	[Attributes] [nvarchar](2000) NULL,
	[Stock] [numeric](18, 3) NULL,
	[CurrentValue] [numeric](18, 2) NULL,
	[InventoryAccountCode] [nvarchar](200) NULL,
	[COGSAccountCode] [nvarchar](200) NULL,
	[IncomeAccountCode] [nvarchar](200) NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_ItemAttributesCurrentStock] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemAttributesInventoryLedger]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemAttributesInventoryLedger](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[TranDate] [datetime] NULL,
	[ProductCode] [bigint] NULL,
	[Attributes] [nvarchar](2000) NULL,
	[SourceID] [bigint] NULL,
	[Source] [nvarchar](300) NULL,
	[OpeningQuantity] [bigint] NULL,
	[ClosingQuantity] [bigint] NULL,
	[OpeningValue] [numeric](18, 2) NULL,
	[ClosingValue] [numeric](18, 2) NULL,
	[CompanyCode] [int] NULL,
	[OpeningBonus] [bigint] NULL,
	[ClosingBonus] [bigint] NULL,
	[SystemDate] [datetime] NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_ItemAttributesInventoryLedger] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemAttributesStockDetail]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemAttributesStockDetail](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductCode] [bigint] NULL,
	[RowID] [int] NULL,
	[Attributes] [nvarchar](2000) NULL,
	[SourceID] [numeric](18, 0) NULL,
	[Source] [nvarchar](100) NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_ItemAttributesStockDetail] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemGroup]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemGroup](
	[ID] [numeric](10, 0) NOT NULL,
	[GroupName] [nvarchar](200) NULL,
	[Description] [nvarchar](510) NULL,
	[Remarks] [nvarchar](510) NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_ItemGroup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Journal]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Journal](
	[EntryID] [bigint] IDENTITY(1,1) NOT NULL,
	[TransactionID] [numeric](10, 0) NULL,
	[EntryDate] [datetime] NULL,
	[Source] [nvarchar](200) NULL,
	[SourceID] [numeric](10, 0) NULL,
	[AccountCode] [nvarchar](510) NULL,
	[CardID] [numeric](10, 0) NULL,
	[ItemID] [numeric](10, 0) NULL,
	[ItemQuantity] [numeric](18, 3) NULL,
	[SupplierPurchaseID] [numeric](10, 0) NULL,
	[CustomerPurchaseID] [numeric](10, 0) NULL,
	[PDCPayableID] [numeric](10, 0) NULL,
	[PDCReceivableID] [numeric](10, 0) NULL,
	[Description] [nvarchar](510) NULL,
	[DebitAmount] [numeric](18, 4) NULL,
	[CreditAmount] [numeric](18, 4) NULL,
	[OpeningBalance] [numeric](18, 4) NULL,
	[ClosingBalance] [numeric](18, 4) NULL,
	[CompanyCode] [bigint] NULL,
	[SystemDate] [datetime] NULL,
	[Attributes] [nvarchar](2000) NULL,
	[IsSync] [tinyint] NULL,
	[BranchCode] [numeric](18, 0) NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[OperationType] [nvarchar](100) NULL,
 CONSTRAINT [Journal_EntryID] PRIMARY KEY CLUSTERED 
(
	[EntryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LinkedAccounts]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LinkedAccounts](
	[ID] [bigint] NOT NULL,
	[NameAccountToLink] [nvarchar](300) NULL,
	[CodeLinkedAccount] [nvarchar](300) NULL,
	[ReadOnly] [bit] NULL,
	[CompanyCode] [bigint] NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_LinkedAccounts] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LinkedAccounts_bak]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LinkedAccounts_bak](
	[ID] [numeric](10, 0) NULL,
	[NameAccountToLink] [nvarchar](300) NULL,
	[CodeLinkedAccount] [nvarchar](300) NULL,
	[ReadOnly] [bit] NULL,
	[CompanyCode] [bigint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LinkedAccounts_JellyERP]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LinkedAccounts_JellyERP](
	[ID] [numeric](10, 0) NULL,
	[NameAccountToLink] [nvarchar](300) NULL,
	[CodeLinkedAccount] [nvarchar](300) NULL,
	[ReadOnly] [bit] NULL,
	[CompanyCode] [bigint] NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LinkedAccounts_MultiTechERP]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LinkedAccounts_MultiTechERP](
	[ID] [numeric](10, 0) NULL,
	[NameAccountToLink] [nvarchar](600) NULL,
	[CodeLinkedAccount] [nvarchar](600) NULL,
	[ReadOnly] [bit] NULL,
	[CompanyCode] [bigint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LinkedAccounts_Retaila]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LinkedAccounts_Retaila](
	[ID] [numeric](10, 0) NULL,
	[NameAccountToLink] [nvarchar](300) NULL,
	[CodeLinkedAccount] [nvarchar](300) NULL,
	[ReadOnly] [bit] NULL,
	[CompanyCode] [bigint] NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LocationsManager]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LocationsManager](
	[Code] [bigint] NOT NULL,
	[Name] [nvarchar](1800) NULL,
	[CompanyCode] [bigint] NULL,
	[IsActive] [tinyint] NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [LocationsManager_Code] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MixNMatchGroup]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MixNMatchGroup](
	[Code] [int] NOT NULL,
	[Name] [nvarchar](200) NULL,
	[CustomerGroupCode] [int] NULL,
	[OfferType] [int] NULL,
	[OfferValue] [numeric](18, 4) NULL,
	[NumberOfLeastExpensive] [int] NULL,
	[Priority] [int] NULL,
	[Triggers] [int] NULL,
	[Barcode] [nvarchar](100) NULL,
	[RangeType] [nvarchar](100) NULL,
	[DateFrom] [datetime] NULL,
	[DateTo] [datetime] NULL,
	[IsActive] [tinyint] NULL,
	[IsSync] [tinyint] NULL,
	[BranchCode] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
 CONSTRAINT [MixNMatchGroup_Code] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MixNMatchLineGroup]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MixNMatchLineGroup](
	[Code] [int] NOT NULL,
	[MNMGID] [int] NULL,
	[NoOfItems] [int] NULL,
	[Color] [nvarchar](100) NULL,
	[Description] [nvarchar](200) NULL,
	[IsSync] [tinyint] NULL,
	[IsDeleted] [tinyint] NULL,
	[BranchCode] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
 CONSTRAINT [MixNMatchLineGroup_Code] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MixNMatchLineGroupItems]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MixNMatchLineGroupItems](
	[Code] [int] NOT NULL,
	[MNMGID] [int] NULL,
	[MNMLGID] [int] NULL,
	[ProductCode] [int] NULL,
	[ProductSKU] [int] NULL,
	[ProductType] [int] NULL,
	[DiscountType] [int] NULL,
	[DiscountAmount] [decimal](18, 4) NULL,
	[DiscountAmountIncludingTax] [decimal](18, 4) NULL,
	[OfferPrice] [decimal](18, 4) NULL,
	[OfferPriceIncludingTax] [decimal](18, 4) NULL,
	[IsSync] [tinyint] NULL,
	[IsDeleted] [tinyint] NULL,
	[BranchCode] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
 CONSTRAINT [MixNMatchLineGroupItems_Code] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ModifierGroup]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ModifierGroup](
	[MGID] [bigint] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Fmodifier] [nvarchar](200) NULL,
	[Multiselect] [nvarchar](200) NULL,
	[Description] [nvarchar](200) NULL,
	[IsSync] [int] NULL,
	[BranchCode] [int] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
 CONSTRAINT [ModifierGroup_MGID] PRIMARY KEY CLUSTERED 
(
	[MGID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ModifierImage]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ModifierImage](
	[Code] [int] NOT NULL,
	[MID] [numeric](18, 0) NULL,
	[Image] [image] NULL,
	[IsSync] [numeric](18, 0) NULL,
	[BranchCode] [numeric](18, 0) NULL,
	[IsDeleted] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
 CONSTRAINT [ModifierImage_Code] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ModifierOrder]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ModifierOrder](
	[ID] [bigint] NOT NULL,
	[ProductCode] [numeric](18, 0) NULL,
	[Modifiers] [nvarchar](2000) NULL,
	[MID] [numeric](18, 0) NULL,
	[MGID] [numeric](18, 0) NULL,
	[Qty] [numeric](18, 4) NULL,
	[Price] [numeric](18, 4) NULL,
	[Code] [nvarchar](200) NULL,
	[IsSync] [int] NULL,
	[BranchCode] [int] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
 CONSTRAINT [ModifierOrder_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Modifiers]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Modifiers](
	[MID] [bigint] NOT NULL,
	[MGID] [numeric](18, 0) NULL,
	[Name] [nvarchar](100) NULL,
	[IsDefault] [tinyint] NULL,
	[Price] [numeric](18, 4) NULL,
	[IsSync] [int] NULL,
	[BranchCode] [int] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
 CONSTRAINT [Modifiers_MID] PRIMARY KEY CLUSTERED 
(
	[MID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonthlyExpenses]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonthlyExpenses](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Month] [int] NULL,
	[Year] [int] NULL,
	[ExpenseDate] [datetime] NULL,
	[Expense] [nvarchar](100) NULL,
	[Amount] [numeric](18, 4) NULL,
	[UserName] [nvarchar](150) NULL,
	[TaxID] [int] NULL,
	[TaxName] [nvarchar](100) NULL,
	[TaxRate] [numeric](25, 4) NULL,
	[ExpenseTax] [numeric](25, 4) NULL,
	[CompanyCode] [int] NULL,
	[IsSync] [tinyint] NULL,
	[BranchCode] [numeric](18, 0) NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
 CONSTRAINT [MonthlyExpenses_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonthlyExpenseTypes]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonthlyExpenseTypes](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Category] [nvarchar](500) NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [MonthlyExpenseTypes_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OpenItems]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OpenItems](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](2000) NULL,
	[Price] [float] NULL,
	[TaxID] [numeric](18, 0) NULL,
	[Method] [int] NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
	[Barcode] [nvarchar](400) NULL,
 CONSTRAINT [OpenItems_Code] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Options]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Options](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Value] [nvarchar](4000) NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_Options] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OtherContact]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OtherContact](
	[ID] [numeric](10, 0) NOT NULL,
	[Code] [nvarchar](200) NULL,
	[Name] [nvarchar](400) NULL,
	[ContactPerson] [nvarchar](400) NULL,
	[Tel] [nvarchar](200) NULL,
	[Fax] [nvarchar](200) NULL,
	[Mobile] [nvarchar](200) NULL,
	[Address] [nvarchar](1020) NULL,
	[City] [nvarchar](200) NULL,
	[Country] [nvarchar](200) NULL,
	[Email] [nvarchar](1020) NULL,
	[Remarks] [nvarchar](1020) NULL,
	[IsSync] [tinyint] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_OtherContact] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OtherIncome]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OtherIncome](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NULL,
	[Amount] [numeric](18, 2) NULL,
	[InvoiceNumber] [nvarchar](200) NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_OtherIncome] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentMethod]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentMethod](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[Method] [nvarchar](300) NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_PaymentMethod] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentMethodDetail]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentMethodDetail](
	[ID] [bigint] NOT NULL,
	[PaymentMethod] [nvarchar](200) NULL,
	[CardID] [numeric](10, 0) NULL,
	[ChequeNo] [nvarchar](100) NULL,
	[BankName] [nvarchar](300) NULL,
	[BankAccountNumber] [nvarchar](300) NULL,
	[BankAccountName] [nvarchar](300) NULL,
	[ChequeDate] [datetime] NULL,
	[PDC] [bit] NULL,
	[PDCtoCDC] [bit] NULL,
	[CreditOrDebitCardNo] [nvarchar](100) NULL,
	[CreditOrDebitCardType] [nvarchar](100) NULL,
	[CardExpiryDate] [datetime] NULL,
	[Amount] [numeric](18, 4) NULL,
	[Notes] [nvarchar](510) NULL,
	[Type] [nvarchar](100) NULL,
	[IsSync] [tinyint] NULL,
	[BranchCode] [numeric](18, 0) NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
 CONSTRAINT [PK_PaymentMethodDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentMethods]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentMethods](
	[Code] [int] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Surcharges] [float] NULL,
	[SurchargesType] [nvarchar](200) NULL,
	[AccountCode] [nvarchar](100) NULL,
	[Paid] [int] NULL,
	[NotPaid] [int] NULL,
	[NotPaidAccountCode] [nvarchar](100) NULL,
	[Enable] [int] NULL,
	[IsSync] [int] NULL,
	[BranchCode] [int] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
 CONSTRAINT [PaymentMethods_Code] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[PVID] [bigint] NOT NULL,
	[SupplierCode] [bigint] NULL,
	[PaymentDate] [datetime] NULL,
	[PaymentAmount] [numeric](18, 4) NULL,
	[SupplierBalance] [numeric](18, 4) NULL,
	[Remarks] [nvarchar](500) NULL,
	[PaymentMethodDetailID] [bigint] NULL,
	[DebitedAccountCode] [nvarchar](200) NULL,
	[CreditedAccountCode] [nvarchar](200) NULL,
	[AmountInWords] [nvarchar](500) NULL,
	[CompanyCode] [bigint] NULL,
	[Source] [nvarchar](50) NULL,
	[UserName] [nvarchar](150) NULL,
	[ContactType] [nvarchar](50) NULL,
	[IsSync] [tinyint] NULL,
	[BranchCode] [numeric](18, 0) NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
 CONSTRAINT [Payments_PVID] PRIMARY KEY CLUSTERED 
(
	[PVID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentsDetail]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentsDetail](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[PVID] [bigint] NULL,
	[POID] [int] NULL,
	[AppliedAmount] [numeric](18, 2) NULL,
	[IsSync] [tinyint] NULL,
	[BranchCode] [numeric](18, 0) NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
 CONSTRAINT [PK_PaymentsDetail] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentVoucherNumber]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentVoucherNumber](
	[ID] [numeric](10, 0) NOT NULL,
	[PaymentFor] [nvarchar](600) NULL,
	[IsSync] [tinyint] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[LastModifiedDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_PaymentVoucherNumber] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permissions]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permissions](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[GroupCode] [numeric](18, 0) NULL,
	[InventoryManagerAdd] [bit] NULL,
	[InventoryManagerEdit] [bit] NULL,
	[InverntoryManagerDelete] [bit] NULL,
	[InventoryManagerView] [bit] NULL,
	[InventoryManagerHideSalePrice] [bit] NULL,
	[InventoryManagerHidePurchasePrice] [bit] NULL,
	[InventoryManagerHideAverageCost] [bit] NULL,
	[InventoryManagerPrintBarcode] [bit] NULL,
	[InventoryManagerStockCount] [bit] NULL,
	[InventoryManagerStockAdjustment] [bit] NULL,
	[InventoryManagerImportProducts] [bit] NULL,
	[InventoryManagerStockTransfer] [bit] NULL,
	[InventoryManagerPriceGroup] [bit] NULL,
	[InventoryMyShops] [bit] NULL,
	[SalesAdd] [bit] NULL,
	[SalesEdit] [bit] NULL,
	[SalesDelete] [bit] NULL,
	[SalesView] [bit] NULL,
	[SalesImportSales] [bit] NULL,
	[SalesAddCustomer] [bit] NULL,
	[SalesCustomerRecipts] [bit] NULL,
	[SalesCustomerPayment] [bit] NULL,
	[SalesPaymentHistory] [bit] NULL,
	[SalesExpenses] [bit] NULL,
	[SalesReceiveStock] [bit] NULL,
	[SaleOrder] [bit] NULL,
	[SaleReturn] [bit] NULL,
	[PurchaseAdd] [bit] NULL,
	[PurchaseEdit] [bit] NULL,
	[PurchaseDelete] [bit] NULL,
	[PurchaseView] [bit] NULL,
	[PurchaseImportPurchase] [bit] NULL,
	[PurchaseAddSupplier] [bit] NULL,
	[PurchaseSupplierRecipt] [bit] NULL,
	[PurchaseSupplierPayment] [bit] NULL,
	[PurchasePaymentHistory] [bit] NULL,
	[PurchaseOrder] [bit] NULL,
	[PurchaseReturn] [bit] NULL,
	[EmployeeManagerAdd] [bit] NULL,
	[EmployeeManagerEdit] [bit] NULL,
	[EmployeeManagerDelete] [bit] NULL,
	[EmployeeManagerView] [bit] NULL,
	[EmployeePayment] [bit] NULL,
	[AddBiller] [bit] NULL,
	[AddGroupPermissions] [bit] NULL,
	[AccountingAdd] [bit] NULL,
	[AccountingEdit] [bit] NULL,
	[AccountingDelete] [bit] NULL,
	[AccountingView] [bit] NULL,
	[AccountingBanks] [bit] NULL,
	[AccountingJournalVoucher] [bit] NULL,
	[AccountingTransactionJournal] [bit] NULL,
	[AccountAccountLedger] [bit] NULL,
	[AccountingTrialBalance] [bit] NULL,
	[AccountingIncomeStatement] [bit] NULL,
	[AccountingBalanceSheet] [bit] NULL,
	[AccountingPostDatedChecks] [bit] NULL,
	[ReportsView] [bit] NULL,
	[ReportsSales] [bit] NULL,
	[ReportsPurchases] [bit] NULL,
	[ReportsInventory] [bit] NULL,
	[ReportsRegisterAndZReport] [bit] NULL,
	[ReportsExpenseReport] [bit] NULL,
	[ReportTaxReport] [bit] NULL,
	[OptionsAdd] [bit] NULL,
	[OptionsEdit] [bit] NULL,
	[OptionsDelete] [bit] NULL,
	[OptionsView] [bit] NULL,
	[Settings] [bit] NULL,
	[DatabaseBackUP] [bit] NULL,
	[DatabaseRestore] [bit] NULL,
	[PurchaseHistory] [bit] NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[InventoryDefineDeals] [bit] NULL,
	[InventoryToping] [bit] NULL,
	[InventoryTables] [bit] NULL,
	[InventoryLocations] [bit] NULL,
	[InventoryStockTransfer] [bit] NULL,
	[InventoryTransferHistory] [bit] NULL,
	[InventoryByLocation] [bit] NULL,
	[InventoryTransferRegister] [bit] NULL,
	[InventoryStockAdjustment] [bit] NULL,
	[InventoryStockAudit] [bit] NULL,
	[InventoryStockAuditReport] [bit] NULL,
	[SalesDeliveryOrder] [bit] NULL,
	[SaleHistory] [bit] NULL,
	[DeliveryReport] [bit] NULL,
	[KitchenScreen] [bit] NULL,
	[BranchCode] [int] NULL,
	[QuickSaleView] [bit] NULL,
	[InventoryManagerLocations] [bit] NULL,
	[InventoryManagerStockRequest] [bit] NULL,
	[InventoryManagerStockHistory] [bit] NULL,
 CONSTRAINT [PK_Permissions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PermissionsGroup]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermissionsGroup](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NULL,
	[Description] [nvarchar](2000) NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_PermissionsGruop] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[POSRegister]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[POSRegister](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[_Date] [datetime] NOT NULL,
	[UserID] [numeric](18, 0) NULL,
	[CashInHand] [numeric](18, 4) NULL,
	[Status] [nvarchar](50) NULL,
	[TotalCash] [numeric](18, 4) NULL,
	[TotalBankTransfers] [numeric](18, 0) NULL,
	[TotalCheques] [numeric](18, 0) NULL,
	[TotalCCSlips] [numeric](18, 0) NULL,
	[TotalCashSubmitted] [numeric](18, 0) NULL,
	[TotalChequesSubmitted] [numeric](18, 0) NULL,
	[TotalCCSlipSubmitted] [numeric](18, 0) NULL,
	[TotalBankTransferSubmitted] [numeric](18, 0) NULL,
	[Note] [nvarchar](500) NULL,
	[CloseAt] [datetime] NULL,
	[TransferOpendBills] [nvarchar](50) NULL,
	[ClosedBy] [numeric](18, 0) NULL,
	[CompanyCode] [int] NULL,
	[IsSync] [tinyint] NULL,
	[BranchCode] [numeric](18, 0) NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[PartialDeposit] [numeric](18, 4) NULL,
	[PartialWithdraw] [numeric](18, 4) NULL,
 CONSTRAINT [PK_POSRegister] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PriceGroup]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PriceGroup](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[RangeType] [nvarchar](50) NULL,
	[DateFrom] [datetime] NOT NULL,
	[DateTo] [datetime] NULL,
	[IsSync] [int] NULL,
	[BranchCode] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[ID] [int] NULL,
	[ProductCode] [int] NULL,
	[SalePrice] [numeric](18, 4) NULL,
	[PurchasePrice] [numeric](18, 4) NULL,
 CONSTRAINT [PK_PriceGroup] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PriceGroupItems]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PriceGroupItems](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[PriceGroupId] [int] NULL,
	[ProductCode] [int] NULL,
	[ProductBarcode] [nvarchar](50) NULL,
	[ProductPrice] [numeric](18, 4) NULL,
	[DIscountPR] [numeric](18, 4) NULL,
	[Discount] [numeric](18, 4) NULL,
	[IsSync] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_PriceGroupItems] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductAttributes]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductAttributes](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductCode] [bigint] NOT NULL,
	[Attribute] [nvarchar](600) NULL,
	[Value] [nvarchar](600) NULL,
	[Lookupedit] [nvarchar](600) NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_ProductAttributes_1] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductBarcodes]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductBarcodes](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductCode] [numeric](18, 0) NULL,
	[Barcode] [nvarchar](200) NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_ProductBarcodes] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImage]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImage](
	[Code] [bigint] NOT NULL,
	[Image] [image] NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[ID] [bigint] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_ProductImage] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductsIMEI]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductsIMEI](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductCode] [int] NULL,
	[Name] [nvarchar](100) NULL,
	[SupplierCode] [int] NULL,
	[Cost] [numeric](18, 4) NULL,
	[Price] [numeric](18, 4) NULL,
	[Serial1] [nvarchar](100) NULL,
	[Stock] [numeric](18, 4) NULL,
	[Serial2] [nvarchar](100) NULL,
	[Serial] [nvarchar](200) NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_ProductsIMEI] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductsIngridiants]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductsIngridiants](
	[Code] [int] NOT NULL,
	[ProductCode] [int] NULL,
	[IngridiantCode] [int] NULL,
	[Qty] [numeric](18, 4) NULL,
	[IsSync] [int] NULL,
	[BranchCode] [int] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
	[TotalAmount] [numeric](18, 4) NULL,
 CONSTRAINT [ProductsIngridiants_Code] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductsManager]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductsManager](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[OptionalName] [nvarchar](500) NULL,
	[Company] [nvarchar](500) NULL,
	[Category] [int] NULL,
	[SubCategory] [int] NULL,
	[ProfitCalcMethod] [int] NULL,
	[PackQuantity] [nvarchar](100) NULL,
	[CurrentStockLoose] [numeric](18, 4) NULL,
	[CurrentValue] [numeric](18, 4) NULL,
	[LastPurchasePriceLoose] [numeric](18, 4) NULL,
	[LastPurchasePricePack] [numeric](18, 4) NULL,
	[LastSalePriceLoose] [numeric](18, 4) NULL,
	[LastSalePricePack] [numeric](18, 4) NULL,
	[IsFixedPrice] [int] NULL,
	[Description] [nvarchar](1000) NULL,
	[Specification] [nvarchar](1000) NULL,
	[IsActive] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[MinimumStockLevelPack] [numeric](18, 3) NULL,
	[Expires] [int] NULL,
	[Barcode] [nvarchar](300) NULL,
	[Unit] [nvarchar](300) NULL,
	[Color] [nvarchar](300) NULL,
	[Size] [nvarchar](300) NULL,
	[CompanyCode] [int] NULL,
	[InventoryAccountCode] [nvarchar](200) NULL,
	[COGSAccountCode] [nvarchar](200) NULL,
	[IncomeAccountCode] [nvarchar](200) NULL,
	[Bonus] [int] NULL,
	[Discount] [numeric](18, 4) NULL,
	[DiscountRs] [numeric](18, 4) NULL,
	[IsService] [int] NULL,
	[InventoryCheck] [int] NULL,
	[TaxRate] [numeric](18, 0) NULL,
	[TaxMethod] [nvarchar](50) NULL,
	[CalCulationMethod] [nvarchar](500) NULL,
	[Variants] [numeric](18, 0) NULL,
	[IsIMEI] [tinyint] NULL,
	[IsDeleted] [tinyint] NULL,
	[IsSync] [tinyint] NULL,
	[MyShopsSync] [tinyint] NULL,
	[MyShopsStatus] [tinyint] NULL,
	[MyShopsPrice] [numeric](18, 4) NULL,
	[MyShopsDiscount] [numeric](18, 4) NULL,
	[MyShopsItemID] [int] NULL,
	[MyShopsCatID] [int] NULL,
	[MyShopsSubCatID] [int] NULL,
	[MyShopsLastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
	[Supplier1] [int] NULL,
	[Supplier2] [int] NULL,
	[Supplier3] [int] NULL,
	[Supplier4] [int] NULL,
	[Supplier5] [int] NULL,
	[IsLabelPrint] [tinyint] NULL,
	[SaleUnitID] [int] NULL,
	[PurchaseUnitID] [int] NULL,
	[SaleTaxRateMethod] [int] NULL,
	[FixedSaleTaxRate] [numeric](18, 4) NULL,
	[SaleTaxID] [int] NULL,
	[SaleTaxMethod] [tinyint] NULL,
	[PurchaseTaxID] [int] NULL,
	[PurchaseTaxMethod] [tinyint] NULL,
	[ReOrderLevel] [decimal](18, 4) NULL,
	[PCTCode] [nvarchar](200) NULL,
	[BranchCode] [int] NULL,
	[ProductType] [int] NULL,
	[FBRItemType] [nvarchar](100) NULL,
 CONSTRAINT [ProductsManager_Code] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productsmanager_backup]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productsmanager_backup](
	[Code] [bigint] NULL,
	[Name] [nvarchar](1000) NULL,
	[Company] [nvarchar](1000) NULL,
	[Category] [nvarchar](400) NULL,
	[PackQuantity] [nvarchar](200) NULL,
	[CurrentStockLoose] [numeric](18, 3) NULL,
	[CurrentValue] [numeric](18, 2) NULL,
	[LastPurchasePriceLoose] [numeric](18, 2) NULL,
	[LastPurchasePricePack] [numeric](18, 2) NULL,
	[LastSalePriceLoose] [numeric](18, 2) NULL,
	[LastSalePricePack] [numeric](18, 2) NULL,
	[Description] [nvarchar](2000) NULL,
	[Specification] [nvarchar](2000) NULL,
	[IsActive] [smallint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[MinimumStockLevelPack] [numeric](18, 3) NULL,
	[Expires] [tinyint] NULL,
	[Barcode] [nvarchar](600) NULL,
	[Unit] [nvarchar](600) NULL,
	[CompanyCode] [bigint] NULL,
	[InventoryAccountCode] [nvarchar](400) NULL,
	[COGSAccountCode] [nvarchar](400) NULL,
	[IncomeAccountCode] [nvarchar](400) NULL,
	[Bonus] [int] NULL,
	[Discount] [real] NULL,
	[IsService] [tinyint] NULL,
	[DiscountRs] [real] NULL,
	[LastSyncDate] [datetime] NULL,
	[OptionalName] [nvarchar](2000) NULL,
	[SubCategory] [nvarchar](800) NULL,
	[IsFixedPrice] [int] NULL,
	[Color] [nvarchar](1200) NULL,
	[Size] [nvarchar](1200) NULL,
	[InventoryCheck] [int] NULL,
	[TaxRate] [numeric](18, 0) NULL,
	[TaxMethod] [nvarchar](200) NULL,
	[CalCulationMethod] [nvarchar](2000) NULL,
	[Variants] [numeric](18, 0) NULL,
	[IsDeleted] [tinyint] NULL,
	[IsSync] [tinyint] NULL,
	[MyShopsSync] [tinyint] NULL,
	[MyShopsStatus] [tinyint] NULL,
	[MyShopsPrice] [numeric](18, 4) NULL,
	[MyShopsDiscount] [numeric](18, 4) NULL,
	[MyShopsItemID] [int] NULL,
	[MyShopsCatID] [int] NULL,
	[MyShopsSubCatID] [int] NULL,
	[MyShopsLastModifiedDate] [datetime] NULL,
	[BranchCode] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductsManager_copy1]    Script Date: 2/2/2025 8:23:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductsManager_copy1](
	[Code] [int] NOT NULL,
	[Name] [nvarchar](500) NULL,
	[OptionalName] [nvarchar](500) NULL,
	[Company] [nvarchar](500) NULL,
	[Category] [nvarchar](200) NULL,
	[SubCategory] [nvarchar](200) NULL,
	[PackQuantity] [nvarchar](100) NULL,
	[CurrentStockLoose] [numeric](18, 4) NULL,
	[CurrentValue] [numeric](18, 4) NULL,
	[LastPurchasePriceLoose] [numeric](18, 4) NULL,
	[LastPurchasePricePack] [numeric](18, 4) NULL,
	[LastSalePriceLoose] [numeric](18, 4) NULL,
	[LastSalePricePack] [numeric](18, 4) NULL,
	[IsFixedPrice] [int] NULL,
	[Description] [nvarchar](1000) NULL,
	[Specification] [nvarchar](1000) NULL,
	[IsActive] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[MinimumStockLevelPack] [numeric](18, 3) NULL,
	[Expires] [int] NULL,
	[Barcode] [nvarchar](300) NULL,
	[Unit] [nvarchar](300) NULL,
	[Color] [nvarchar](300) NULL,
	[Size] [nvarchar](300) NULL,
	[CompanyCode] [int] NULL,
	[InventoryAccountCode] [nvarchar](200) NULL,
	[COGSAccountCode] [nvarchar](200) NULL,
	[IncomeAccountCode] [nvarchar](200) NULL,
	[Bonus] [int] NULL,
	[Discount] [numeric](18, 4) NULL,
	[DiscountRs] [numeric](18, 4) NULL,
	[IsService] [int] NULL,
	[InventoryCheck] [int] NULL,
	[TaxRate] [numeric](18, 0) NULL,
	[TaxMethod] [nvarchar](50) NULL,
	[CalCulationMethod] [nvarchar](500) NULL,
	[Variants] [numeric](18, 0) NULL,
	[IsIMEI] [tinyint] NULL,
	[IsDeleted] [tinyint] NULL,
	[IsSync] [tinyint] NULL,
	[MyShopsSync] [tinyint] NULL,
	[MyShopsStatus] [tinyint] NULL,
	[MyShopsPrice] [numeric](18, 4) NULL,
	[MyShopsDiscount] [numeric](18, 4) NULL,
	[MyShopsItemID] [int] NULL,
	[MyShopsCatID] [int] NULL,
	[MyShopsSubCatID] [int] NULL,
	[MyShopsLastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
	[Supplier1] [int] NULL,
	[Supplier2] [int] NULL,
	[Supplier3] [int] NULL,
	[Supplier4] [int] NULL,
	[Supplier5] [int] NULL,
	[IsLabelPrint] [tinyint] NULL,
	[SaleUnitID] [int] NULL,
	[PurchaseUnitID] [int] NULL,
	[SaleTaxRateMethod] [int] NULL,
	[FixedSaleTaxRate] [numeric](18, 4) NULL,
	[SaleTaxID] [int] NULL,
	[SaleTaxMethod] [tinyint] NULL,
	[PurchaseTaxID] [int] NULL,
	[PurchaseTaxMethod] [tinyint] NULL,
	[ReOrderLevel] [decimal](18, 4) NULL,
	[PCTCode] [nvarchar](200) NULL,
	[MenuLocation] [int] NULL,
	[Kitchen] [nvarchar](100) NULL,
	[KitchenGroup] [int] NULL,
	[Type] [nvarchar](100) NULL,
	[Modifier] [nvarchar](100) NULL,
	[IsRaw] [int] NULL,
	[Ingridiant] [int] NULL,
	[IngridiantSurcharges] [numeric](18, 4) NULL,
	[ImageName] [nvarchar](2000) NULL,
	[BranchCode] [int] NULL,
	[DineInTax] [int] NULL,
	[DineInMethod] [int] NULL,
	[TakeAwayTax] [int] NULL,
	[TakeAwayMethod] [int] NULL,
	[DeliveryTax] [int] NULL,
	[DeliveryMethod] [int] NULL,
	[ProductType] [int] NULL,
 CONSTRAINT [ProductsManager_Code_copy1] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductsManager_Medicines]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductsManager_Medicines](
	[Code] [bigint] NULL,
	[Name] [nvarchar](1000) NULL,
	[OptionalName] [nvarchar](2000) NULL,
	[Company] [nvarchar](1000) NULL,
	[Category] [nvarchar](400) NULL,
	[SubCategory] [nvarchar](800) NULL,
	[PackQuantity] [nvarchar](200) NULL,
	[CurrentStockLoose] [numeric](18, 4) NULL,
	[CurrentValue] [numeric](18, 4) NULL,
	[LastPurchasePriceLoose] [numeric](18, 4) NULL,
	[LastPurchasePricePack] [numeric](18, 4) NULL,
	[LastSalePriceLoose] [numeric](18, 4) NULL,
	[LastSalePricePack] [numeric](18, 4) NULL,
	[IsFixedPrice] [int] NULL,
	[Description] [nvarchar](2000) NULL,
	[Specification] [nvarchar](2000) NULL,
	[IsActive] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[MinimumStockLevelPack] [numeric](18, 3) NULL,
	[Expires] [int] NULL,
	[Barcode] [nvarchar](600) NULL,
	[Unit] [nvarchar](600) NULL,
	[Color] [nvarchar](400) NULL,
	[Size] [nvarchar](400) NULL,
	[CompanyCode] [int] NULL,
	[InventoryAccountCode] [nvarchar](400) NULL,
	[COGSAccountCode] [nvarchar](400) NULL,
	[IncomeAccountCode] [nvarchar](400) NULL,
	[Bonus] [int] NULL,
	[Discount] [numeric](18, 4) NULL,
	[DiscountRs] [numeric](18, 4) NULL,
	[IsService] [int] NULL,
	[InventoryCheck] [int] NULL,
	[TaxRate] [numeric](18, 0) NULL,
	[TaxMethod] [nvarchar](200) NULL,
	[CalCulationMethod] [nvarchar](2000) NULL,
	[Variants] [numeric](18, 0) NULL,
	[IsDeleted] [tinyint] NULL,
	[IsSync] [tinyint] NULL,
	[MyShopsSync] [tinyint] NULL,
	[MyShopsStatus] [tinyint] NULL,
	[MyShopsPrice] [numeric](18, 4) NULL,
	[MyShopsDiscount] [numeric](18, 4) NULL,
	[MyShopsItemID] [int] NULL,
	[MyShopsCatID] [int] NULL,
	[MyShopsSubCatID] [int] NULL,
	[MyShopsLastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
	[IsIMEI] [tinyint] NULL,
	[IsLabelPrint] [tinyint] NULL,
	[Supplier1] [int] NULL,
	[Supplier2] [int] NULL,
	[Supplier3] [int] NULL,
	[Supplier4] [int] NULL,
	[Supplier5] [int] NULL,
	[SaleUnitID] [int] NULL,
	[PurchaseUnitID] [int] NULL,
	[SaleTaxRateMethod] [int] NULL,
	[FixedSaleTaxRate] [numeric](18, 4) NULL,
	[SaleTaxID] [int] NULL,
	[SaleTaxMethod] [tinyint] NULL,
	[PurchaseTaxID] [int] NULL,
	[PurchaseTaxMethod] [tinyint] NULL,
	[ReOrderLevel] [decimal](18, 4) NULL,
	[PCTCode] [nvarchar](400) NULL,
	[ProductType] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductsManager_SuperMarket]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductsManager_SuperMarket](
	[Code] [int] NOT NULL,
	[Name] [nvarchar](1000) NULL,
	[OptionalName] [nvarchar](1000) NULL,
	[Company] [nvarchar](1000) NULL,
	[Category] [nvarchar](400) NULL,
	[SubCategory] [nvarchar](400) NULL,
	[PackQuantity] [nvarchar](200) NULL,
	[CurrentStockLoose] [numeric](18, 4) NULL,
	[CurrentValue] [numeric](18, 4) NULL,
	[LastPurchasePriceLoose] [numeric](18, 4) NULL,
	[LastPurchasePricePack] [numeric](18, 4) NULL,
	[LastSalePriceLoose] [numeric](18, 4) NULL,
	[LastSalePricePack] [numeric](18, 4) NULL,
	[IsFixedPrice] [int] NULL,
	[Description] [nvarchar](2000) NULL,
	[Specification] [nvarchar](2000) NULL,
	[IsActive] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[MinimumStockLevelPack] [numeric](18, 3) NULL,
	[Expires] [int] NULL,
	[Barcode] [nvarchar](600) NULL,
	[Unit] [nvarchar](600) NULL,
	[Color] [nvarchar](600) NULL,
	[Size] [nvarchar](600) NULL,
	[CompanyCode] [int] NULL,
	[InventoryAccountCode] [nvarchar](400) NULL,
	[COGSAccountCode] [nvarchar](400) NULL,
	[IncomeAccountCode] [nvarchar](400) NULL,
	[Bonus] [int] NULL,
	[Discount] [numeric](18, 4) NULL,
	[DiscountRs] [numeric](18, 4) NULL,
	[IsService] [int] NULL,
	[InventoryCheck] [int] NULL,
	[TaxRate] [numeric](18, 0) NULL,
	[TaxMethod] [nvarchar](100) NULL,
	[CalCulationMethod] [nvarchar](1000) NULL,
	[Variants] [numeric](18, 0) NULL,
	[IsDeleted] [tinyint] NULL,
	[IsSync] [tinyint] NULL,
	[MyShopsSync] [tinyint] NULL,
	[MyShopsStatus] [tinyint] NULL,
	[MyShopsPrice] [numeric](18, 4) NULL,
	[MyShopsDiscount] [numeric](18, 4) NULL,
	[MyShopsItemID] [int] NULL,
	[MyShopsCatID] [int] NULL,
	[MyShopsSubCatID] [int] NULL,
	[MyShopsLastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
	[IsIMEI] [tinyint] NULL,
	[BranchCode] [int] NULL,
	[IsLabelPrint] [tinyint] NULL,
	[Supplier1] [int] NULL,
	[Supplier2] [int] NULL,
	[Supplier3] [int] NULL,
	[Supplier4] [int] NULL,
	[Supplier5] [int] NULL,
	[SaleUnitID] [int] NULL,
	[PurchaseUnitID] [int] NULL,
	[SaleTaxRateMethod] [int] NULL,
	[FixedSaleTaxRate] [numeric](18, 4) NULL,
	[SaleTaxID] [int] NULL,
	[SaleTaxMethod] [tinyint] NULL,
	[PurchaseTaxID] [int] NULL,
	[PurchaseTaxMethod] [tinyint] NULL,
	[ReOrderLevel] [decimal](18, 4) NULL,
	[PCTCode] [nvarchar](400) NULL,
	[ProductType] [int] NULL,
 CONSTRAINT [ProductsManager_SuperMarket_Code] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductsManager_SuperMarket_]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductsManager_SuperMarket_](
	[Code] [bigint] NOT NULL,
	[Name] [nvarchar](4000) NULL,
	[OptionalName] [nvarchar](4000) NULL,
	[Company] [nvarchar](4000) NULL,
	[Category] [nvarchar](4000) NULL,
	[PackQuantity] [nvarchar](3200) NULL,
	[CurrentStockLoose] [numeric](18, 3) NULL,
	[CurrentValue] [numeric](18, 2) NULL,
	[LastPurchasePriceLoose] [numeric](18, 2) NULL,
	[LastPurchasePricePack] [numeric](18, 2) NULL,
	[LastSalePriceLoose] [numeric](18, 2) NULL,
	[LastSalePricePack] [numeric](18, 2) NULL,
	[Description] [nvarchar](4000) NULL,
	[Specification] [nvarchar](4000) NULL,
	[IsActive] [smallint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[MinimumStockLevelPack] [numeric](18, 3) NULL,
	[Expires] [tinyint] NULL,
	[Barcode] [nvarchar](4000) NULL,
	[Unit] [nvarchar](4000) NULL,
	[CompanyCode] [bigint] NULL,
	[InventoryAccountCode] [nvarchar](4000) NULL,
	[COGSAccountCode] [nvarchar](4000) NULL,
	[IncomeAccountCode] [nvarchar](4000) NULL,
	[Bonus] [int] NULL,
	[Discount] [real] NULL,
	[IsService] [tinyint] NULL,
	[DiscountRs] [real] NULL,
	[TaxRate] [numeric](18, 0) NULL,
	[TaxMethod] [nvarchar](1600) NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [ProductsManager_SuperMarket__Code] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductsModifier]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductsModifier](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductCode] [numeric](18, 0) NULL,
	[MGID] [numeric](18, 0) NULL,
	[MID] [numeric](18, 0) NULL,
	[IsSync] [int] NULL,
	[BranchCode] [int] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
 CONSTRAINT [ProductsModifier_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductsModifierGroup]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductsModifierGroup](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductCode] [numeric](18, 0) NULL,
	[MGID] [numeric](18, 0) NULL,
	[IsRequired] [tinyint] NULL,
	[AllowMultiple] [nvarchar](100) NULL,
	[IsSync] [int] NULL,
	[BranchCode] [int] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
 CONSTRAINT [ProductsModifierGroup_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductsPricing]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductsPricing](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductCode] [int] NULL,
	[Quantity] [numeric](18, 4) NULL,
	[Price] [numeric](18, 4) NULL,
	[Priority] [int] NULL,
	[CustomerGroupCode] [int] NULL,
	[DateFrom] [nvarchar](50) NULL,
	[DateTo] [nvarchar](50) NULL,
	[BranchCode] [int] NULL,
	[IsSync] [tinyint] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
	[PackageBarcode] [nvarchar](200) NULL,
	[PackageTitle] [nvarchar](1000) NULL,
	[PackageQuantity] [numeric](18, 4) NULL,
	[PackagePrice] [numeric](18, 4) NULL,
	[PackageUnitId] [tinyint] NULL,
	[PackageCost] [numeric](18, 4) NULL,
	[PackageDiscountRs] [numeric](18, 4) NULL,
	[PackageTaxId] [int] NULL,
	[PackageTaxMethod] [int] NULL,
	[PackageIsActive] [int] NULL,
	[PackageDiscountPR] [numeric](18, 4) NULL,
 CONSTRAINT [PK_ProductPricing] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductsSKU]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductsSKU](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductCode] [numeric](18, 0) NULL,
	[Attributes] [nvarchar](1000) NULL,
	[SKU] [nvarchar](50) NULL,
	[Barcode] [nvarchar](100) NULL,
	[Price] [numeric](18, 4) NULL,
	[Cost] [numeric](18, 4) NULL,
	[Stock] [numeric](18, 4) NULL,
	[Bonus] [numeric](18, 4) NULL,
	[CurrentValue] [numeric](18, 4) NULL,
	[InventoryAccountCode] [nvarchar](200) NULL,
	[COGSAccountCode] [nvarchar](200) NULL,
	[IncomeAccountCode] [nvarchar](200) NULL,
	[BranchCode] [int] NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[CostPrice] [float] NULL,
	[IsActive] [int] NULL,
 CONSTRAINT [PK_ProductsSKU] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductsVariants]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductsVariants](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductCode] [numeric](18, 0) NULL,
	[VariantGroupCode] [numeric](18, 0) NULL,
	[VariantCode] [numeric](18, 0) NULL,
	[SKU] [numeric](18, 0) NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_ProductsVariants] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseBill]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseBill](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[POID] [bigint] NOT NULL,
	[PurchaseDate] [datetime] NULL,
	[SupplierCode] [bigint] NULL,
	[SupplierInvoiceNo] [nvarchar](500) NULL,
	[SubTotal] [numeric](18, 4) NULL,
	[Freight] [numeric](18, 4) NULL,
	[Discount] [numeric](18, 4) NULL,
	[TotalAmount] [numeric](18, 4) NULL,
	[AppliedAmount] [numeric](18, 4) NULL,
	[CompanyCode] [bigint] NULL,
	[UserName] [nvarchar](150) NULL,
	[OrderTax] [numeric](18, 4) NULL,
	[TaxId] [int] NULL,
	[UserID] [int] NULL,
	[ItemTax] [numeric](25, 4) NULL,
	[TotalTax] [numeric](25, 4) NULL,
	[IsSync] [tinyint] NULL,
	[BranchCode] [numeric](18, 0) NULL,
	[SupplierPreBalance] [float] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
 CONSTRAINT [PurchaseBill_POID] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseBillDetail]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseBillDetail](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[POID] [numeric](18, 0) NOT NULL,
	[RowID] [int] NOT NULL,
	[ProductCode] [nvarchar](500) NULL,
	[Quantity] [numeric](18, 3) NULL,
	[ExpectedSalePrice] [numeric](18, 4) NULL,
	[RetailPrice] [numeric](18, 4) NULL,
	[TradePrice] [numeric](18, 4) NULL,
	[DiscountPr] [numeric](18, 4) NULL,
	[FixedDiscount] [numeric](18, 4) NULL,
	[ExtraDiscountPr] [numeric](18, 4) NULL,
	[ExtraDiscount] [numeric](18, 4) NULL,
	[Amount] [numeric](18, 4) NULL,
	[Type] [nvarchar](20) NULL,
	[BatchNo] [nvarchar](500) NULL,
	[ExpiryDate] [datetime] NULL,
	[CompanyCode] [bigint] NULL,
	[Bonus] [numeric](18, 4) NULL,
	[TaxId] [int] NULL,
	[TaxName] [nvarchar](50) NULL,
	[TaxRate] [numeric](18, 4) NULL,
	[ItemTax] [numeric](25, 4) NULL,
	[Tax1Rate] [numeric](18, 4) NULL,
	[Tax1Value] [numeric](18, 4) NULL,
	[Tax2Rate] [numeric](18, 4) NULL,
	[Tax2Value] [numeric](18, 4) NULL,
	[ProfitRate] [numeric](18, 4) NULL,
	[ProfitValue] [numeric](18, 4) NULL,
	[IsSync] [tinyint] NULL,
	[BranchCode] [numeric](18, 0) NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[ProductName] [nvarchar](400) NULL,
	[ProductSKU] [int] NULL,
	[Attributes] [nvarchar](400) NULL,
	[Serial] [nvarchar](100) NULL,
	[Serial1] [nvarchar](200) NULL,
	[Serial2] [nvarchar](200) NULL,
	[LooseQuantity] [numeric](18, 4) NULL,
	[PackSize] [nvarchar](200) NULL,
	[TaxMethod] [int] NULL,
	[ProductBarcode] [nvarchar](100) NULL,
 CONSTRAINT [PK_PurchaseBillDetail] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseOrder]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseOrder](
	[ID] [numeric](10, 0) NOT NULL,
	[PODate] [datetime] NULL,
	[PromisedDate] [datetime] NULL,
	[QuotationID] [nvarchar](200) NULL,
	[SupplierID] [numeric](10, 0) NULL,
	[SupplierInvoiceNo] [nvarchar](200) NULL,
	[BackorderFromID] [numeric](10, 0) NULL,
	[JournalMemo] [nvarchar](1020) NULL,
	[DeliveryTerms] [nvarchar](1020) NULL,
	[PaymentTerms] [nvarchar](1020) NULL,
	[SubTotal] [numeric](18, 2) NULL,
	[Freight] [numeric](18, 2) NULL,
	[TotalAmount] [numeric](18, 2) NULL,
	[AppliedAmount] [numeric](18, 2) NULL,
	[Status] [nvarchar](200) NULL,
	[HostoricalPurchase] [bit] NULL,
	[DebitedAccountForHistoricalPurchase] [nvarchar](600) NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[IsSync] [int] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_PurchaseOrder] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseOrderDetail]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseOrderDetail](
	[Code] [int] IDENTITY(2,1) NOT NULL,
	[POID] [numeric](10, 0) NULL,
	[Quantity] [float] NULL,
	[ItemID] [numeric](10, 0) NULL,
	[ItemCode] [nvarchar](200) NULL,
	[ItemName] [nvarchar](200) NULL,
	[UnitOfMeasure] [nvarchar](200) NULL,
	[PricePerUnit] [numeric](18, 2) NULL,
	[ItemsPerPurchaseUnit] [numeric](10, 0) NULL,
	[Discount] [numeric](18, 2) NULL,
	[Amount] [numeric](18, 2) NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_PurchaseOrderDetail] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchasePayment]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchasePayment](
	[ID] [numeric](10, 0) NOT NULL,
	[CardID] [numeric](10, 0) NULL,
	[VoucherDate] [datetime] NULL,
	[PaymentMethodDetailID] [numeric](10, 0) NULL,
	[DebitedAccount] [nvarchar](600) NULL,
	[CreditedAccount] [nvarchar](600) NULL,
	[JournalMemo] [nvarchar](1020) NULL,
	[TotalAmount] [numeric](18, 2) NULL,
	[AmountInWords] [nvarchar](800) NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_PurchasePayment] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchasePaymentDetail]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchasePaymentDetail](
	[Code] [int] IDENTITY(2,1) NOT NULL,
	[PVID] [numeric](10, 0) NULL,
	[PurchaseID] [numeric](10, 0) NULL,
	[AppliedAmount] [numeric](18, 2) NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_PurchasePaymentDetail] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseQuotation]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseQuotation](
	[ID] [numeric](10, 0) NOT NULL,
	[SupplierID] [numeric](10, 0) NULL,
	[QuoteDate] [datetime] NULL,
	[DeliveryTerms] [nvarchar](1020) NULL,
	[PaymentTerms] [nvarchar](1020) NULL,
	[SubTotal] [numeric](18, 2) NULL,
	[Freight] [numeric](18, 2) NULL,
	[TotalAmount] [numeric](18, 2) NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_PurchaseQuotation] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseQuotationDetail]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseQuotationDetail](
	[Code] [int] IDENTITY(2,1) NOT NULL,
	[PQID] [numeric](10, 0) NULL,
	[Quantity] [float] NULL,
	[ItemID] [numeric](10, 0) NULL,
	[ItemCode] [nvarchar](200) NULL,
	[ItemName] [nvarchar](400) NULL,
	[UnitOfMeasure] [nvarchar](200) NULL,
	[PricePerUnit] [numeric](18, 2) NULL,
	[ItemsPerPurchaseUnit] [numeric](10, 0) NULL,
	[Discount] [numeric](18, 2) NULL,
	[Amount] [numeric](18, 2) NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_PurchaseQuotationDetail] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseReturn]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseReturn](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[PRID] [bigint] NOT NULL,
	[ReturnDate] [datetime] NULL,
	[SupplierCode] [bigint] NULL,
	[SupplierInvoiceNo] [nvarchar](500) NULL,
	[TotalAmount] [numeric](18, 4) NULL,
	[AppliedAmount] [numeric](18, 4) NULL,
	[CompanyCode] [bigint] NULL,
	[UserName] [nvarchar](150) NULL,
	[IsSync] [tinyint] NULL,
	[BranchCode] [numeric](18, 0) NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
 CONSTRAINT [PK_PurchaseReturn] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseReturnDetail]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseReturnDetail](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[PRID] [numeric](18, 0) NOT NULL,
	[RowID] [int] NOT NULL,
	[ProductCode] [nvarchar](500) NULL,
	[Quantity] [numeric](18, 3) NULL,
	[ReturnPrice] [numeric](18, 4) NULL,
	[Amount] [numeric](18, 4) NULL,
	[Type] [nvarchar](20) NULL,
	[Investment] [numeric](18, 4) NULL,
	[Profit] [numeric](18, 4) NULL,
	[BatchNo] [nvarchar](500) NULL,
	[CompanyCode] [int] NULL,
	[Bonus] [int] NULL,
	[IsSync] [tinyint] NULL,
	[BranchCode] [numeric](18, 0) NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[ProductBarcode] [nvarchar](100) NULL,
	[RetailPrice] [numeric](18, 4) NULL,
	[TradePrice] [numeric](18, 4) NULL,
	[DiscountPr] [numeric](18, 4) NULL,
	[FixedDiscount] [numeric](18, 4) NULL,
	[ExtraDiscountPr] [numeric](18, 4) NULL,
	[ExtraDiscount] [numeric](18, 4) NULL,
	[ExpiryDate] [datetime] NULL,
	[TaxId] [int] NULL,
	[TaxName] [nchar](1) NULL,
	[TaxRate] [nchar](1) NULL,
	[ItemTax] [numeric](18, 4) NULL,
	[Tax1Rate] [numeric](18, 4) NULL,
	[Tax1Value] [numeric](18, 4) NULL,
	[Tax2Rate] [numeric](18, 4) NULL,
	[Tax2Value] [numeric](18, 4) NULL,
	[ProfitRate] [numeric](18, 4) NULL,
	[ProfitValue] [numeric](18, 4) NULL,
	[ProductName] [nvarchar](800) NULL,
	[ProductSKU] [int] NULL,
	[Attributes] [nvarchar](800) NULL,
	[Serial] [nvarchar](200) NULL,
	[Serial1] [nvarchar](400) NULL,
	[Serial2] [nvarchar](400) NULL,
	[LooseQuantity] [numeric](18, 4) NULL,
	[PackSize] [nvarchar](400) NULL,
	[TaxMethod] [int] NULL,
 CONSTRAINT [PK_PurchaseReturnDetail] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseSettlementViaPurchases]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseSettlementViaPurchases](
	[ID] [numeric](10, 0) NOT NULL,
	[CardID] [numeric](10, 0) NULL,
	[SettlementDate] [datetime] NULL,
	[DebitedPurchaseID] [numeric](10, 0) NULL,
	[DebitedAccount] [nvarchar](600) NULL,
	[CreditedAccount] [nvarchar](600) NULL,
	[JournalMemo] [nvarchar](1020) NULL,
	[TotalAmount] [numeric](18, 2) NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_PurchaseSettlementViaPurchases] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseSettlementViaPurchasesDetail]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseSettlementViaPurchasesDetail](
	[Code] [int] IDENTITY(2,1) NOT NULL,
	[SettlementID] [numeric](10, 0) NULL,
	[PurchaseID] [numeric](10, 0) NULL,
	[AppliedAmount] [numeric](18, 2) NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_PurchaseSettlementViaPurchasesDetail] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseSettlementViaRefund]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseSettlementViaRefund](
	[ID] [numeric](10, 0) NOT NULL,
	[CardID] [numeric](10, 0) NULL,
	[VoucherDate] [datetime] NULL,
	[PaymentMethodDetailID] [numeric](10, 0) NULL,
	[DebitedPurchaseID] [numeric](10, 0) NULL,
	[DebitedAccount] [nvarchar](600) NULL,
	[CreditedAccount] [nvarchar](600) NULL,
	[JournalMemo] [nvarchar](1020) NULL,
	[TotalAmount] [numeric](18, 2) NULL,
	[AmountInWords] [nvarchar](800) NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_PurchaseSettlementViaRefund] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchasesOrder]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchasesOrder](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[POID] [bigint] NOT NULL,
	[PurchaseDate] [datetime] NULL,
	[SupplierCode] [bigint] NULL,
	[SupplierInvoiceNo] [nvarchar](500) NULL,
	[SubTotal] [numeric](18, 4) NULL,
	[Freight] [numeric](18, 4) NULL,
	[Discount] [numeric](18, 4) NULL,
	[TotalAmount] [numeric](18, 4) NULL,
	[AppliedAmount] [numeric](18, 4) NULL,
	[CompanyCode] [bigint] NULL,
	[UserName] [nvarchar](150) NULL,
	[Converted] [tinyint] NULL,
	[OrderTax] [numeric](18, 4) NULL,
	[ItemTax] [numeric](18, 4) NULL,
	[TotalTax] [numeric](18, 4) NULL,
	[TaxId] [numeric](18, 0) NULL,
	[IsSync] [int] NULL,
	[BranchCode] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
 CONSTRAINT [PurchasesOrder_POID] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchasesOrderDetail]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchasesOrderDetail](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[POID] [numeric](18, 0) NULL,
	[RowID] [int] NULL,
	[ProductCode] [nvarchar](500) NULL,
	[Quantity] [numeric](18, 3) NULL,
	[RetailPrice] [numeric](18, 4) NULL,
	[TradePrice] [numeric](18, 4) NULL,
	[DiscountPr] [numeric](18, 4) NULL,
	[FixedDiscount] [numeric](18, 4) NULL,
	[ExtraDiscountPr] [numeric](18, 4) NULL,
	[ExtraDiscount] [numeric](18, 4) NULL,
	[Amount] [numeric](18, 4) NULL,
	[Type] [nvarchar](20) NULL,
	[BatchNo] [nvarchar](500) NULL,
	[ExpiryDate] [datetime] NULL,
	[CompanyCode] [bigint] NULL,
	[Bonus] [numeric](18, 4) NULL,
	[TAXID] [int] NULL,
	[TaxName] [nvarchar](50) NULL,
	[TaxRate] [numeric](25, 4) NULL,
	[ItemTax] [numeric](25, 4) NULL,
	[Tax1Rate] [numeric](18, 4) NULL,
	[Tax1Value] [numeric](18, 4) NULL,
	[Tax2Rate] [numeric](18, 4) NULL,
	[Tax2Value] [numeric](18, 4) NULL,
	[IsSync] [tinyint] NULL,
	[BranchCode] [numeric](18, 0) NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[LooseQuantity] [numeric](18, 4) NULL,
	[PackSize] [nvarchar](200) NULL,
	[TaxMethod] [int] NULL,
	[ProductBarcode] [nvarchar](100) NULL,
	[ExpectedSalePrice] [numeric](18, 4) NULL,
	[ProfitRate] [numeric](18, 4) NULL,
	[ProfitValue] [numeric](18, 4) NULL,
	[ProductName] [nvarchar](400) NULL,
	[ProductSKU] [nvarchar](100) NULL,
	[Attributes] [nvarchar](1000) NULL,
	[Serial] [nvarchar](400) NULL,
	[Serial1] [nvarchar](400) NULL,
	[Serial2] [nvarchar](400) NULL,
 CONSTRAINT [PK_PurchasesOrderDetail] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReceiptVoucherNumber]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReceiptVoucherNumber](
	[ID] [numeric](10, 0) NOT NULL,
	[ReceiptFor] [nvarchar](200) NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_ReceiptVoucherNumber] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecieveStock]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecieveStock](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[RecieveCode] [bigint] NULL,
	[EmployeeCode] [bigint] NULL,
	[ProductCode] [bigint] NULL,
	[Quantity] [float] NULL,
	[RecieveDate] [datetime] NULL,
	[LoginEmployeeCode] [bigint] NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_RecieveStock] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recovery]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recovery](
	[RVID] [bigint] IDENTITY(1,1) NOT NULL,
	[CustomerCode] [bigint] NULL,
	[RecoveryDate] [datetime] NULL,
	[RecoveryAmount] [numeric](18, 4) NULL,
	[CustomerBalance] [numeric](18, 4) NULL,
	[Remarks] [nvarchar](500) NULL,
	[PaymentMethodDetailID] [bigint] NULL,
	[DebitedAccountCode] [nvarchar](200) NULL,
	[CreditedAccountCode] [nvarchar](200) NULL,
	[AmountInWords] [nvarchar](500) NULL,
	[CompanyCode] [bigint] NULL,
	[Source] [nvarchar](50) NULL,
	[UserName] [nvarchar](150) NULL,
	[ContactType] [nvarchar](50) NULL,
	[IsSync] [tinyint] NULL,
	[BranchCode] [numeric](18, 0) NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
 CONSTRAINT [Recovery_RVID] PRIMARY KEY CLUSTERED 
(
	[RVID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecoveryDetail]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecoveryDetail](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[RVID] [bigint] NULL,
	[SaleID] [int] NULL,
	[AppliedAmount] [numeric](18, 4) NULL,
	[IsSync] [tinyint] NULL,
	[BranchCode] [numeric](18, 0) NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
 CONSTRAINT [PK_RecoveryDetail] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reports]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reports](
	[Code] [int] IDENTITY(1012,1) NOT NULL,
	[BillerID] [int] NULL,
	[ReportName] [nvarchar](100) NULL,
	[Type] [nvarchar](50) NULL,
	[Path] [nvarchar](1000) NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_Reports] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SaleModifiers]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SaleModifiers](
	[ID] [bigint] NOT NULL,
	[SaleID] [numeric](18, 0) NULL,
	[ProductCode] [numeric](18, 0) NULL,
	[ProductName] [nvarchar](100) NULL,
	[MGID] [numeric](18, 0) NULL,
	[ModifierGroup] [nvarchar](100) NULL,
	[MID] [numeric](18, 0) NULL,
	[Modifier] [nvarchar](100) NULL,
	[Qty] [numeric](18, 0) NULL,
	[Price] [numeric](18, 0) NULL,
	[Total] [numeric](18, 0) NULL,
	[UserName] [nvarchar](100) NULL,
	[IsSync] [int] NULL,
	[BranchCode] [int] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
 CONSTRAINT [SaleModifiers_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SaleOrder]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SaleOrder](
	[ID] [numeric](10, 0) NOT NULL,
	[SODate] [datetime] NULL,
	[PromisedDate] [datetime] NULL,
	[QuotationID] [nvarchar](200) NULL,
	[CustomerID] [numeric](10, 0) NULL,
	[CustomerPONo] [nvarchar](200) NULL,
	[BackorderFromID] [numeric](10, 0) NULL,
	[JournalMemo] [nvarchar](1020) NULL,
	[Terms] [nvarchar](1020) NULL,
	[SubTotal] [numeric](18, 4) NULL,
	[Freight] [numeric](18, 4) NULL,
	[TotalAmount] [numeric](18, 4) NULL,
	[AppliedAmount] [numeric](18, 4) NULL,
	[Status] [nvarchar](200) NULL,
	[HostoricalSale] [bit] NULL,
	[CreditedAccountForHistoricalSale] [nvarchar](600) NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_SaleOrder] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SaleOrderDetail]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SaleOrderDetail](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[SOID] [numeric](10, 0) NULL,
	[Quantity] [float] NULL,
	[SupplierID] [numeric](10, 0) NULL,
	[ItemID] [numeric](10, 0) NULL,
	[ItemCode] [nvarchar](200) NULL,
	[ItemName] [nvarchar](400) NULL,
	[UnitOfMeasure] [nvarchar](200) NULL,
	[PricePerUnit] [numeric](18, 4) NULL,
	[ItemsPerSaleUnit] [int] NULL,
	[Discount] [numeric](18, 4) NULL,
	[Amount] [numeric](18, 4) NULL,
	[Cost] [numeric](18, 4) NULL,
	[IsSync] [tinyint] NULL,
	[BranchCode] [numeric](18, 0) NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
 CONSTRAINT [PK_SaleOrderDetail] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SaleQuotation]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SaleQuotation](
	[ID] [numeric](10, 0) NOT NULL,
	[CustomerID] [numeric](10, 0) NULL,
	[QuoteDate] [datetime] NULL,
	[Terms] [nvarchar](1020) NULL,
	[SubTotal] [numeric](18, 2) NULL,
	[Freight] [numeric](18, 2) NULL,
	[TotalAmount] [numeric](18, 2) NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_SaleQuotation] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SaleQuotationDetail]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SaleQuotationDetail](
	[Code] [int] IDENTITY(2,1) NOT NULL,
	[SQID] [numeric](10, 0) NULL,
	[Quantity] [float] NULL,
	[ItemID] [numeric](10, 0) NULL,
	[ItemCode] [nvarchar](200) NULL,
	[ItemName] [nvarchar](400) NULL,
	[UnitOfMeasure] [nvarchar](200) NULL,
	[PricePerUnit] [numeric](18, 2) NULL,
	[ItemsPerSaleUnit] [int] NULL,
	[Discount] [numeric](18, 2) NULL,
	[Amount] [numeric](18, 2) NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_SaleQuotationDetail] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SaleReceipt]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SaleReceipt](
	[ID] [numeric](10, 0) NOT NULL,
	[CardID] [numeric](10, 0) NULL,
	[VoucherDate] [datetime] NULL,
	[PaymentMethodDetailID] [numeric](10, 0) NULL,
	[DebitedAccount] [nvarchar](600) NULL,
	[CreditedAccount] [nvarchar](600) NULL,
	[JournalMemo] [nvarchar](1020) NULL,
	[TotalAmount] [numeric](18, 2) NULL,
	[AmountInWords] [nvarchar](1020) NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_SaleReceipt] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SaleReceiptDetail]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SaleReceiptDetail](
	[Code] [int] IDENTITY(2,1) NOT NULL,
	[RVID] [numeric](10, 0) NULL,
	[SaleID] [numeric](10, 0) NULL,
	[AppliedAmount] [numeric](18, 2) NULL,
	[IsSync] [tinyint] NULL,
	[PurchaseOrderDetail] [datetime] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_SaleReceiptDetail] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SaleReturn]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SaleReturn](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[SaleID] [numeric](18, 0) NULL,
	[SubTotal] [numeric](25, 4) NULL,
	[Discount] [numeric](25, 4) NULL,
	[TotalAmount] [numeric](25, 4) NULL,
	[PaidAmount] [numeric](25, 4) NULL,
	[SaleDate] [datetime] NULL,
	[CustomerCode] [bigint] NULL,
	[CustomerRefNo] [nvarchar](100) NULL,
	[CompanyCode] [bigint] NULL,
	[UserName] [nvarchar](150) NULL,
	[OrderTax] [numeric](25, 4) NULL,
	[OrderTaxID] [numeric](18, 0) NULL,
	[ItemTax] [numeric](25, 4) NULL,
	[TotalTax] [numeric](25, 4) NULL,
	[IsSync] [tinyint] NULL,
	[BranchCode] [nvarchar](1) NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
 CONSTRAINT [PK_SaleReturn] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SaleReturnDetail]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SaleReturnDetail](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[SaleID] [numeric](18, 0) NOT NULL,
	[RowID] [int] NOT NULL,
	[ProductCode] [nvarchar](500) NULL,
	[Type] [nvarchar](20) NULL,
	[RetailPrice] [numeric](18, 2) NULL,
	[Quantity] [numeric](18, 3) NULL,
	[Discount] [numeric](18, 2) NULL,
	[Amount] [numeric](18, 2) NULL,
	[Investment] [numeric](18, 2) NULL,
	[Profit] [numeric](18, 2) NULL,
	[BatchNo] [nvarchar](500) NULL,
	[CompanyCode] [int] NULL,
	[Bonus] [int] NULL,
	[ProductTax] [numeric](25, 4) NULL,
	[TaxID] [numeric](18, 0) NULL,
	[TaxName] [nvarchar](50) NULL,
	[TaxRate] [nvarchar](50) NULL,
	[IsSync] [tinyint] NULL,
	[BranchCode] [numeric](18, 0) NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[UnitId] [int] NULL,
	[Unit] [nvarchar](100) NULL,
	[LooseQuantity] [numeric](18, 4) NULL,
	[OriginalPrice] [float] NULL,
 CONSTRAINT [PK_SaleReturnDetail] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sales]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[SaleID] [bigint] NOT NULL,
	[SubTotal] [numeric](18, 4) NULL,
	[Freight] [numeric](18, 4) NULL,
	[Discount] [numeric](18, 4) NULL,
	[TotalAmount] [numeric](18, 4) NULL,
	[PaidAmount] [numeric](18, 4) NULL,
	[SaleDate] [datetime] NULL,
	[CustomerType] [int] NULL,
	[CustomerCode] [bigint] NULL,
	[OrderTakerCode] [bigint] NULL,
	[CompanyCode] [bigint] NULL,
	[UserName] [nvarchar](150) NULL,
	[CustomerPrevBalance] [numeric](18, 2) NULL,
	[SaleManCode] [bigint] NULL,
	[SalesTax] [numeric](18, 4) NULL,
	[ItemTax] [numeric](18, 4) NULL,
	[OrderTax] [numeric](18, 4) NULL,
	[TotalTax] [numeric](18, 4) NULL,
	[RealTotal] [numeric](18, 4) NULL,
	[TaxID] [int] NULL,
	[IsSync] [tinyint] NULL,
	[BranchCode] [numeric](18, 0) NULL,
	[ExactPaidAmount] [float] NULL,
	[Remarks] [nvarchar](2000) NULL,
	[RoundingFiger] [float] NULL,
	[Status] [nvarchar](50) NULL,
	[DiscountPR] [float] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[FBRInvoiceNumber] [nvarchar](200) NULL,
	[POSID] [nvarchar](200) NULL,
	[IsFBRSync] [tinyint] NULL,
	[FBRSyncDate] [datetime] NULL,
	[FBRInvoiceType] [int] NULL,
	[FBRPaymentMode] [int] NULL,
	[TaxMethod] [int] NULL,
	[OrderType] [nvarchar](100) NULL,
	[DeliveryBoy] [numeric](18, 0) NULL,
	[OrderRefrence] [numeric](18, 0) NULL,
	[PaidAccount] [nvarchar](300) NULL,
	[Paid] [int] NULL,
	[Refrence] [nvarchar](4000) NULL,
	[Waiter] [nvarchar](200) NULL,
	[Difference] [float] NULL,
	[TableName] [nvarchar](100) NULL,
	[Seats] [nvarchar](100) NULL,
	[DeliveryTime] [datetime] NULL,
	[DeliveryStatus] [nvarchar](100) NULL,
	[RewardPointsEarned] [int] NULL,
	[RewardPointsRedeemed] [int] NULL,
	[RewardPointsAmountRedeemed] [numeric](18, 4) NULL,
	[FBRStatus] [nvarchar](2000) NULL,
	[ReturnSaleID] [bigint] NULL,
	[CreditCardCharges] [numeric](18, 4) NULL,
 CONSTRAINT [PK_Sales] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesDetail]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesDetail](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[SaleID] [bigint] NOT NULL,
	[RowID] [bigint] NOT NULL,
	[ProductCode] [nvarchar](500) NULL,
	[ProductIMEICode] [int] NULL,
	[Serial] [nvarchar](100) NULL,
	[Type] [nvarchar](20) NULL,
	[RetailPrice] [numeric](18, 4) NULL,
	[Quantity] [numeric](18, 3) NULL,
	[Discount] [numeric](18, 4) NULL,
	[Amount] [numeric](18, 4) NULL,
	[Investment] [numeric](18, 2) NULL,
	[Profit] [numeric](18, 2) NULL,
	[BatchNo] [nvarchar](500) NULL,
	[CompanyCode] [bigint] NULL,
	[Bonus] [int] NULL,
	[TaxId] [numeric](18, 0) NULL,
	[TaxName] [nvarchar](100) NULL,
	[ItemTax] [float] NULL,
	[OriginalPrice] [numeric](18, 4) NULL,
	[OriginalTotal] [numeric](18, 2) NULL,
	[NOofGuards] [numeric](18, 0) NULL,
	[Description] [nvarchar](500) NULL,
	[UnitPrice] [numeric](18, 4) NULL,
	[Days] [numeric](18, 0) NULL,
	[StylistCode] [numeric](18, 0) NULL,
	[IsSync] [tinyint] NULL,
	[BranchCode] [numeric](18, 0) NULL,
	[Employees] [float] NULL,
	[DiscountPR] [float] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[PackageCode] [int] NULL,
	[ProductName] [nvarchar](1000) NULL,
	[UnitId] [int] NULL,
	[Unit] [nvarchar](100) NULL,
	[LooseQuantity] [numeric](18, 4) NULL,
	[TaxMethod] [nvarchar](100) NULL,
	[TaxRate] [numeric](18, 4) NULL,
	[PCTCode] [nvarchar](200) NULL,
	[Comments] [nvarchar](1000) NULL,
	[NameWithModifier] [nvarchar](4000) NULL,
	[SubTotal] [numeric](18, 4) NULL,
	[ProductBarcode] [nvarchar](400) NULL,
	[FBRItemType] [nvarchar](100) NULL,
	[ProductSKU] [nvarchar](200) NULL,
 CONSTRAINT [PK_SalesDetail_1] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SaleSettlementViaRefund]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SaleSettlementViaRefund](
	[ID] [numeric](10, 0) NOT NULL,
	[CardID] [numeric](10, 0) NULL,
	[VoucherDate] [datetime] NULL,
	[PaymentMethodDetailID] [numeric](10, 0) NULL,
	[CreditedSaleID] [numeric](10, 0) NULL,
	[DebitedAccount] [nvarchar](600) NULL,
	[CreditedAccount] [nvarchar](600) NULL,
	[JournalMemo] [nvarchar](1020) NULL,
	[TotalAmount] [numeric](18, 2) NULL,
	[AmountInWords] [nvarchar](800) NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_SaleSettlementViaRefund] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SaleSettlementViaSales]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SaleSettlementViaSales](
	[ID] [numeric](10, 0) NOT NULL,
	[CardID] [numeric](10, 0) NULL,
	[SettlementDate] [datetime] NULL,
	[CreditedSaleID] [numeric](10, 0) NULL,
	[DebitedAccount] [nvarchar](600) NULL,
	[CreditedAccount] [nvarchar](600) NULL,
	[JournalMemo] [nvarchar](1020) NULL,
	[TotalAmount] [numeric](18, 2) NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_SaleSettlementViaSales] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SaleSettlementViaSalesDetail]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SaleSettlementViaSalesDetail](
	[Code] [int] IDENTITY(2,1) NOT NULL,
	[SettlementID] [numeric](10, 0) NULL,
	[SaleID] [numeric](10, 0) NULL,
	[AppliedAmount] [numeric](18, 2) NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_SaleSettlementViaSalesDetail] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesIngridiants]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesIngridiants](
	[Code] [int] NOT NULL,
	[SaleCode] [int] NULL,
	[ProductCode] [int] NULL,
	[ProductQuantity] [numeric](18, 4) NULL,
	[IngridiantCode] [int] NULL,
	[IngridiantQuantity] [numeric](18, 4) NULL,
	[IngridiantCost] [numeric](18, 4) NULL,
	[CompanyCode] [int] NULL,
	[IsSync] [tinyint] NULL,
	[BranchCode] [numeric](18, 0) NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
 CONSTRAINT [SalesIngridiants_Code] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesOrder]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesOrder](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[SaleID] [bigint] NOT NULL,
	[SubTotal] [numeric](18, 4) NULL,
	[Freight] [numeric](18, 4) NULL,
	[Discount] [numeric](18, 4) NULL,
	[TotalAmount] [numeric](18, 4) NULL,
	[PaidAmount] [numeric](18, 4) NULL,
	[SaleDate] [datetime] NULL,
	[CustomerType] [int] NULL,
	[CustomerCode] [bigint] NULL,
	[OrderTakerCode] [bigint] NULL,
	[CompanyCode] [bigint] NULL,
	[UserName] [nvarchar](150) NULL,
	[CustomerPrevBalance] [numeric](18, 4) NULL,
	[Converted] [tinyint] NULL,
	[TaxID] [int] NULL,
	[OrderTax] [numeric](18, 4) NULL,
	[ItemTax] [numeric](18, 4) NULL,
	[TotalTax] [numeric](18, 4) NULL,
	[IsSync] [tinyint] NULL,
	[BranchCode] [numeric](18, 0) NULL,
	[Remarks] [nvarchar](2000) NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
 CONSTRAINT [SalesOrder_SaleID] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesOrderDetail]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesOrderDetail](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[SaleID] [numeric](18, 0) NULL,
	[RowID] [int] NULL,
	[ProductCode] [nvarchar](500) NULL,
	[Type] [nvarchar](20) NULL,
	[RetailPrice] [numeric](18, 4) NULL,
	[Quantity] [numeric](18, 3) NULL,
	[Discount] [numeric](18, 4) NULL,
	[Amount] [numeric](18, 4) NULL,
	[Investment] [numeric](18, 4) NULL,
	[Profit] [numeric](18, 4) NULL,
	[BatchNo] [nvarchar](500) NULL,
	[CompanyCode] [bigint] NULL,
	[Bonus] [int] NULL,
	[TaxID] [int] NULL,
	[TaxName] [nvarchar](50) NULL,
	[TaxRate] [int] NULL,
	[ItemTax] [numeric](18, 4) NULL,
	[OriginalPrice] [numeric](18, 4) NULL,
	[OriginalTotal] [numeric](18, 2) NULL,
	[NOofGuards] [numeric](18, 0) NULL,
	[Description] [nvarchar](500) NULL,
	[UnitPrice] [numeric](18, 4) NULL,
	[Days] [numeric](18, 0) NULL,
	[StylistCode] [numeric](18, 0) NULL,
	[IsSync] [tinyint] NULL,
	[BranchCode] [numeric](18, 0) NULL,
	[Employees] [float] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[LooseQuantity] [numeric](18, 4) NULL,
	[ProductIMEICode] [int] NULL,
	[Serial] [nvarchar](200) NULL,
	[DiscountPR] [float] NULL,
	[PackageCode] [int] NULL,
	[ProductName] [nvarchar](2000) NULL,
	[UnitId] [int] NULL,
	[Unit] [nvarchar](200) NULL,
	[TaxMethod] [nvarchar](200) NULL,
	[PCTCode] [nvarchar](400) NULL,
	[Comments] [nvarchar](2000) NULL,
	[NameWithModifier] [nvarchar](4000) NULL,
	[SubTotal] [numeric](18, 4) NULL,
	[ProductBarcode] [nvarchar](800) NULL,
	[FBRItemType] [nvarchar](200) NULL,
	[ProductSKU] [nvarchar](200) NULL,
 CONSTRAINT [PK_SalesOrderDetail] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SaleTaxes]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SaleTaxes](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[BillNo] [numeric](18, 0) NULL,
	[TaxName] [nvarchar](1000) NULL,
	[Rate] [nvarchar](100) NULL,
	[Total] [nvarchar](100) NULL,
	[_Default] [tinyint] NULL,
	[IsSync] [tinyint] NULL,
	[BranchCode] [numeric](18, 0) NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[SaleID] [numeric](18, 0) NULL,
	[TaxID] [numeric](18, 0) NULL,
	[TaxAmount] [float] NULL,
 CONSTRAINT [PK_SaleTaxes] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SampleFiles]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SampleFiles](
	[Code] [int] IDENTITY(5,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[FileDetail] [image] NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[ID] [int] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_SampleFiles] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SecurityGroup]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SecurityGroup](
	[ID] [numeric](10, 0) NOT NULL,
	[GroupName] [nvarchar](600) NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_SecurityGroup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServicesCatigory]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServicesCatigory](
	[Code] [int] IDENTITY(2,1) NOT NULL,
	[ServicesCatigories] [nvarchar](100) NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_ServicesCatigory] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sizes]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sizes](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[Size] [nvarchar](300) NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_Sizes] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SMSDetail]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SMSDetail](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Contact] [nvarchar](50) NULL,
	[Status] [nvarchar](50) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[SentDate] [nvarchar](50) NULL,
	[Message] [nvarchar](500) NULL,
	[SmsGroup] [nvarchar](50) NULL,
	[Operation] [nvarchar](50) NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
	[InvoiceLink] [nvarchar](1000) NULL,
	[InvoiceLocalPath] [nvarchar](1000) NULL,
 CONSTRAINT [PK_SMSDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SMSTemplets]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SMSTemplets](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Templete] [nvarchar](1000) NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_SMSTemplets] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StockAdjustments]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StockAdjustments](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[TransferCode] [numeric](18, 0) NULL,
	[TransferDate] [datetime] NULL,
	[ProductCode] [numeric](18, 0) NULL,
	[TransQuantity] [numeric](18, 4) NULL,
	[ReceivedQuantity] [numeric](18, 4) NULL,
	[FromLocation] [nvarchar](50) NULL,
	[ToLocation] [nvarchar](50) NULL,
	[SentBy] [nvarchar](50) NULL,
	[ReceivedBy] [nvarchar](50) NULL,
	[IsSync] [int] NULL,
	[BranchCode] [numeric](18, 0) NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
 CONSTRAINT [PK_StockAdjustments] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StockByLocation]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StockByLocation](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[LocationCode] [bigint] NULL,
	[ProductCode] [bigint] NULL,
	[Attributes] [nvarchar](2000) NULL,
	[Stock] [numeric](18, 3) NULL,
	[CurrentValue] [numeric](18, 2) NULL,
	[SKU] [numeric](18, 0) NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[ProductSKU] [int] NULL,
	[Variant] [nvarchar](4000) NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_StockByLocation] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StockBySaleMan]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StockBySaleMan](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[EmployeeCode] [bigint] NULL,
	[ProductCode] [bigint] NULL,
	[Quantity] [float] NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_StockBySaleMan] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StockCount]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StockCount](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[LocationCode] [numeric](18, 0) NULL,
	[CountDate] [datetime] NULL,
	[Refrence] [nvarchar](500) NULL,
	[Type] [nvarchar](1000) NULL,
	[CountedBy] [nvarchar](100) NULL,
	[Category] [nvarchar](100) NULL,
	[Status] [bit] NULL,
	[IsSync] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_StockCount] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StockCountDetail]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StockCountDetail](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[CountCode] [numeric](18, 0) NULL,
	[ProductCode] [numeric](18, 0) NULL,
	[ExpectedQuantity] [numeric](18, 4) NULL,
	[Quantity] [numeric](18, 4) NULL,
	[Remarks] [nvarchar](1000) NULL,
	[IsSync] [int] NULL,
	[BranchCode] [numeric](18, 0) NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
 CONSTRAINT [PK_StockCountDetail] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StockTransferOrder]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StockTransferOrder](
	[TranID] [bigint] IDENTITY(1,1) NOT NULL,
	[TranDate] [datetime] NULL,
	[FromLocationCode] [nvarchar](300) NULL,
	[ToLocationCode] [nvarchar](300) NULL,
	[SystemDate] [datetime] NULL,
	[UserName] [nvarchar](300) NULL,
	[ReceivedBy] [nvarchar](100) NULL,
	[Status] [nvarchar](100) NULL,
	[IsSync] [numeric](18, 0) NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
	[ReferenceNo] [nvarchar](1000) NULL,
 CONSTRAINT [StockTransferOrder_TranID] PRIMARY KEY CLUSTERED 
(
	[TranID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StockTransferOrderDetail]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StockTransferOrderDetail](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[TranID] [numeric](18, 0) NULL,
	[RowID] [int] NULL,
	[ProductCode] [bigint] NULL,
	[Attributes] [nvarchar](4000) NULL,
	[QuantityTransferred] [numeric](18, 3) NULL,
	[ReceivedQuantity] [numeric](18, 3) NULL,
	[Note] [nvarchar](1000) NULL,
	[IsSync] [tinyint] NULL,
	[FromLocation] [numeric](18, 0) NULL,
	[ToLocation] [numeric](18, 0) NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
	[ProductBarcode] [nvarchar](100) NULL,
 CONSTRAINT [PK_StockTransferOrderDetail] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StockTransfers]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StockTransfers](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[ID] [int] NOT NULL,
	[RowID] [int] NULL,
	[TranDate] [datetime] NULL,
	[FromLocationCode] [nvarchar](150) NULL,
	[ToLocationCode] [nvarchar](150) NULL,
	[ProductCode] [bigint] NULL,
	[Attributes] [nvarchar](2000) NULL,
	[QuantityTransferred] [numeric](18, 3) NULL,
	[SystemDate] [datetime] NULL,
	[UserName] [nvarchar](150) NULL,
	[IsSync] [tinyint] NULL,
	[BranchCode] [numeric](18, 0) NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
 CONSTRAINT [PK_StockTransfers] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubCategories]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubCategories](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[CID] [numeric](18, 0) NULL,
	[Name] [nvarchar](100) NULL,
	[IsDeleted] [tinyint] NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[MyShopsCatID] [int] NULL,
	[MyShopsSubCatID] [int] NULL,
	[MyShopsSync] [tinyint] NULL,
	[MyShopsLastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
	[MyShopsStatus] [int] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_SubCategories] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubCategory]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubCategory](
	[Autono] [bigint] IDENTITY(1,1) NOT NULL,
	[SubCatCode] [nvarchar](50) NOT NULL,
	[SubCatName] [nvarchar](50) NULL,
	[SubCatUName] [nvarchar](50) NULL,
	[CatName] [nvarchar](50) NULL,
	[Authority] [nvarchar](50) NULL,
 CONSTRAINT [PK_SubCategory] PRIMARY KEY CLUSTERED 
(
	[SubCatCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](1800) NULL,
	[ArabicName] [nvarchar](500) NULL,
	[ContactPerson1] [nvarchar](500) NULL,
	[ContactPerson2] [nvarchar](500) NULL,
	[Mobile1] [nvarchar](500) NULL,
	[Mobile2] [nvarchar](500) NULL,
	[VAT] [nvarchar](500) NULL,
	[CRNO] [nvarchar](1000) NULL,
	[Address] [nvarchar](500) NULL,
	[City] [nvarchar](500) NULL,
	[Country] [nvarchar](500) NULL,
	[Website] [nvarchar](1000) NULL,
	[Email] [nvarchar](500) NULL,
	[PaymentTerms] [nvarchar](1000) NULL,
	[DeliveryTerms] [nvarchar](1000) NULL,
	[Remarks] [nvarchar](1000) NULL,
	[Balance] [numeric](18, 4) NULL,
	[IsActive] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[CompanyCode] [bigint] NULL,
	[PayableAccountCode] [nvarchar](200) NULL,
	[TermsCode] [int] NULL,
	[C1] [nvarchar](1000) NULL,
	[C2] [nvarchar](1000) NULL,
	[C3] [nvarchar](1000) NULL,
	[C4] [nvarchar](1000) NULL,
	[IsSync] [tinyint] NULL,
	[ContactPerson] [nvarchar](1000) NULL,
	[Telephone] [nvarchar](1000) NULL,
	[Fax] [nvarchar](1000) NULL,
	[Mobile] [nvarchar](1000) NULL,
	[TRNNo] [nvarchar](1000) NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [Suppliers_Code] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SupplierStock]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SupplierStock](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[SupplierID] [numeric](10, 0) NULL,
	[ItemID] [numeric](10, 0) NULL,
	[QuantityOnHand] [float] NULL,
	[CurrentValue] [numeric](18, 2) NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_SupplierStock] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SuspendDetail]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SuspendDetail](
	[SuspendID] [bigint] IDENTITY(1,1) NOT NULL,
	[RowID] [int] NOT NULL,
	[ProductCode] [nvarchar](1000) NULL,
	[Type] [nvarchar](40) NULL,
	[RetailPrice] [numeric](18, 4) NULL,
	[Quantity] [float] NULL,
	[Discount] [numeric](18, 4) NULL,
	[LineTotal] [numeric](18, 4) NULL,
	[StylistCode] [numeric](18, 0) NULL,
	[IsSync] [tinyint] NULL,
	[Amount] [float] NULL,
	[Investment] [float] NULL,
	[Profit] [float] NULL,
	[BatchNo] [float] NULL,
	[CompanyCode] [int] NULL,
	[Bonus] [int] NULL,
	[TaxId] [numeric](18, 0) NULL,
	[TaxName] [nvarchar](200) NULL,
	[ItemTax] [float] NULL,
	[OriginalPrice] [float] NULL,
	[OriginalTotal] [float] NULL,
	[NOofGuards] [numeric](18, 0) NULL,
	[Description] [nvarchar](1000) NULL,
	[UnitPrice] [numeric](18, 4) NULL,
	[Days] [numeric](18, 0) NULL,
	[BranchCode] [numeric](18, 0) NULL,
	[Employees] [float] NULL,
	[LastSyncDate] [datetime] NULL,
	[SuspDetailsID] [bigint] NULL,
	[ProductName] [nvarchar](200) NULL,
	[ProductTax] [float] NULL,
	[Suggestions] [nvarchar](2000) NULL,
	[KOT] [tinyint] NULL,
	[NamePlusModifier] [nvarchar](1000) NULL,
	[Code] [nvarchar](100) NULL,
	[ExtraSuggestion] [nvarchar](2000) NULL,
	[IsCancelled] [bit] NULL,
	[IsNewItem] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suspends]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suspends](
	[SuspendID] [bigint] IDENTITY(1,1) NOT NULL,
	[SubTotal] [numeric](18, 4) NULL,
	[Freight] [numeric](18, 4) NULL,
	[Discount] [numeric](18, 4) NULL,
	[TotalAmount] [numeric](18, 4) NULL,
	[SaleDate] [datetime] NULL,
	[CustomerType] [int] NULL,
	[CustomerCode] [bigint] NULL,
	[CompanyCode] [bigint] NULL,
	[CreatedBy] [nvarchar](150) NULL,
	[RealTotal] [numeric](18, 4) NULL,
	[Refrence] [nvarchar](500) NULL,
	[Tax] [numeric](18, 0) NULL,
	[IsSync] [tinyint] NULL,
	[IsPrinted] [bit] NULL,
	[PaidAmount] [float] NULL,
	[UserName] [nvarchar](300) NULL,
	[CustomerPrevBalance] [float] NULL,
	[SaleManCode] [bigint] NULL,
	[SalesTax] [float] NULL,
	[ItemTax] [float] NULL,
	[OrderTax] [float] NULL,
	[TotalTax] [float] NULL,
	[TaxID] [int] NULL,
	[BranchCode] [numeric](18, 0) NULL,
	[Remarks] [nvarchar](2000) NULL,
	[LastSyncDate] [datetime] NULL,
	[DiscountPR] [numeric](18, 4) NULL,
	[TableName] [nvarchar](100) NULL,
	[Type] [nvarchar](100) NULL,
	[ReserveTime] [nvarchar](100) NULL,
	[Operation] [nvarchar](100) NULL,
	[UseSeats] [numeric](18, 0) NULL,
	[TokenNumber] [nvarchar](100) NULL,
	[DeliveryBoy] [nvarchar](100) NULL,
	[CustomerAddress] [nvarchar](1000) NULL,
	[Status] [nvarchar](1000) NULL,
	[OrderRefrence] [numeric](18, 0) NULL,
	[PaidAccount] [nvarchar](300) NULL,
	[TaxMethod] [int] NULL,
	[IsAccepted] [bit] NULL,
	[IsReady] [bit] NULL,
	[Paid] [int] NULL,
	[IsCancelled] [bit] NULL,
	[IsUpdated] [bit] NULL,
	[Advance] [float] NULL,
	[Plates] [float] NULL,
	[RoundDegit] [float] NULL,
	[DeliveryTime] [datetime] NULL,
	[DeliveryStatus] [nvarchar](100) NULL,
	[Waiter] [int] NULL,
 CONSTRAINT [PK_Suspend] PRIMARY KEY CLUSTERED 
(
	[SuspendID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SystemPrinters]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemPrinters](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[PrinterName] [nvarchar](200) NULL,
 CONSTRAINT [SystemPrinters_Code] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tables]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tables](
	[TID] [int] NOT NULL,
	[AID] [int] NULL,
	[Name] [nvarchar](100) NULL,
	[Seats] [numeric](18, 0) NULL,
	[UsedSeat] [numeric](18, 0) NULL,
	[Status] [nvarchar](100) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL,
	[Discription] [nvarchar](2000) NULL,
	[IsSync] [int] NULL,
	[BranchCode] [int] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
 CONSTRAINT [Tables_TID] PRIMARY KEY CLUSTERED 
(
	[TID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaxRates]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaxRates](
	[TaxId] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Code] [nvarchar](50) NULL,
	[Rate] [nvarchar](50) NULL,
	[Type] [nvarchar](50) NULL,
	[_Default] [tinyint] NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_TaxRates] PRIMARY KEY CLUSTERED 
(
	[TaxId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Terms]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Terms](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](1800) NULL,
	[DueInDays] [int] NULL,
	[IsActive] [tinyint] NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [Terms_Code] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Token]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Token](
	[ID] [bigint] NOT NULL,
	[TNumber] [numeric](18, 0) NULL,
	[UserID] [numeric](18, 0) NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [Token_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transactions]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transactions](
	[TransID] [numeric](18, 0) NOT NULL,
	[TransDate] [datetime] NULL,
	[Account] [nvarchar](500) NULL,
	[Source] [nvarchar](500) NULL,
	[SourceNo] [bigint] NULL,
	[Memo] [nvarchar](1000) NULL,
	[DebitAmount] [numeric](18, 2) NULL,
	[CreditAmount] [numeric](18, 2) NULL,
	[IsSync] [tinyint] NULL,
	[BranchCode] [numeric](18, 0) NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
 CONSTRAINT [PK_Transactions] PRIMARY KEY CLUSTERED 
(
	[TransID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Units]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Units](
	[UID] [bigint] IDENTITY(1,1) NOT NULL,
	[Unit] [nvarchar](300) NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[ShortName] [nvarchar](600) NULL,
	[BaseUnitId] [bigint] NULL,
	[BaseUnitMultiplier] [decimal](18, 4) NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_Units] PRIMARY KEY CLUSTERED 
(
	[UID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Units_SuperMarket]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Units_SuperMarket](
	[Unit] [nvarchar](300) NULL,
	[UID] [numeric](18, 0) NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
	[ShortName] [nvarchar](1200) NULL,
	[BaseUnitId] [bigint] NULL,
	[BaseUnitMultiplier] [decimal](18, 4) NULL,
	[IsDeleted] [tinyint] NULL,
	[BranchCode] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UploadedFiles]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UploadedFiles](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](200) NULL,
	[SourceID] [numeric](18, 0) NULL,
	[Source] [nvarchar](200) NULL,
	[FileName] [nvarchar](200) NULL,
	[Extension] [nvarchar](100) NULL,
	[FileDetail] [image] NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [UploadedFiles_Code] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VariantGroups]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VariantGroups](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_VariantGroups] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Variants]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Variants](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[GroupCode] [numeric](18, 0) NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_Variants] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WhatsappMessages]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WhatsappMessages](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[MobileNumber] [nvarchar](100) NULL,
	[Message] [nvarchar](1000) NULL,
	[SentBy] [nvarchar](100) NULL,
	[MessageDate] [datetime] NULL,
	[IsSync] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_WhatsappMessages] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WholePayments]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WholePayments](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[SaleID] [numeric](18, 0) NULL,
	[ReturnID] [numeric](18, 0) NULL,
	[PurchaseID] [numeric](18, 0) NULL,
	[ReferenceNo] [nvarchar](50) NULL,
	[TransactionID] [numeric](18, 0) NULL,
	[PaidBy] [nvarchar](50) NULL,
	[ChequeNo] [nvarchar](50) NULL,
	[CCNo] [nvarchar](50) NULL,
	[CCHolder] [nvarchar](50) NULL,
	[CCMonth] [nvarchar](50) NULL,
	[CCYear] [nvarchar](50) NULL,
	[CCType] [nvarchar](50) NULL,
	[Amount] [numeric](18, 0) NULL,
	[Currency] [nvarchar](50) NULL,
	[CreatedBy] [numeric](18, 0) NULL,
	[Type] [nvarchar](50) NULL,
	[POSPaid] [numeric](18, 4) NULL,
	[POSBalance] [numeric](18, 4) NULL,
	[POSTotal] [numeric](18, 4) NULL,
	[IsSync] [tinyint] NULL,
	[BranchCode] [numeric](18, 0) NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[CardCharges] [float] NULL,
 CONSTRAINT [PK_WholePayments] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WooProductsManager]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WooProductsManager](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductCode] [int] NULL,
	[WCCode] [int] NULL,
	[WCType] [nvarchar](100) NULL,
	[WCStatus] [bit] NULL,
	[WCFeatured] [bit] NULL,
	[WCDescription] [ntext] NULL,
	[WCShortDescription] [ntext] NULL,
	[WCPrice] [numeric](18, 4) NULL,
	[WCRegularPrice] [numeric](18, 4) NULL,
	[WCSalePrice] [numeric](18, 4) NULL,
	[WCOnSale] [bit] NULL,
	[WCPurchaseAble] [bit] NULL,
	[WCTotalSales] [numeric](18, 4) NULL,
	[WCTaxStatus] [nvarchar](100) NULL,
	[WCTaxClass] [nvarchar](100) NULL,
	[WCManageStock] [bit] NULL,
	[WCStockQuantity] [numeric](18, 4) NULL,
	[WCStockStatus] [nvarchar](100) NULL,
	[WCShippingRequired] [bit] NULL,
	[WCShippingTaxable] [bit] NULL,
	[WCPermalink] [text] NULL,
	[WCDateCreated] [datetime] NULL,
	[WCDateModified] [datetime] NULL,
	[WCSyncDate] [datetime] NULL,
 CONSTRAINT [PK_WooProductsManager] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WooSalesOrder]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WooSalesOrder](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[id] [int] NULL,
	[parent_id] [int] NULL,
	[number] [nvarchar](100) NULL,
	[created_via] [nvarchar](100) NULL,
	[version] [nvarchar](100) NULL,
	[status] [nvarchar](100) NULL,
	[currency] [nvarchar](100) NULL,
	[date_created] [datetime] NULL,
	[date_modified] [datetime] NULL,
	[discount_total] [numeric](18, 4) NULL,
	[discount_tax] [numeric](18, 4) NULL,
	[shipping_total] [numeric](18, 4) NULL,
	[shipping_tax] [numeric](18, 4) NULL,
	[cart_tax] [numeric](18, 4) NULL,
	[total] [numeric](18, 4) NULL,
	[total_tax] [numeric](18, 4) NULL,
	[prices_include_tax] [numeric](18, 4) NULL,
	[customer_id] [int] NULL,
	[customer_ip_address] [nvarchar](100) NULL,
	[customer_note] [nvarchar](1000) NULL,
	[billing_first_name] [nvarchar](200) NULL,
	[billing_last_name] [nvarchar](200) NULL,
	[billing_company] [nvarchar](200) NULL,
	[billing_address_1] [nvarchar](400) NULL,
	[billing_address_2] [nvarchar](400) NULL,
	[billing_city] [nvarchar](200) NULL,
	[billing_state] [nvarchar](200) NULL,
	[billing_post_code] [nvarchar](100) NULL,
	[billing_country] [nvarchar](100) NULL,
	[billing_email] [nvarchar](200) NULL,
	[billing_phone] [nvarchar](100) NULL,
	[shipping_first_name] [nvarchar](200) NULL,
	[shipping_last_name] [nvarchar](200) NULL,
	[shipping_company] [nvarchar](200) NULL,
	[shipping_address_1] [nvarchar](400) NULL,
	[shipping_address_2] [nvarchar](400) NULL,
	[shipping_city] [nvarchar](200) NULL,
	[shipping_state] [nvarchar](200) NULL,
	[shipping_post_code] [nvarchar](100) NULL,
	[shipping_country] [nvarchar](100) NULL,
	[payment_method] [nvarchar](100) NULL,
	[payment_method_title] [nvarchar](100) NULL,
	[transaction_id] [nvarchar](100) NULL,
	[date_paid] [datetime] NULL,
	[date_completed] [datetime] NULL,
 CONSTRAINT [PK_WooSalesOrder] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WooSalesOrderDetail]    Script Date: 2/2/2025 8:23:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WooSalesOrderDetail](
	[Code] [bigint] IDENTITY(1,1) NOT NULL,
	[sales_order_id] [int] NULL,
	[id] [int] NULL,
	[name] [nvarchar](1000) NULL,
	[product_id] [int] NULL,
	[variation_id] [int] NULL,
	[quantity] [numeric](18, 4) NULL,
	[tax_class] [nvarchar](100) NULL,
	[sub_total] [numeric](18, 4) NULL,
	[subtotal_tax] [numeric](18, 4) NULL,
	[total] [numeric](18, 4) NULL,
	[total_tax] [numeric](18, 4) NULL,
	[sku] [nvarchar](100) NULL,
	[line_item_price] [numeric](18, 4) NULL,
 CONSTRAINT [PK_WooSalesOrderDetail] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Billers] ON 
GO
INSERT [dbo].[Billers] ([ID], [Name], [BusinessTitle], [BusinessTitleArabic], [Address], [AddressArabic], [POBOXNO], [POBOXNOArabic], [Telephone], [TRNNO], [Email], [Website], [C1], [C2], [C3], [C4], [Terms], [SaleInvoiceSize], [SaleInvoiceLeftMargin], [SaleInvoiceTopMargin], [SaleOrderInvoiceSize], [SaleOrderInvoiceLeftMargin], [SaleOrderInvoiceTopMargin], [PurchaseInvoiceSize], [PurchaseInvoiceLeftMargin], [PurchaseInvoiceTopMargin], [PurchaseOrderInvoiceSize], [PurchaseOrderInvoiceLeftMargin], [PurchaseOrderInvoiceTopMargin], [NoofSaleInvoice], [NoofSaleOrderInvoice], [NoofPurchaseInvoice], [NoofPurchaseOrderInvoice], [UseDefaultPrinter], [DefaultPrinter], [PaySlipInvoiceSize], [PayslipLeftMargin], [PaySlipTopMargin], [PaySlipCopies], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [CustomerReceiptSize], [CustomerReceiptLeftMargin], [CustomerReceiptTopMargin], [NoofCustomerReceipts], [UseLabelPrinter], [DefaultLabelPrinter], [BranchCode], [EnableSignleKOT], [SingleKOTPrinter], [SingleKOTPrintCopies]) VALUES (1, N'Default Biller', N'myPOS RetailPro Server', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'3.0', N'0', N'0', N'3.0', N'0', N'0', N'A4', N'0', N'0', N'A4', N'0', N'0', CAST(0 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), 1, N'', N'A4', N'0', N'0', N'1', NULL, NULL, CAST(N'2025-02-02T14:17:52.000' AS DateTime), NULL, N'A4', N'0', N'0', CAST(1 AS Numeric(18, 0)), 0, N'', CAST(0 AS Numeric(18, 0)), NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Billers] OFF
GO
SET IDENTITY_INSERT [dbo].[CancelledItems] ON 
GO
INSERT [dbo].[CancelledItems] ([Code], [ProductCode], [ProductName], [Quantity], [UserCode], [UserName], [Operation], [CancelledDate], [IsSync], [BranchCode], [IsDeleted], [LastModifiedDate], [LastSyncDate]) VALUES (1, 1, N'Name URDU Name', CAST(1.0000 AS Numeric(18, 4)), 4, N'admin', N'Sale Invoice', CAST(N'2025-02-02T19:00:28.000' AS DateTime), NULL, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[CancelledItems] ([Code], [ProductCode], [ProductName], [Quantity], [UserCode], [UserName], [Operation], [CancelledDate], [IsSync], [BranchCode], [IsDeleted], [LastModifiedDate], [LastSyncDate]) VALUES (2, 1, N'Name URDU Name', CAST(1.0000 AS Numeric(18, 4)), 4, N'admin', N'Sale Invoice', CAST(N'2025-02-02T19:01:29.000' AS DateTime), NULL, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[CancelledItems] ([Code], [ProductCode], [ProductName], [Quantity], [UserCode], [UserName], [Operation], [CancelledDate], [IsSync], [BranchCode], [IsDeleted], [LastModifiedDate], [LastSyncDate]) VALUES (3, 2, N'pkg 50g', CAST(1.0000 AS Numeric(18, 4)), 4, N'admin', N'Sale Invoice', CAST(N'2025-02-02T19:01:29.000' AS DateTime), NULL, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[CancelledItems] ([Code], [ProductCode], [ProductName], [Quantity], [UserCode], [UserName], [Operation], [CancelledDate], [IsSync], [BranchCode], [IsDeleted], [LastModifiedDate], [LastSyncDate]) VALUES (4, 1, N'Name URDU Name', CAST(1.0000 AS Numeric(18, 4)), 4, N'admin', N'Sale Invoice', CAST(N'2025-02-02T19:12:09.000' AS DateTime), NULL, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[CancelledItems] ([Code], [ProductCode], [ProductName], [Quantity], [UserCode], [UserName], [Operation], [CancelledDate], [IsSync], [BranchCode], [IsDeleted], [LastModifiedDate], [LastSyncDate]) VALUES (5, 2, N'pkg 50g', CAST(1.0000 AS Numeric(18, 4)), 4, N'admin', N'Sale Invoice', CAST(N'2025-02-02T19:12:09.000' AS DateTime), NULL, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[CancelledItems] ([Code], [ProductCode], [ProductName], [Quantity], [UserCode], [UserName], [Operation], [CancelledDate], [IsSync], [BranchCode], [IsDeleted], [LastModifiedDate], [LastSyncDate]) VALUES (6, 1, N'Name URDU Name', CAST(1.0000 AS Numeric(18, 4)), 4, N'admin', N'Sale Invoice', CAST(N'2025-02-02T19:12:38.000' AS DateTime), NULL, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[CancelledItems] ([Code], [ProductCode], [ProductName], [Quantity], [UserCode], [UserName], [Operation], [CancelledDate], [IsSync], [BranchCode], [IsDeleted], [LastModifiedDate], [LastSyncDate]) VALUES (7, 2, N'pkg 50g', CAST(1.0000 AS Numeric(18, 4)), 4, N'admin', N'Sale Invoice', CAST(N'2025-02-02T19:12:38.000' AS DateTime), NULL, 1, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[CancelledItems] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 
GO
INSERT [dbo].[Categories] ([CID], [Category], [IsDeleted], [IsSync], [LastModifiedDate], [MyShopsCatID], [MyShopsSync], [MyShopsLastModifiedDate], [LastSyncDate], [MyShopsStatus], [Color], [ImageName], [BranchCode], [Parent], [WCProductCategoryId], [WCProductParentCategoryId], [WCSyncDate]) VALUES (1, N'Category', NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, N'', NULL, NULL, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Categories] ([CID], [Category], [IsDeleted], [IsSync], [LastModifiedDate], [MyShopsCatID], [MyShopsSync], [MyShopsLastModifiedDate], [LastSyncDate], [MyShopsStatus], [Color], [ImageName], [BranchCode], [Parent], [WCProductCategoryId], [WCProductParentCategoryId], [WCSyncDate]) VALUES (2, N'Sub Category', NULL, NULL, CAST(N'2025-02-02T16:38:15.000' AS DateTime), NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[ChartOfAccounts] ON 
GO
INSERT [dbo].[ChartOfAccounts] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (1, N'001', NULL, NULL, N'0', N'0', N'Assets', N'Assets', 0.0000, 0.0000, N'Debitor', N'Assets', 0, 0, 0, 0, 1, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[ChartOfAccounts] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (2, N'001-001', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'001', N'', N'Petty Cash', N'Cash', 0.0000, 1345.0000, N'Debitor', N'Assets', 0, 0, 1, 0, 1, NULL, NULL, CAST(N'2025-02-02T19:26:43.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ChartOfAccounts] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (3, N'001-002', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'001', N'', N'Customer Receivables', N'', 0.0000, 0.0000, N'Debitor', N'Assets', 0, 0, 1, 0, 1, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[ChartOfAccounts] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (4, N'001-003', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'001', N'', N'PDC Receivables', N'', 0.0000, 0.0000, N'Debitor', N'Assets', 0, 0, 1, 0, 1, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[ChartOfAccounts] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (5, N'001-004', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'001', N'', N'Inventory', N'', 0.0000, -8400.0000, N'Debitor', N'Assets', 0, 0, 1, 0, 1, NULL, NULL, CAST(N'2025-02-02T19:15:56.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ChartOfAccounts] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (6, N'001-005', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'001', N'', N'Banks (Header)', N'', 0.0000, 0.0000, N'Debitor', N'Assets', 0, 0, 1, 0, 1, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[ChartOfAccounts] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (7, N'001-006', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'001', N'', N'Accumulated Depreciation', N'', 0.0000, 0.0000, N'Creditor', N'Assets', 0, 0, 1, 0, 1, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[ChartOfAccounts] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (8, N'001-007', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'001', N'', N'Customers (Header)', N'', 0.0000, 0.0000, N'Debitor', N'Assets', 0, 0, 1, 0, 1, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[ChartOfAccounts] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (9, N'001-008', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'001', N'', N'Inventory (Header)', N'', 0.0000, 0.0000, N'Debitor', N'Assets', 0, 0, 1, 0, 1, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[ChartOfAccounts] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (10, N'002', NULL, NULL, N'0', N'0', N'Liabilities', N'Liabilities', 0.0000, 0.0000, N'Creditor', N'Liabilities', 0, 0, 0, 0, 1, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[ChartOfAccounts] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (11, N'002-001', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'002', N'', N'Supplier Payables', N'', 0.0000, 0.0000, N'Creditor', N'Liabilities', 0, 0, 1, 0, 1, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[ChartOfAccounts] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (12, N'002-002', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'002', N'', N'PDC Payables', N'', 0.0000, 0.0000, N'Creditor', N'Liabilities', 0, 0, 1, 0, 1, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[ChartOfAccounts] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (13, N'002-003', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'002', N'', N'Dividends Payables', N'', 0.0000, 0.0000, N'Creditor', N'Liabilities', 0, 0, 1, 0, 1, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[ChartOfAccounts] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (14, N'002-004', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'002', N'', N'Suppliers (Header)', N'', 0.0000, 0.0000, N'Creditor', N'Liabilities', 0, 0, 1, 0, 1, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[ChartOfAccounts] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (15, N'002-005', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'002', N'', N'Employee Payables', N'', 0.0000, 0.0000, N'Creditor', N'Liabilities', 0, 0, 1, 0, 1, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[ChartOfAccounts] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (16, N'002-006', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'002', N'', N'Employees (Header)', N'', 0.0000, 0.0000, N'Creditor', N'Liabilities', 0, 0, 1, 0, 1, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[ChartOfAccounts] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (17, N'003', NULL, NULL, N'0', N'0', N'Equity', N'Equity', 0.0000, 0.0000, N'Creditor', N'Equity', 0, 0, 0, 0, 1, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[ChartOfAccounts] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (18, N'003-001', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'003', N'', N'Retained Earnings', N'', 0.0000, 0.0000, N'Creditor', N'Equity', 0, 0, 1, 0, 1, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[ChartOfAccounts] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (19, N'003-002', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'003', N'', N'Owner Investments', N'', 0.0000, 0.0000, N'Creditor', N'Equity', 0, 0, 1, 0, 1, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[ChartOfAccounts] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (20, N'003-003', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'003', N'', N'Owner Withdrawals', N'', 0.0000, 0.0000, N'Debitor', N'Equity', 0, 0, 1, 0, 1, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[ChartOfAccounts] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (21, N'003-004', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'003', N'', N'Net Income', N'', 0.0000, 0.0000, N'Creditor', N'Equity', 0, 0, 1, 0, 1, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[ChartOfAccounts] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (22, N'004', NULL, NULL, N'0', N'0', N'Income', N'Income', 0.0000, 0.0000, N'Creditor', N'Income', 0, 0, 0, 0, 1, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[ChartOfAccounts] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (23, N'004-001', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'004', N'', N'Sales', N'', 0.0000, 7330.0000, N'Creditor', N'Income', 0, 0, 1, 0, 1, NULL, NULL, CAST(N'2025-02-02T19:15:56.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ChartOfAccounts] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (24, N'004-002', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'004', N'', N'Freight Collected', N'', 0.0000, 0.0000, N'Creditor', N'Income', 0, 0, 1, 0, 1, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[ChartOfAccounts] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (25, N'004-003', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'004', N'', N'Discount Taken', N'', 0.0000, 0.0000, N'Creditor', N'Income', 0, 0, 1, 0, 1, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[ChartOfAccounts] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (26, N'004-004', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'004', N'', N'Inventory Sales (Header)', N'', 0.0000, 0.0000, N'Creditor', N'Income', 0, 0, 1, 0, 1, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[ChartOfAccounts] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (27, N'005', NULL, NULL, N'0', N'0', N'Expenses', N'Expenses', 0.0000, 0.0000, N'Debitor', N'Expenses', 0, 0, 0, 0, 1, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[ChartOfAccounts] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (28, N'005-001', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'005', N'', N'Cost of Goods Sold', N'', 0.0000, 20400.0000, N'Debitor', N'Expenses', 0, 0, 1, 0, 1, NULL, NULL, CAST(N'2025-02-02T19:15:56.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ChartOfAccounts] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (29, N'005-002', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'005', N'', N'Freight Paid', N'', 0.0000, 0.0000, N'Debitor', N'Expenses', 0, 0, 1, 0, 1, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[ChartOfAccounts] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (30, N'005-003', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'005', N'', N'Discount Given', N'', 0.0000, 0.0000, N'Debitor', N'Expenses', 0, 0, 1, 0, 1, NULL, NULL, CAST(N'2025-02-02T19:12:53.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ChartOfAccounts] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (31, N'005-004', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'005', N'', N'Depreciation Expense', N'', 0.0000, 0.0000, N'Debitor', N'Expenses', 0, 0, 1, 0, 1, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[ChartOfAccounts] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (32, N'005-005', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'005', N'', N'General Expenses', N'', 0.0000, 4200.0000, N'Debitor', N'Expenses', 0, 0, 1, 0, 1, NULL, NULL, CAST(N'2025-02-02T19:26:43.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ChartOfAccounts] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (33, N'005-006', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'005', N'', N'COGS (Header)', N'', 0.0000, 0.0000, N'Debitor', N'Expenses', 0, 0, 1, 0, 1, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[ChartOfAccounts] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (34, N'001-008-001', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'001-008', N'', N'SHIRT-COLOR=GREEN,SIZE=SMALL', N'System Generated Inventory Account', 0.0000, 0.0000, N'Debitor', N'Assets', 0, 0, 2, 0, 1, NULL, NULL, NULL, NULL, 0)
GO
INSERT [dbo].[ChartOfAccounts] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (35, N'005-006-001', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'005-006', N'', N'SHIRT-COLOR=GREEN,SIZE=SMALL', N'System Generated COGS Account', 0.0000, 0.0000, N'Debitor', N'Expenses', 0, 0, 2, 0, 1, NULL, NULL, NULL, NULL, 0)
GO
INSERT [dbo].[ChartOfAccounts] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (36, N'004-004-001', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'004-004', N'', N'SHIRT-COLOR=GREEN,SIZE=SMALL', N'System Generated Inventory Sales Account', 0.0000, 0.0000, N'Creditor', N'Income', 0, 0, 2, 0, 1, NULL, NULL, NULL, NULL, 0)
GO
INSERT [dbo].[ChartOfAccounts] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (37, N'001-008-001', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'001-008', N'', N'SHIRT-COLOR=GREY,SIZE=LARGE', N'System Generated Inventory Account', 0.0000, 0.0000, N'Debitor', N'Assets', 0, 0, 2, 0, 1, NULL, NULL, NULL, NULL, 0)
GO
INSERT [dbo].[ChartOfAccounts] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (38, N'005-006-001', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'005-006', N'', N'SHIRT-COLOR=GREY,SIZE=LARGE', N'System Generated COGS Account', 0.0000, 0.0000, N'Debitor', N'Expenses', 0, 0, 2, 0, 1, NULL, NULL, NULL, NULL, 0)
GO
INSERT [dbo].[ChartOfAccounts] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (39, N'004-004-001', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'004-004', N'', N'SHIRT-COLOR=GREY,SIZE=LARGE', N'System Generated Inventory Sales Account', 0.0000, 0.0000, N'Creditor', N'Income', 0, 0, 2, 0, 1, NULL, NULL, NULL, NULL, 0)
GO
INSERT [dbo].[ChartOfAccounts] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (40, N'002-004-001', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'002-004', N'', N'Supplier', N'System Generated Supplier Account', 0.0000, 10500.0000, N'Creditor', N'Liabilities', 0, 0, 2, 0, 1, NULL, NULL, CAST(N'2025-02-02T18:37:13.000' AS DateTime), NULL, 1)
GO
INSERT [dbo].[ChartOfAccounts] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (41, N'001-007-001', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'001-007', N'', N'Ali', N'System Generated Customer Account', 0.0000, 285.0000, N'Debitor', N'Assets', 0, 0, 2, 0, 1, NULL, NULL, CAST(N'2025-02-02T19:15:31.000' AS DateTime), NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[ChartOfAccounts] OFF
GO
SET IDENTITY_INSERT [dbo].[ChartOfAccounts_JellyERP] ON 
GO
INSERT [dbo].[ChartOfAccounts_JellyERP] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (1, N'001', NULL, NULL, N'0', N'0', N'Assets', N'Assets', CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Debitor', N'Assets', 0, 0, 0, 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ChartOfAccounts_JellyERP] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (2, N'002', NULL, NULL, N'0', N'0', N'Liabilities', N'Liabilities', CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Creditor', N'Liabilities', 0, 0, 0, 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ChartOfAccounts_JellyERP] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (3, N'003', NULL, NULL, N'0', N'0', N'Equity', N'Equity', CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Creditor', N'Equity', 0, 0, 0, 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ChartOfAccounts_JellyERP] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (4, N'004', NULL, NULL, N'0', N'0', N'Income', N'Income', CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Creditor', N'Income', 0, 0, 0, 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ChartOfAccounts_JellyERP] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (5, N'005', NULL, NULL, N'0', N'0', N'Expenses', N'Expenses', CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Debitor', N'Expenses', 0, 0, 0, 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[ChartOfAccounts_JellyERP] OFF
GO
INSERT [dbo].[ChartOfAccounts_Retaila] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (1, N'001', NULL, NULL, N'0', N'0', N'Assets', N'Assets', 0.0000, 0.0000, N'Debitor', N'Assets', 0, 0, CAST(0 AS Numeric(10, 0)), 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ChartOfAccounts_Retaila] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (2, N'001-001', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'001', N'', N'Petty Cash', N'Cash', 0.0000, 0.0000, N'Debitor', N'Assets', 0, 0, CAST(1 AS Numeric(10, 0)), 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ChartOfAccounts_Retaila] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (3, N'001-002', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'001', N'', N'Customer Receivables', N'', 0.0000, 0.0000, N'Debitor', N'Assets', 0, 0, CAST(1 AS Numeric(10, 0)), 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ChartOfAccounts_Retaila] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (4, N'001-003', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'001', N'', N'PDC Receivables', N'', 0.0000, 0.0000, N'Debitor', N'Assets', 0, 0, CAST(1 AS Numeric(10, 0)), 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ChartOfAccounts_Retaila] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (5, N'001-004', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'001', N'', N'Inventory', N'', 0.0000, 0.0000, N'Debitor', N'Assets', 0, 0, CAST(1 AS Numeric(10, 0)), 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ChartOfAccounts_Retaila] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (6, N'001-005', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'001', N'', N'Banks (Header)', N'', 0.0000, 0.0000, N'Debitor', N'Assets', 0, 0, CAST(1 AS Numeric(10, 0)), 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ChartOfAccounts_Retaila] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (7, N'001-006', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'001', N'', N'Accumulated Depreciation', N'', 0.0000, 0.0000, N'Creditor', N'Assets', 0, 0, CAST(1 AS Numeric(10, 0)), 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ChartOfAccounts_Retaila] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (8, N'001-007', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'001', N'', N'Customers (Header)', N'', 0.0000, 0.0000, N'Debitor', N'Assets', 0, 0, CAST(1 AS Numeric(10, 0)), 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ChartOfAccounts_Retaila] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (9, N'001-008', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'001', N'', N'Inventory (Header)', N'', 0.0000, 0.0000, N'Debitor', N'Assets', 0, 0, CAST(1 AS Numeric(10, 0)), 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ChartOfAccounts_Retaila] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (10, N'002', NULL, NULL, N'0', N'0', N'Liabilities', N'Liabilities', 0.0000, 0.0000, N'Creditor', N'Liabilities', 0, 0, CAST(0 AS Numeric(10, 0)), 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ChartOfAccounts_Retaila] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (11, N'002-001', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'002', N'', N'Supplier Payables', N'', 0.0000, 0.0000, N'Creditor', N'Liabilities', 0, 0, CAST(1 AS Numeric(10, 0)), 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ChartOfAccounts_Retaila] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (12, N'002-002', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'002', N'', N'PDC Payables', N'', 0.0000, 0.0000, N'Creditor', N'Liabilities', 0, 0, CAST(1 AS Numeric(10, 0)), 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ChartOfAccounts_Retaila] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (13, N'002-003', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'002', N'', N'Dividends Payables', N'', 0.0000, 0.0000, N'Creditor', N'Liabilities', 0, 0, CAST(1 AS Numeric(10, 0)), 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ChartOfAccounts_Retaila] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (14, N'002-004', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'002', N'', N'Suppliers (Header)', N'', 0.0000, 0.0000, N'Creditor', N'Liabilities', 0, 0, CAST(1 AS Numeric(10, 0)), 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ChartOfAccounts_Retaila] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (15, N'002-005', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'002', N'', N'Employee Payables', N'', 0.0000, 0.0000, N'Creditor', N'Liabilities', 0, 0, CAST(1 AS Numeric(10, 0)), 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ChartOfAccounts_Retaila] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (16, N'002-006', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'002', N'', N'Employees (Header)', N'', 0.0000, 0.0000, N'Creditor', N'Liabilities', 0, 0, CAST(1 AS Numeric(10, 0)), 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ChartOfAccounts_Retaila] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (17, N'003', NULL, NULL, N'0', N'0', N'Equity', N'Equity', 0.0000, 0.0000, N'Creditor', N'Equity', 0, 0, CAST(0 AS Numeric(10, 0)), 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ChartOfAccounts_Retaila] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (18, N'003-001', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'003', N'', N'Retained Earnings', N'', 0.0000, 0.0000, N'Creditor', N'Equity', 0, 0, CAST(1 AS Numeric(10, 0)), 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ChartOfAccounts_Retaila] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (19, N'003-002', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'003', N'', N'Owner Investments', N'', 0.0000, 0.0000, N'Creditor', N'Equity', 0, 0, CAST(1 AS Numeric(10, 0)), 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ChartOfAccounts_Retaila] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (20, N'003-003', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'003', N'', N'Owner Withdrawals', N'', 0.0000, 0.0000, N'Debitor', N'Equity', 0, 0, CAST(1 AS Numeric(10, 0)), 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ChartOfAccounts_Retaila] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (21, N'003-004', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'003', N'', N'Net Income', N'', 0.0000, 0.0000, N'Creditor', N'Equity', 0, 0, CAST(1 AS Numeric(10, 0)), 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ChartOfAccounts_Retaila] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (22, N'004', NULL, NULL, N'0', N'0', N'Income', N'Income', 0.0000, 0.0000, N'Creditor', N'Income', 0, 0, CAST(0 AS Numeric(10, 0)), 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ChartOfAccounts_Retaila] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (23, N'004-001', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'004', N'', N'Sales', N'', 0.0000, 0.0000, N'Creditor', N'Income', 0, 0, CAST(1 AS Numeric(10, 0)), 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ChartOfAccounts_Retaila] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (24, N'004-002', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'004', N'', N'Freight Collected', N'', 0.0000, 0.0000, N'Creditor', N'Income', 0, 0, CAST(1 AS Numeric(10, 0)), 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ChartOfAccounts_Retaila] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (25, N'004-003', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'004', N'', N'Discount Taken', N'', 0.0000, 0.0000, N'Creditor', N'Income', 0, 0, CAST(1 AS Numeric(10, 0)), 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ChartOfAccounts_Retaila] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (26, N'004-004', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'004', N'', N'Inventory Sales (Header)', N'', 0.0000, 0.0000, N'Creditor', N'Income', 0, 0, CAST(1 AS Numeric(10, 0)), 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ChartOfAccounts_Retaila] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (27, N'005', NULL, NULL, N'0', N'0', N'Expenses', N'Expenses', 0.0000, 0.0000, N'Debitor', N'Expenses', 0, 0, CAST(0 AS Numeric(10, 0)), 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ChartOfAccounts_Retaila] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (28, N'005-001', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'005', N'', N'Cost of Goods Sold', N'', 0.0000, 0.0000, N'Debitor', N'Expenses', 0, 0, CAST(1 AS Numeric(10, 0)), 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ChartOfAccounts_Retaila] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (29, N'005-002', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'005', N'', N'Freight Paid', N'', 0.0000, 0.0000, N'Debitor', N'Expenses', 0, 0, CAST(1 AS Numeric(10, 0)), 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ChartOfAccounts_Retaila] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (30, N'005-003', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'005', N'', N'Discount Given', N'', 0.0000, 0.0000, N'Debitor', N'Expenses', 0, 0, CAST(1 AS Numeric(10, 0)), 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ChartOfAccounts_Retaila] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (31, N'005-004', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'005', N'', N'Depreciation Expense', N'', 0.0000, 0.0000, N'Debitor', N'Expenses', 0, 0, CAST(1 AS Numeric(10, 0)), 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ChartOfAccounts_Retaila] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (32, N'005-005', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'005', N'', N'General Expenses', N'', 0.0000, 0.0000, N'Debitor', N'Expenses', 0, 0, CAST(1 AS Numeric(10, 0)), 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ChartOfAccounts_Retaila] ([Code], [AccountCode], [AccountCodeMasterPart], [AccountCodeNumericPart], [ParentAccountCode], [TopParentOfSameType], [Name], [Description], [OpeningBalance], [ClosingBalance], [DebitorOrCreditor], [AccountType], [Hidden], [LeafNode], [DepthLevel], [EquityRelated], [CompanyCode], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (33, N'005-006', CAST(0 AS Numeric(10, 0)), CAST(0 AS Numeric(10, 0)), N'005', N'', N'COGS (Header)', N'', 0.0000, 0.0000, N'Debitor', N'Expenses', 0, 0, CAST(1 AS Numeric(10, 0)), 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Colors] ON 
GO
INSERT [dbo].[Colors] ([Code], [Color], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (1, N'Green', NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Colors] OFF
GO
SET IDENTITY_INSERT [dbo].[Companies] ON 
GO
INSERT [dbo].[Companies] ([Code], [COID], [Company], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (1, NULL, N'Brand', NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Companies] OFF
GO
INSERT [dbo].[CompaniesManager] ([Code], [Name], [City], [Country], [Remarks], [IsActive], [Telephone], [Mobile], [Fax], [Address], [Website], [Email], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (1, N'Default Company', N'', N'', N'test', 1, N'', N'', N'', N'', N'', N'', NULL, 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL)
GO
SET IDENTITY_INSERT [dbo].[Countries] ON 
GO
INSERT [dbo].[Countries] ([Code], [Country], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (1, N'Pak', NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Countries] OFF
GO
INSERT [dbo].[CustomerGroups] ([CGID], [Name], [Rate], [Type], [IsDefault], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (1, N'Default', N'0', N'Percentage', 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[CustomerGroups] ([CGID], [Name], [Rate], [Type], [IsDefault], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (2, N'5%', N'5', N'Percentage', 0, NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 
GO
INSERT [dbo].[Customers] ([Code], [Name], [CustomerGroup], [TRNNo], [Brand], [VehicleNo], [ContactPerson], [Telephone], [Fax], [Mobile], [Address], [POBox], [City], [Country], [Website], [Email], [Remarks], [Balance], [IsActive], [LastModifiedDate], [CompanyCode], [ReceivableAccountCode], [TermsCode], [CreditLimit], [C1], [C2], [C3], [C4], [IsDeleted], [IsSync], [Area], [LastSyncDate], [CNIC], [BranchCode], [TotalRewardPoints], [TotalRewardPointsUsed], [TotalRewardPointsAmountUsed], [TotalRewardPointExpired]) VALUES (1, N'Ali', 1, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'Pak', N'', N'', N'', CAST(285.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T19:15:30.000' AS DateTime), 1, N'001-007-001', NULL, CAST(5000.0000 AS Numeric(18, 4)), N'', N'', N'', N'', NULL, NULL, NULL, NULL, N'', CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[DailyExpenses] ON 
GO
INSERT [dbo].[DailyExpenses] ([ID], [ExpenseDate], [Expense], [Amount], [UserName], [TaxID], [TaxName], [TaxRate], [ExpenseTax], [CompanyCode], [IsSync], [IsDeleted], [BranchCode], [LastModifiedDate], [LastSyncDate]) VALUES (1, CAST(N'2025-02-02T19:25:55.000' AS DateTime), N'KHANA', CAST(200.0000 AS Numeric(18, 4)), N'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[DailyExpenses] OFF
GO
SET IDENTITY_INSERT [dbo].[DailyExpenseTypes] ON 
GO
INSERT [dbo].[DailyExpenseTypes] ([ID], [Category], [IsDeleted], [IsSync], [LastModifiedDate], [LastSyncDate], [BranchCode]) VALUES (1, N'KHANA', NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[DailyExpenseTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[EmployeeManager] ON 
GO
INSERT [dbo].[EmployeeManager] ([EmployeeCode], [Name], [Login], [Password], [Role], [Telephone], [Mobile], [Email], [Address], [City], [Country], [Salary], [Allowances], [Balance], [IsActive], [LastModifiedDate], [PayableAccountCode], [CompanyCode], [BillerCode], [IsSync], [CanDiscount], [CanSee], [CanSwitchPriceGroup], [CanChangePrice], [CanViewRegister], [CanCloseRegister], [EnableMobileReport], [PriceGroup], [GroupCode], [Gender], [DOB], [PassportNo], [PassportExpiry], [VisaType], [VisaExpiry], [Identification], [NetBalance], [SalaryCalculationMethod], [WorkingHours], [ShortLeaveCalculationMethod], [EmployeeCompanyCode], [Designation], [NativeCountry], [JoiningDate], [BankAccountNumber], [BankName], [IDNumber], [IDExpiry], [MedicalPolicyNumber], [MedicalPolicyExpiry], [DrivingLicense], [DrivingLicenseExpiry], [IsDeleted], [LastSyncDate], [DefaultLanguage], [EnableDeleteRow], [DeleteRowPassword], [CanViewBils], [BranchCode], [CustomerSelection], [CanChangeDate]) VALUES (4, N'Admin', N'admin', N'JEB+jZKMq7FoHU+DsgfTQg==', N'Admin', N'', N'', N'', N'', N'', N'', CAST(20000.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T19:00:08.000' AS DateTime), N'002-006-003', NULL, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, CAST(N'2019-05-07T20:50:05.000' AS DateTime), N'', CAST(N'2019-05-07T20:50:05.000' AS DateTime), N'', CAST(N'2019-05-07T20:50:05.000' AS DateTime), 2, 0, N'Per Hour', N'3', N'Half Day Salary', N'', N'', N'', NULL, N'', N'', N'', NULL, N'', NULL, N'', NULL, NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1, 1, N'BJE1MSbnaZJVT8bTBVIsQg==', 1, 1, 0, 0)
GO
INSERT [dbo].[EmployeeManager] ([EmployeeCode], [Name], [Login], [Password], [Role], [Telephone], [Mobile], [Email], [Address], [City], [Country], [Salary], [Allowances], [Balance], [IsActive], [LastModifiedDate], [PayableAccountCode], [CompanyCode], [BillerCode], [IsSync], [CanDiscount], [CanSee], [CanSwitchPriceGroup], [CanChangePrice], [CanViewRegister], [CanCloseRegister], [EnableMobileReport], [PriceGroup], [GroupCode], [Gender], [DOB], [PassportNo], [PassportExpiry], [VisaType], [VisaExpiry], [Identification], [NetBalance], [SalaryCalculationMethod], [WorkingHours], [ShortLeaveCalculationMethod], [EmployeeCompanyCode], [Designation], [NativeCountry], [JoiningDate], [BankAccountNumber], [BankName], [IDNumber], [IDExpiry], [MedicalPolicyNumber], [MedicalPolicyExpiry], [DrivingLicense], [DrivingLicenseExpiry], [IsDeleted], [LastSyncDate], [DefaultLanguage], [EnableDeleteRow], [DeleteRowPassword], [CanViewBils], [BranchCode], [CustomerSelection], [CanChangeDate]) VALUES (5, N'Store Manager', N'sales', N'h6d8SdRwFl40wqMV4s67Ww==', N'SalesPerson', N'', N'', N'', N'', N'', N'', CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), 1, CAST(N'2023-03-15T16:08:57.000' AS DateTime), N'002-006-001', NULL, 1, NULL, 0, 0, NULL, 0, 1, 1, 0, -1, 3, 1, NULL, N'', NULL, N'', NULL, 1, 0, N'', N'', N'', N'', N'', N'', NULL, N'', N'', N'', NULL, N'', NULL, N'', NULL, NULL, NULL, 0, 1, N'BJE1MSbnaZJVT8bTBVIsQg==', NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[EmployeeManager] OFF
GO
SET IDENTITY_INSERT [dbo].[EmployeesByLocation] ON 
GO
INSERT [dbo].[EmployeesByLocation] ([Code], [BranchCode], [Branch], [EmployeeCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate]) VALUES (5, CAST(1 AS Numeric(18, 0)), N'Warehouse', CAST(4 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[EmployeesByLocation] ([Code], [BranchCode], [Branch], [EmployeeCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate]) VALUES (6, CAST(2 AS Numeric(18, 0)), N'Imporium Branch', CAST(4 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[EmployeesByLocation] OFF
GO
SET IDENTITY_INSERT [dbo].[InventoryLedger] ON 
GO
INSERT [dbo].[InventoryLedger] ([ID], [TranDate], [ProductCode], [SourceID], [Source], [OpeningQuantity], [ClosingQuantity], [OpeningValue], [ClosingValue], [CompanyCode], [OpeningBonus], [ClosingBonus], [SystemDate], [Attributes], [IsSync], [BranchCode], [Remarks], [LastModifiedDate], [IsDeleted], [LastSyncDate]) VALUES (5, CAST(N'2025-02-02T18:06:03.000' AS DateTime), 2, 1, N'Purchase Bill', CAST(0.000 AS Numeric(18, 3)), CAST(20.000 AS Numeric(18, 3)), CAST(0.0000 AS Numeric(18, 4)), CAST(6000.0000 AS Numeric(18, 4)), 1, 0, 0, CAST(N'2025-02-02T18:27:29.000' AS DateTime), N'-1', NULL, CAST(1 AS Numeric(18, 0)), N'', NULL, NULL, NULL)
GO
INSERT [dbo].[InventoryLedger] ([ID], [TranDate], [ProductCode], [SourceID], [Source], [OpeningQuantity], [ClosingQuantity], [OpeningValue], [ClosingValue], [CompanyCode], [OpeningBonus], [ClosingBonus], [SystemDate], [Attributes], [IsSync], [BranchCode], [Remarks], [LastModifiedDate], [IsDeleted], [LastSyncDate]) VALUES (6, CAST(N'2025-02-02T18:06:03.000' AS DateTime), 1, 1, N'Purchase Bill', CAST(0.000 AS Numeric(18, 3)), CAST(50.000 AS Numeric(18, 3)), CAST(0.0000 AS Numeric(18, 4)), CAST(10000.0000 AS Numeric(18, 4)), 1, 0, 0, CAST(N'2025-02-02T18:27:29.000' AS DateTime), N'-1', NULL, CAST(1 AS Numeric(18, 0)), N'', NULL, NULL, NULL)
GO
INSERT [dbo].[InventoryLedger] ([ID], [TranDate], [ProductCode], [SourceID], [Source], [OpeningQuantity], [ClosingQuantity], [OpeningValue], [ClosingValue], [CompanyCode], [OpeningBonus], [ClosingBonus], [SystemDate], [Attributes], [IsSync], [BranchCode], [Remarks], [LastModifiedDate], [IsDeleted], [LastSyncDate]) VALUES (7, CAST(N'2025-02-02T18:30:04.000' AS DateTime), 1, 1, N'Purchase Return', CAST(50.000 AS Numeric(18, 3)), CAST(30.000 AS Numeric(18, 3)), CAST(10000.0000 AS Numeric(18, 4)), CAST(6000.0000 AS Numeric(18, 4)), 1, 0, 0, CAST(N'2025-02-02T18:30:15.000' AS DateTime), N'-1', NULL, CAST(1 AS Numeric(18, 0)), N'', NULL, NULL, NULL)
GO
INSERT [dbo].[InventoryLedger] ([ID], [TranDate], [ProductCode], [SourceID], [Source], [OpeningQuantity], [ClosingQuantity], [OpeningValue], [ClosingValue], [CompanyCode], [OpeningBonus], [ClosingBonus], [SystemDate], [Attributes], [IsSync], [BranchCode], [Remarks], [LastModifiedDate], [IsDeleted], [LastSyncDate]) VALUES (8, CAST(N'2025-02-02T00:00:00.000' AS DateTime), 1, 2, N'Stock Transfer', CAST(30.000 AS Numeric(18, 3)), CAST(25.000 AS Numeric(18, 3)), CAST(6000.0000 AS Numeric(18, 4)), CAST(5000.0000 AS Numeric(18, 4)), 1, 0, 0, CAST(N'2025-02-02T18:53:36.000' AS DateTime), N'-1', NULL, CAST(1 AS Numeric(18, 0)), N'', NULL, NULL, NULL)
GO
INSERT [dbo].[InventoryLedger] ([ID], [TranDate], [ProductCode], [SourceID], [Source], [OpeningQuantity], [ClosingQuantity], [OpeningValue], [ClosingValue], [CompanyCode], [OpeningBonus], [ClosingBonus], [SystemDate], [Attributes], [IsSync], [BranchCode], [Remarks], [LastModifiedDate], [IsDeleted], [LastSyncDate]) VALUES (9, CAST(N'2025-02-02T00:00:00.000' AS DateTime), 1, 2, N'Stock Receive', CAST(0.000 AS Numeric(18, 3)), CAST(5.000 AS Numeric(18, 3)), CAST(6000.0000 AS Numeric(18, 4)), CAST(7000.0000 AS Numeric(18, 4)), 1, 0, 0, CAST(N'2025-02-02T18:53:36.000' AS DateTime), N'-1', NULL, CAST(2 AS Numeric(18, 0)), N'', NULL, NULL, NULL)
GO
INSERT [dbo].[InventoryLedger] ([ID], [TranDate], [ProductCode], [SourceID], [Source], [OpeningQuantity], [ClosingQuantity], [OpeningValue], [ClosingValue], [CompanyCode], [OpeningBonus], [ClosingBonus], [SystemDate], [Attributes], [IsSync], [BranchCode], [Remarks], [LastModifiedDate], [IsDeleted], [LastSyncDate]) VALUES (10, CAST(N'2025-02-02T00:00:00.000' AS DateTime), 2, 2, N'Stock Transfer', CAST(20.000 AS Numeric(18, 3)), CAST(15.000 AS Numeric(18, 3)), CAST(6000.0000 AS Numeric(18, 4)), CAST(6000.0000 AS Numeric(18, 4)), 1, 0, 0, CAST(N'2025-02-02T18:53:36.000' AS DateTime), N'-1', NULL, CAST(1 AS Numeric(18, 0)), N'', NULL, NULL, NULL)
GO
INSERT [dbo].[InventoryLedger] ([ID], [TranDate], [ProductCode], [SourceID], [Source], [OpeningQuantity], [ClosingQuantity], [OpeningValue], [ClosingValue], [CompanyCode], [OpeningBonus], [ClosingBonus], [SystemDate], [Attributes], [IsSync], [BranchCode], [Remarks], [LastModifiedDate], [IsDeleted], [LastSyncDate]) VALUES (11, CAST(N'2025-02-02T00:00:00.000' AS DateTime), 2, 2, N'Stock Receive', CAST(0.000 AS Numeric(18, 3)), CAST(5.000 AS Numeric(18, 3)), CAST(6000.0000 AS Numeric(18, 4)), CAST(6000.0000 AS Numeric(18, 4)), 1, 0, 0, CAST(N'2025-02-02T18:53:36.000' AS DateTime), N'-1', NULL, CAST(2 AS Numeric(18, 0)), N'', NULL, NULL, NULL)
GO
INSERT [dbo].[InventoryLedger] ([ID], [TranDate], [ProductCode], [SourceID], [Source], [OpeningQuantity], [ClosingQuantity], [OpeningValue], [ClosingValue], [CompanyCode], [OpeningBonus], [ClosingBonus], [SystemDate], [Attributes], [IsSync], [BranchCode], [Remarks], [LastModifiedDate], [IsDeleted], [LastSyncDate]) VALUES (12, CAST(N'2025-02-02T19:02:55.000' AS DateTime), 1, 1, N'Sale Invoice', CAST(25.000 AS Numeric(18, 3)), CAST(24.000 AS Numeric(18, 3)), CAST(5000.0000 AS Numeric(18, 4)), CAST(4800.0000 AS Numeric(18, 4)), 1, 0, 0, CAST(N'2025-02-02T19:02:55.000' AS DateTime), N'-1', NULL, CAST(1 AS Numeric(18, 0)), N'', NULL, NULL, NULL)
GO
INSERT [dbo].[InventoryLedger] ([ID], [TranDate], [ProductCode], [SourceID], [Source], [OpeningQuantity], [ClosingQuantity], [OpeningValue], [ClosingValue], [CompanyCode], [OpeningBonus], [ClosingBonus], [SystemDate], [Attributes], [IsSync], [BranchCode], [Remarks], [LastModifiedDate], [IsDeleted], [LastSyncDate]) VALUES (13, CAST(N'2025-02-02T19:02:55.000' AS DateTime), 2, 1, N'Sale Invoice', CAST(15.000 AS Numeric(18, 3)), CAST(-35.000 AS Numeric(18, 3)), CAST(6000.0000 AS Numeric(18, 4)), CAST(-14000.0000 AS Numeric(18, 4)), 1, 0, 0, CAST(N'2025-02-02T19:02:55.000' AS DateTime), N'-1', NULL, CAST(1 AS Numeric(18, 0)), N'', NULL, NULL, NULL)
GO
INSERT [dbo].[InventoryLedger] ([ID], [TranDate], [ProductCode], [SourceID], [Source], [OpeningQuantity], [ClosingQuantity], [OpeningValue], [ClosingValue], [CompanyCode], [OpeningBonus], [ClosingBonus], [SystemDate], [Attributes], [IsSync], [BranchCode], [Remarks], [LastModifiedDate], [IsDeleted], [LastSyncDate]) VALUES (14, CAST(N'2025-02-02T19:12:14.000' AS DateTime), 1, 2, N'Sale Invoice', CAST(24.000 AS Numeric(18, 3)), CAST(23.000 AS Numeric(18, 3)), CAST(4800.0000 AS Numeric(18, 4)), CAST(4600.0000 AS Numeric(18, 4)), 1, 0, 0, CAST(N'2025-02-02T19:12:15.000' AS DateTime), N'-1', NULL, CAST(1 AS Numeric(18, 0)), N'', NULL, NULL, NULL)
GO
INSERT [dbo].[InventoryLedger] ([ID], [TranDate], [ProductCode], [SourceID], [Source], [OpeningQuantity], [ClosingQuantity], [OpeningValue], [ClosingValue], [CompanyCode], [OpeningBonus], [ClosingBonus], [SystemDate], [Attributes], [IsSync], [BranchCode], [Remarks], [LastModifiedDate], [IsDeleted], [LastSyncDate]) VALUES (15, CAST(N'2025-02-02T19:12:14.000' AS DateTime), 2, 2, N'Sale Invoice', CAST(-35.000 AS Numeric(18, 3)), CAST(-85.000 AS Numeric(18, 3)), CAST(-14000.0000 AS Numeric(18, 4)), CAST(-14250.0000 AS Numeric(18, 4)), 1, 0, 0, CAST(N'2025-02-02T19:12:15.000' AS DateTime), N'-1', NULL, CAST(1 AS Numeric(18, 0)), N'', NULL, NULL, NULL)
GO
INSERT [dbo].[InventoryLedger] ([ID], [TranDate], [ProductCode], [SourceID], [Source], [OpeningQuantity], [ClosingQuantity], [OpeningValue], [ClosingValue], [CompanyCode], [OpeningBonus], [ClosingBonus], [SystemDate], [Attributes], [IsSync], [BranchCode], [Remarks], [LastModifiedDate], [IsDeleted], [LastSyncDate]) VALUES (16, CAST(N'2025-02-02T19:12:53.000' AS DateTime), 1, 3, N'Sale Invoice', CAST(23.000 AS Numeric(18, 3)), CAST(24.000 AS Numeric(18, 3)), CAST(4600.0000 AS Numeric(18, 4)), CAST(4800.0000 AS Numeric(18, 4)), 1, 0, 0, CAST(N'2025-02-02T19:12:53.000' AS DateTime), N'-1', NULL, CAST(1 AS Numeric(18, 0)), N'', NULL, NULL, NULL)
GO
INSERT [dbo].[InventoryLedger] ([ID], [TranDate], [ProductCode], [SourceID], [Source], [OpeningQuantity], [ClosingQuantity], [OpeningValue], [ClosingValue], [CompanyCode], [OpeningBonus], [ClosingBonus], [SystemDate], [Attributes], [IsSync], [BranchCode], [Remarks], [LastModifiedDate], [IsDeleted], [LastSyncDate]) VALUES (17, CAST(N'2025-02-02T19:12:53.000' AS DateTime), 2, 3, N'Sale Invoice', CAST(-85.000 AS Numeric(18, 3)), CAST(-35.000 AS Numeric(18, 3)), CAST(-14250.0000 AS Numeric(18, 4)), CAST(-14000.0000 AS Numeric(18, 4)), 1, 0, 0, CAST(N'2025-02-02T19:12:53.000' AS DateTime), N'-1', NULL, CAST(1 AS Numeric(18, 0)), N'', NULL, NULL, NULL)
GO
INSERT [dbo].[InventoryLedger] ([ID], [TranDate], [ProductCode], [SourceID], [Source], [OpeningQuantity], [ClosingQuantity], [OpeningValue], [ClosingValue], [CompanyCode], [OpeningBonus], [ClosingBonus], [SystemDate], [Attributes], [IsSync], [BranchCode], [Remarks], [LastModifiedDate], [IsDeleted], [LastSyncDate]) VALUES (18, CAST(N'2025-02-02T19:15:30.000' AS DateTime), 1, 4, N'Sale Invoice', CAST(24.000 AS Numeric(18, 3)), CAST(23.000 AS Numeric(18, 3)), CAST(4800.0000 AS Numeric(18, 4)), CAST(4600.0000 AS Numeric(18, 4)), 1, 0, 0, CAST(N'2025-02-02T19:15:31.000' AS DateTime), N'-1', NULL, CAST(1 AS Numeric(18, 0)), N'', NULL, NULL, NULL)
GO
INSERT [dbo].[InventoryLedger] ([ID], [TranDate], [ProductCode], [SourceID], [Source], [OpeningQuantity], [ClosingQuantity], [OpeningValue], [ClosingValue], [CompanyCode], [OpeningBonus], [ClosingBonus], [SystemDate], [Attributes], [IsSync], [BranchCode], [Remarks], [LastModifiedDate], [IsDeleted], [LastSyncDate]) VALUES (19, CAST(N'2025-02-02T19:15:56.000' AS DateTime), -1, 5, N'Sale Invoice', CAST(3.000 AS Numeric(18, 3)), CAST(0.000 AS Numeric(18, 3)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), 1, 0, 0, CAST(N'2025-02-02T19:15:56.000' AS DateTime), N'0', NULL, CAST(1 AS Numeric(18, 0)), N'', NULL, NULL, NULL)
GO
INSERT [dbo].[InventoryLedger] ([ID], [TranDate], [ProductCode], [SourceID], [Source], [OpeningQuantity], [ClosingQuantity], [OpeningValue], [ClosingValue], [CompanyCode], [OpeningBonus], [ClosingBonus], [SystemDate], [Attributes], [IsSync], [BranchCode], [Remarks], [LastModifiedDate], [IsDeleted], [LastSyncDate]) VALUES (20, CAST(N'2025-02-02T19:15:56.000' AS DateTime), 2, 5, N'Sale Invoice', CAST(-35.000 AS Numeric(18, 3)), CAST(-135.000 AS Numeric(18, 3)), CAST(-14000.0000 AS Numeric(18, 4)), CAST(-14400.0000 AS Numeric(18, 4)), 1, 0, 0, CAST(N'2025-02-02T19:15:56.000' AS DateTime), N'-1', NULL, CAST(1 AS Numeric(18, 0)), N'', NULL, NULL, NULL)
GO
INSERT [dbo].[InventoryLedger] ([ID], [TranDate], [ProductCode], [SourceID], [Source], [OpeningQuantity], [ClosingQuantity], [OpeningValue], [ClosingValue], [CompanyCode], [OpeningBonus], [ClosingBonus], [SystemDate], [Attributes], [IsSync], [BranchCode], [Remarks], [LastModifiedDate], [IsDeleted], [LastSyncDate]) VALUES (21, CAST(N'2025-02-02T00:00:00.000' AS DateTime), 1, 3, N'Stock Transfer', CAST(23.000 AS Numeric(18, 3)), CAST(22.000 AS Numeric(18, 3)), CAST(4600.0000 AS Numeric(18, 4)), CAST(4400.0000 AS Numeric(18, 4)), 1, 0, 0, CAST(N'2025-02-02T19:54:27.000' AS DateTime), N'-1', NULL, CAST(1 AS Numeric(18, 0)), N'', NULL, NULL, NULL)
GO
INSERT [dbo].[InventoryLedger] ([ID], [TranDate], [ProductCode], [SourceID], [Source], [OpeningQuantity], [ClosingQuantity], [OpeningValue], [ClosingValue], [CompanyCode], [OpeningBonus], [ClosingBonus], [SystemDate], [Attributes], [IsSync], [BranchCode], [Remarks], [LastModifiedDate], [IsDeleted], [LastSyncDate]) VALUES (22, CAST(N'2025-02-02T00:00:00.000' AS DateTime), 1, 3, N'Stock Receive', CAST(5.000 AS Numeric(18, 3)), CAST(6.000 AS Numeric(18, 3)), CAST(4600.0000 AS Numeric(18, 4)), CAST(4800.0000 AS Numeric(18, 4)), 1, 0, 0, CAST(N'2025-02-02T19:54:36.000' AS DateTime), N'-1', NULL, CAST(2 AS Numeric(18, 0)), N'', NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[InventoryLedger] OFF
GO
SET IDENTITY_INSERT [dbo].[ItemAttributesCurrentStock] ON 
GO
INSERT [dbo].[ItemAttributesCurrentStock] ([Code], [ProductCode], [Attributes], [Stock], [CurrentValue], [InventoryAccountCode], [COGSAccountCode], [IncomeAccountCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (5, 2, N'-1', CAST(20.000 AS Numeric(18, 3)), CAST(6000.00 AS Numeric(18, 2)), N'N', N'N', N'N', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ItemAttributesCurrentStock] ([Code], [ProductCode], [Attributes], [Stock], [CurrentValue], [InventoryAccountCode], [COGSAccountCode], [IncomeAccountCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (6, 1, N'-1', CAST(50.000 AS Numeric(18, 3)), CAST(10000.00 AS Numeric(18, 2)), N'N', N'N', N'N', NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[ItemAttributesCurrentStock] OFF
GO
SET IDENTITY_INSERT [dbo].[ItemAttributesStockDetail] ON 
GO
INSERT [dbo].[ItemAttributesStockDetail] ([Code], [ProductCode], [RowID], [Attributes], [SourceID], [Source], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (5, 2, 1, N'-1', CAST(1 AS Numeric(18, 0)), N'Purchase Bill', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ItemAttributesStockDetail] ([Code], [ProductCode], [RowID], [Attributes], [SourceID], [Source], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (6, 1, 2, N'-1', CAST(1 AS Numeric(18, 0)), N'Purchase Bill', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ItemAttributesStockDetail] ([Code], [ProductCode], [RowID], [Attributes], [SourceID], [Source], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (7, 1, 1, N'-1', CAST(0 AS Numeric(18, 0)), N'Stock Transfer', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ItemAttributesStockDetail] ([Code], [ProductCode], [RowID], [Attributes], [SourceID], [Source], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (8, 2, 2, N'-1', CAST(0 AS Numeric(18, 0)), N'Stock Transfer', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ItemAttributesStockDetail] ([Code], [ProductCode], [RowID], [Attributes], [SourceID], [Source], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (9, 1, 1, N'-1', CAST(0 AS Numeric(18, 0)), N'Stock Transfer', NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[ItemAttributesStockDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Journal] ON 
GO
INSERT [dbo].[Journal] ([EntryID], [TransactionID], [EntryDate], [Source], [SourceID], [AccountCode], [CardID], [ItemID], [ItemQuantity], [SupplierPurchaseID], [CustomerPurchaseID], [PDCPayableID], [PDCReceivableID], [Description], [DebitAmount], [CreditAmount], [OpeningBalance], [ClosingBalance], [CompanyCode], [SystemDate], [Attributes], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [OperationType]) VALUES (1, CAST(1 AS Numeric(10, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'Purchase Bill', CAST(1 AS Numeric(10, 0)), N'002-004-001', CAST(1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1.000 AS Numeric(18, 3)), CAST(1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), N'Purchase Bill # 1', CAST(0.0000 AS Numeric(18, 4)), CAST(16000.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(16000.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T18:27:30.000' AS DateTime), N'', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Journal] ([EntryID], [TransactionID], [EntryDate], [Source], [SourceID], [AccountCode], [CardID], [ItemID], [ItemQuantity], [SupplierPurchaseID], [CustomerPurchaseID], [PDCPayableID], [PDCReceivableID], [Description], [DebitAmount], [CreditAmount], [OpeningBalance], [ClosingBalance], [CompanyCode], [SystemDate], [Attributes], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [OperationType]) VALUES (2, CAST(1 AS Numeric(10, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'Purchase Bill', CAST(1 AS Numeric(10, 0)), N'001-004', CAST(1 AS Numeric(10, 0)), CAST(2 AS Numeric(10, 0)), CAST(20.000 AS Numeric(18, 3)), CAST(1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), N'Purchase Bill # 1', CAST(6000.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(6000.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T18:27:30.000' AS DateTime), N'', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Journal] ([EntryID], [TransactionID], [EntryDate], [Source], [SourceID], [AccountCode], [CardID], [ItemID], [ItemQuantity], [SupplierPurchaseID], [CustomerPurchaseID], [PDCPayableID], [PDCReceivableID], [Description], [DebitAmount], [CreditAmount], [OpeningBalance], [ClosingBalance], [CompanyCode], [SystemDate], [Attributes], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [OperationType]) VALUES (3, CAST(1 AS Numeric(10, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'Purchase Bill', CAST(1 AS Numeric(10, 0)), N'001-004', CAST(1 AS Numeric(10, 0)), CAST(1 AS Numeric(10, 0)), CAST(50.000 AS Numeric(18, 3)), CAST(1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), N'Purchase Bill # 1', CAST(10000.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(6000.0000 AS Numeric(18, 4)), CAST(16000.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T18:27:30.000' AS DateTime), N'', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Journal] ([EntryID], [TransactionID], [EntryDate], [Source], [SourceID], [AccountCode], [CardID], [ItemID], [ItemQuantity], [SupplierPurchaseID], [CustomerPurchaseID], [PDCPayableID], [PDCReceivableID], [Description], [DebitAmount], [CreditAmount], [OpeningBalance], [ClosingBalance], [CompanyCode], [SystemDate], [Attributes], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [OperationType]) VALUES (4, CAST(2 AS Numeric(10, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'Purchase Return', CAST(1 AS Numeric(10, 0)), N'002-004-001', CAST(1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1.000 AS Numeric(18, 3)), CAST(1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), N'Purchase Return # 1', CAST(4000.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(16000.0000 AS Numeric(18, 4)), CAST(12000.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T18:30:15.000' AS DateTime), N'', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Journal] ([EntryID], [TransactionID], [EntryDate], [Source], [SourceID], [AccountCode], [CardID], [ItemID], [ItemQuantity], [SupplierPurchaseID], [CustomerPurchaseID], [PDCPayableID], [PDCReceivableID], [Description], [DebitAmount], [CreditAmount], [OpeningBalance], [ClosingBalance], [CompanyCode], [SystemDate], [Attributes], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [OperationType]) VALUES (5, CAST(2 AS Numeric(10, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'Purchase Return', CAST(1 AS Numeric(10, 0)), N'001-004', CAST(1 AS Numeric(10, 0)), CAST(1 AS Numeric(10, 0)), CAST(20.000 AS Numeric(18, 3)), CAST(1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), N'Purchase Return # 1', CAST(0.0000 AS Numeric(18, 4)), CAST(4000.0000 AS Numeric(18, 4)), CAST(16000.0000 AS Numeric(18, 4)), CAST(12000.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T18:30:15.000' AS DateTime), N'', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Journal] ([EntryID], [TransactionID], [EntryDate], [Source], [SourceID], [AccountCode], [CardID], [ItemID], [ItemQuantity], [SupplierPurchaseID], [CustomerPurchaseID], [PDCPayableID], [PDCReceivableID], [Description], [DebitAmount], [CreditAmount], [OpeningBalance], [ClosingBalance], [CompanyCode], [SystemDate], [Attributes], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [OperationType]) VALUES (6, CAST(3 AS Numeric(10, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'Supplier Payment Voucher', CAST(1 AS Numeric(10, 0)), N'001-001', CAST(1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1.000 AS Numeric(18, 3)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), N'Payment Voucher # 1', CAST(0.0000 AS Numeric(18, 4)), CAST(1000.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(-1000.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T18:36:11.000' AS DateTime), N'', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Journal] ([EntryID], [TransactionID], [EntryDate], [Source], [SourceID], [AccountCode], [CardID], [ItemID], [ItemQuantity], [SupplierPurchaseID], [CustomerPurchaseID], [PDCPayableID], [PDCReceivableID], [Description], [DebitAmount], [CreditAmount], [OpeningBalance], [ClosingBalance], [CompanyCode], [SystemDate], [Attributes], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [OperationType]) VALUES (7, CAST(3 AS Numeric(10, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'Supplier Payment Voucher', CAST(1 AS Numeric(10, 0)), N'002-004-001', CAST(1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1.000 AS Numeric(18, 3)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), N'Payment Voucher # 1', CAST(1000.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(12000.0000 AS Numeric(18, 4)), CAST(11000.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T18:36:11.000' AS DateTime), N'', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Journal] ([EntryID], [TransactionID], [EntryDate], [Source], [SourceID], [AccountCode], [CardID], [ItemID], [ItemQuantity], [SupplierPurchaseID], [CustomerPurchaseID], [PDCPayableID], [PDCReceivableID], [Description], [DebitAmount], [CreditAmount], [OpeningBalance], [ClosingBalance], [CompanyCode], [SystemDate], [Attributes], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [OperationType]) VALUES (8, CAST(1 AS Numeric(10, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'Supplier Payment Voucher', CAST(2 AS Numeric(10, 0)), N'001-001', CAST(1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1.000 AS Numeric(18, 3)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), N'Payment Voucher # 2', CAST(0.0000 AS Numeric(18, 4)), CAST(1000.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T18:36:24.000' AS DateTime), N'', NULL, CAST(2 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Journal] ([EntryID], [TransactionID], [EntryDate], [Source], [SourceID], [AccountCode], [CardID], [ItemID], [ItemQuantity], [SupplierPurchaseID], [CustomerPurchaseID], [PDCPayableID], [PDCReceivableID], [Description], [DebitAmount], [CreditAmount], [OpeningBalance], [ClosingBalance], [CompanyCode], [SystemDate], [Attributes], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [OperationType]) VALUES (9, CAST(1 AS Numeric(10, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'Supplier Payment Voucher', CAST(2 AS Numeric(10, 0)), N'002-004-001', CAST(1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1.000 AS Numeric(18, 3)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), N'Payment Voucher # 2', CAST(1000.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T18:36:24.000' AS DateTime), N'', NULL, CAST(2 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Journal] ([EntryID], [TransactionID], [EntryDate], [Source], [SourceID], [AccountCode], [CardID], [ItemID], [ItemQuantity], [SupplierPurchaseID], [CustomerPurchaseID], [PDCPayableID], [PDCReceivableID], [Description], [DebitAmount], [CreditAmount], [OpeningBalance], [ClosingBalance], [CompanyCode], [SystemDate], [Attributes], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [OperationType]) VALUES (10, CAST(4 AS Numeric(10, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'Supplier Payment Voucher', CAST(3 AS Numeric(10, 0)), N'001-001', CAST(1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1.000 AS Numeric(18, 3)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), N'Payment Voucher # 3', CAST(0.0000 AS Numeric(18, 4)), CAST(500.0000 AS Numeric(18, 4)), CAST(-1000.0000 AS Numeric(18, 4)), CAST(-1500.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T18:37:13.000' AS DateTime), N'', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Journal] ([EntryID], [TransactionID], [EntryDate], [Source], [SourceID], [AccountCode], [CardID], [ItemID], [ItemQuantity], [SupplierPurchaseID], [CustomerPurchaseID], [PDCPayableID], [PDCReceivableID], [Description], [DebitAmount], [CreditAmount], [OpeningBalance], [ClosingBalance], [CompanyCode], [SystemDate], [Attributes], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [OperationType]) VALUES (11, CAST(4 AS Numeric(10, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'Supplier Payment Voucher', CAST(3 AS Numeric(10, 0)), N'002-004-001', CAST(1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1.000 AS Numeric(18, 3)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), N'Payment Voucher # 3', CAST(500.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(11000.0000 AS Numeric(18, 4)), CAST(10500.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T18:37:13.000' AS DateTime), N'', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Journal] ([EntryID], [TransactionID], [EntryDate], [Source], [SourceID], [AccountCode], [CardID], [ItemID], [ItemQuantity], [SupplierPurchaseID], [CustomerPurchaseID], [PDCPayableID], [PDCReceivableID], [Description], [DebitAmount], [CreditAmount], [OpeningBalance], [ClosingBalance], [CompanyCode], [SystemDate], [Attributes], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [OperationType]) VALUES (12, CAST(5 AS Numeric(10, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'Stock Transfer', CAST(2 AS Numeric(10, 0)), N'', CAST(-1 AS Numeric(10, 0)), CAST(1 AS Numeric(10, 0)), CAST(5.000 AS Numeric(18, 3)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), N'Stock Transfer # 2', CAST(0.0000 AS Numeric(18, 4)), CAST(1000.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T18:53:36.000' AS DateTime), N'1', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Journal] ([EntryID], [TransactionID], [EntryDate], [Source], [SourceID], [AccountCode], [CardID], [ItemID], [ItemQuantity], [SupplierPurchaseID], [CustomerPurchaseID], [PDCPayableID], [PDCReceivableID], [Description], [DebitAmount], [CreditAmount], [OpeningBalance], [ClosingBalance], [CompanyCode], [SystemDate], [Attributes], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [OperationType]) VALUES (13, CAST(5 AS Numeric(10, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'Stock Transfer', CAST(2 AS Numeric(10, 0)), N'', CAST(-1 AS Numeric(10, 0)), CAST(1 AS Numeric(10, 0)), CAST(5.000 AS Numeric(18, 3)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), N'Stock Transfer # 2', CAST(1000.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T18:53:36.000' AS DateTime), N'1', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Journal] ([EntryID], [TransactionID], [EntryDate], [Source], [SourceID], [AccountCode], [CardID], [ItemID], [ItemQuantity], [SupplierPurchaseID], [CustomerPurchaseID], [PDCPayableID], [PDCReceivableID], [Description], [DebitAmount], [CreditAmount], [OpeningBalance], [ClosingBalance], [CompanyCode], [SystemDate], [Attributes], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [OperationType]) VALUES (14, CAST(5 AS Numeric(10, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'Stock Transfer', CAST(2 AS Numeric(10, 0)), N'', CAST(-1 AS Numeric(10, 0)), CAST(2 AS Numeric(10, 0)), CAST(5.000 AS Numeric(18, 3)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), N'Stock Transfer # 2', CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T18:53:36.000' AS DateTime), N'1', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Journal] ([EntryID], [TransactionID], [EntryDate], [Source], [SourceID], [AccountCode], [CardID], [ItemID], [ItemQuantity], [SupplierPurchaseID], [CustomerPurchaseID], [PDCPayableID], [PDCReceivableID], [Description], [DebitAmount], [CreditAmount], [OpeningBalance], [ClosingBalance], [CompanyCode], [SystemDate], [Attributes], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [OperationType]) VALUES (15, CAST(5 AS Numeric(10, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'Stock Transfer', CAST(2 AS Numeric(10, 0)), N'', CAST(-1 AS Numeric(10, 0)), CAST(2 AS Numeric(10, 0)), CAST(5.000 AS Numeric(18, 3)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), N'Stock Transfer # 2', CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T18:53:36.000' AS DateTime), N'1', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Journal] ([EntryID], [TransactionID], [EntryDate], [Source], [SourceID], [AccountCode], [CardID], [ItemID], [ItemQuantity], [SupplierPurchaseID], [CustomerPurchaseID], [PDCPayableID], [PDCReceivableID], [Description], [DebitAmount], [CreditAmount], [OpeningBalance], [ClosingBalance], [CompanyCode], [SystemDate], [Attributes], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [OperationType]) VALUES (16, CAST(6 AS Numeric(10, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'Sale Invoice', CAST(1 AS Numeric(10, 0)), N'001-001', CAST(0 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1.000 AS Numeric(18, 3)), CAST(-1 AS Numeric(10, 0)), CAST(1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), N'Sale Invoice # 1', CAST(570.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(-1500.0000 AS Numeric(18, 4)), CAST(-930.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T19:02:55.000' AS DateTime), N'', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Journal] ([EntryID], [TransactionID], [EntryDate], [Source], [SourceID], [AccountCode], [CardID], [ItemID], [ItemQuantity], [SupplierPurchaseID], [CustomerPurchaseID], [PDCPayableID], [PDCReceivableID], [Description], [DebitAmount], [CreditAmount], [OpeningBalance], [ClosingBalance], [CompanyCode], [SystemDate], [Attributes], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [OperationType]) VALUES (17, CAST(6 AS Numeric(10, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'Sale Invoice', CAST(1 AS Numeric(10, 0)), N'001-004', CAST(0 AS Numeric(10, 0)), CAST(1 AS Numeric(10, 0)), CAST(1.000 AS Numeric(18, 3)), CAST(-1 AS Numeric(10, 0)), CAST(1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), N'Sale Invoice # 1', CAST(0.0000 AS Numeric(18, 4)), CAST(200.0000 AS Numeric(18, 4)), CAST(12000.0000 AS Numeric(18, 4)), CAST(11800.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T19:02:55.000' AS DateTime), N'', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Journal] ([EntryID], [TransactionID], [EntryDate], [Source], [SourceID], [AccountCode], [CardID], [ItemID], [ItemQuantity], [SupplierPurchaseID], [CustomerPurchaseID], [PDCPayableID], [PDCReceivableID], [Description], [DebitAmount], [CreditAmount], [OpeningBalance], [ClosingBalance], [CompanyCode], [SystemDate], [Attributes], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [OperationType]) VALUES (18, CAST(6 AS Numeric(10, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'Sale Invoice', CAST(1 AS Numeric(10, 0)), N'004-001', CAST(0 AS Numeric(10, 0)), CAST(1 AS Numeric(10, 0)), CAST(1.000 AS Numeric(18, 3)), CAST(-1 AS Numeric(10, 0)), CAST(1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), N'Sale Invoice # 1', CAST(0.0000 AS Numeric(18, 4)), CAST(285.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(285.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T19:02:55.000' AS DateTime), N'', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Journal] ([EntryID], [TransactionID], [EntryDate], [Source], [SourceID], [AccountCode], [CardID], [ItemID], [ItemQuantity], [SupplierPurchaseID], [CustomerPurchaseID], [PDCPayableID], [PDCReceivableID], [Description], [DebitAmount], [CreditAmount], [OpeningBalance], [ClosingBalance], [CompanyCode], [SystemDate], [Attributes], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [OperationType]) VALUES (19, CAST(6 AS Numeric(10, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'Sale Invoice', CAST(1 AS Numeric(10, 0)), N'005-001', CAST(0 AS Numeric(10, 0)), CAST(1 AS Numeric(10, 0)), CAST(1.000 AS Numeric(18, 3)), CAST(-1 AS Numeric(10, 0)), CAST(1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), N'Sale Invoice # 1', CAST(200.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(200.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T19:02:55.000' AS DateTime), N'', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Journal] ([EntryID], [TransactionID], [EntryDate], [Source], [SourceID], [AccountCode], [CardID], [ItemID], [ItemQuantity], [SupplierPurchaseID], [CustomerPurchaseID], [PDCPayableID], [PDCReceivableID], [Description], [DebitAmount], [CreditAmount], [OpeningBalance], [ClosingBalance], [CompanyCode], [SystemDate], [Attributes], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [OperationType]) VALUES (20, CAST(6 AS Numeric(10, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'Sale Invoice', CAST(1 AS Numeric(10, 0)), N'001-004', CAST(0 AS Numeric(10, 0)), CAST(2 AS Numeric(10, 0)), CAST(1.000 AS Numeric(18, 3)), CAST(-1 AS Numeric(10, 0)), CAST(1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), N'Sale Invoice # 1', CAST(0.0000 AS Numeric(18, 4)), CAST(20000.0000 AS Numeric(18, 4)), CAST(11800.0000 AS Numeric(18, 4)), CAST(-8200.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T19:02:55.000' AS DateTime), N'', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Journal] ([EntryID], [TransactionID], [EntryDate], [Source], [SourceID], [AccountCode], [CardID], [ItemID], [ItemQuantity], [SupplierPurchaseID], [CustomerPurchaseID], [PDCPayableID], [PDCReceivableID], [Description], [DebitAmount], [CreditAmount], [OpeningBalance], [ClosingBalance], [CompanyCode], [SystemDate], [Attributes], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [OperationType]) VALUES (21, CAST(6 AS Numeric(10, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'Sale Invoice', CAST(1 AS Numeric(10, 0)), N'004-001', CAST(0 AS Numeric(10, 0)), CAST(2 AS Numeric(10, 0)), CAST(1.000 AS Numeric(18, 3)), CAST(-1 AS Numeric(10, 0)), CAST(1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), N'Sale Invoice # 1', CAST(0.0000 AS Numeric(18, 4)), CAST(285.0000 AS Numeric(18, 4)), CAST(285.0000 AS Numeric(18, 4)), CAST(570.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T19:02:55.000' AS DateTime), N'', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Journal] ([EntryID], [TransactionID], [EntryDate], [Source], [SourceID], [AccountCode], [CardID], [ItemID], [ItemQuantity], [SupplierPurchaseID], [CustomerPurchaseID], [PDCPayableID], [PDCReceivableID], [Description], [DebitAmount], [CreditAmount], [OpeningBalance], [ClosingBalance], [CompanyCode], [SystemDate], [Attributes], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [OperationType]) VALUES (22, CAST(6 AS Numeric(10, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'Sale Invoice', CAST(1 AS Numeric(10, 0)), N'005-001', CAST(0 AS Numeric(10, 0)), CAST(2 AS Numeric(10, 0)), CAST(1.000 AS Numeric(18, 3)), CAST(-1 AS Numeric(10, 0)), CAST(1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), N'Sale Invoice # 1', CAST(20000.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(200.0000 AS Numeric(18, 4)), CAST(20200.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T19:02:55.000' AS DateTime), N'', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Journal] ([EntryID], [TransactionID], [EntryDate], [Source], [SourceID], [AccountCode], [CardID], [ItemID], [ItemQuantity], [SupplierPurchaseID], [CustomerPurchaseID], [PDCPayableID], [PDCReceivableID], [Description], [DebitAmount], [CreditAmount], [OpeningBalance], [ClosingBalance], [CompanyCode], [SystemDate], [Attributes], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [OperationType]) VALUES (23, CAST(7 AS Numeric(10, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'Sale Invoice', CAST(2 AS Numeric(10, 0)), N'001-001', CAST(0 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1.000 AS Numeric(18, 3)), CAST(-1 AS Numeric(10, 0)), CAST(2 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), N'Sale Invoice # 2', CAST(570.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(-930.0000 AS Numeric(18, 4)), CAST(-360.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T19:12:15.000' AS DateTime), N'', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Journal] ([EntryID], [TransactionID], [EntryDate], [Source], [SourceID], [AccountCode], [CardID], [ItemID], [ItemQuantity], [SupplierPurchaseID], [CustomerPurchaseID], [PDCPayableID], [PDCReceivableID], [Description], [DebitAmount], [CreditAmount], [OpeningBalance], [ClosingBalance], [CompanyCode], [SystemDate], [Attributes], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [OperationType]) VALUES (24, CAST(7 AS Numeric(10, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'Sale Invoice', CAST(2 AS Numeric(10, 0)), N'001-004', CAST(0 AS Numeric(10, 0)), CAST(1 AS Numeric(10, 0)), CAST(1.000 AS Numeric(18, 3)), CAST(-1 AS Numeric(10, 0)), CAST(2 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), N'Sale Invoice # 2', CAST(0.0000 AS Numeric(18, 4)), CAST(200.0000 AS Numeric(18, 4)), CAST(-8200.0000 AS Numeric(18, 4)), CAST(-8400.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T19:12:15.000' AS DateTime), N'', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Journal] ([EntryID], [TransactionID], [EntryDate], [Source], [SourceID], [AccountCode], [CardID], [ItemID], [ItemQuantity], [SupplierPurchaseID], [CustomerPurchaseID], [PDCPayableID], [PDCReceivableID], [Description], [DebitAmount], [CreditAmount], [OpeningBalance], [ClosingBalance], [CompanyCode], [SystemDate], [Attributes], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [OperationType]) VALUES (25, CAST(7 AS Numeric(10, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'Sale Invoice', CAST(2 AS Numeric(10, 0)), N'004-001', CAST(0 AS Numeric(10, 0)), CAST(1 AS Numeric(10, 0)), CAST(1.000 AS Numeric(18, 3)), CAST(-1 AS Numeric(10, 0)), CAST(2 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), N'Sale Invoice # 2', CAST(0.0000 AS Numeric(18, 4)), CAST(285.0000 AS Numeric(18, 4)), CAST(570.0000 AS Numeric(18, 4)), CAST(855.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T19:12:15.000' AS DateTime), N'', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Journal] ([EntryID], [TransactionID], [EntryDate], [Source], [SourceID], [AccountCode], [CardID], [ItemID], [ItemQuantity], [SupplierPurchaseID], [CustomerPurchaseID], [PDCPayableID], [PDCReceivableID], [Description], [DebitAmount], [CreditAmount], [OpeningBalance], [ClosingBalance], [CompanyCode], [SystemDate], [Attributes], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [OperationType]) VALUES (26, CAST(7 AS Numeric(10, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'Sale Invoice', CAST(2 AS Numeric(10, 0)), N'005-001', CAST(0 AS Numeric(10, 0)), CAST(1 AS Numeric(10, 0)), CAST(1.000 AS Numeric(18, 3)), CAST(-1 AS Numeric(10, 0)), CAST(2 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), N'Sale Invoice # 2', CAST(200.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(20200.0000 AS Numeric(18, 4)), CAST(20400.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T19:12:15.000' AS DateTime), N'', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Journal] ([EntryID], [TransactionID], [EntryDate], [Source], [SourceID], [AccountCode], [CardID], [ItemID], [ItemQuantity], [SupplierPurchaseID], [CustomerPurchaseID], [PDCPayableID], [PDCReceivableID], [Description], [DebitAmount], [CreditAmount], [OpeningBalance], [ClosingBalance], [CompanyCode], [SystemDate], [Attributes], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [OperationType]) VALUES (27, CAST(7 AS Numeric(10, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'Sale Invoice', CAST(2 AS Numeric(10, 0)), N'001-004', CAST(0 AS Numeric(10, 0)), CAST(2 AS Numeric(10, 0)), CAST(1.000 AS Numeric(18, 3)), CAST(-1 AS Numeric(10, 0)), CAST(2 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), N'Sale Invoice # 2', CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(-8400.0000 AS Numeric(18, 4)), CAST(-8400.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T19:12:15.000' AS DateTime), N'', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Journal] ([EntryID], [TransactionID], [EntryDate], [Source], [SourceID], [AccountCode], [CardID], [ItemID], [ItemQuantity], [SupplierPurchaseID], [CustomerPurchaseID], [PDCPayableID], [PDCReceivableID], [Description], [DebitAmount], [CreditAmount], [OpeningBalance], [ClosingBalance], [CompanyCode], [SystemDate], [Attributes], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [OperationType]) VALUES (28, CAST(7 AS Numeric(10, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'Sale Invoice', CAST(2 AS Numeric(10, 0)), N'004-001', CAST(0 AS Numeric(10, 0)), CAST(2 AS Numeric(10, 0)), CAST(1.000 AS Numeric(18, 3)), CAST(-1 AS Numeric(10, 0)), CAST(2 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), N'Sale Invoice # 2', CAST(0.0000 AS Numeric(18, 4)), CAST(285.0000 AS Numeric(18, 4)), CAST(855.0000 AS Numeric(18, 4)), CAST(1140.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T19:12:15.000' AS DateTime), N'', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Journal] ([EntryID], [TransactionID], [EntryDate], [Source], [SourceID], [AccountCode], [CardID], [ItemID], [ItemQuantity], [SupplierPurchaseID], [CustomerPurchaseID], [PDCPayableID], [PDCReceivableID], [Description], [DebitAmount], [CreditAmount], [OpeningBalance], [ClosingBalance], [CompanyCode], [SystemDate], [Attributes], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [OperationType]) VALUES (29, CAST(7 AS Numeric(10, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'Sale Invoice', CAST(2 AS Numeric(10, 0)), N'005-001', CAST(0 AS Numeric(10, 0)), CAST(2 AS Numeric(10, 0)), CAST(1.000 AS Numeric(18, 3)), CAST(-1 AS Numeric(10, 0)), CAST(2 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), N'Sale Invoice # 2', CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(20400.0000 AS Numeric(18, 4)), CAST(20400.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T19:12:15.000' AS DateTime), N'', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Journal] ([EntryID], [TransactionID], [EntryDate], [Source], [SourceID], [AccountCode], [CardID], [ItemID], [ItemQuantity], [SupplierPurchaseID], [CustomerPurchaseID], [PDCPayableID], [PDCReceivableID], [Description], [DebitAmount], [CreditAmount], [OpeningBalance], [ClosingBalance], [CompanyCode], [SystemDate], [Attributes], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [OperationType]) VALUES (30, CAST(8 AS Numeric(10, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'Sale Return', CAST(3 AS Numeric(10, 0)), N'001-001', CAST(0 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1.000 AS Numeric(18, 3)), CAST(-1 AS Numeric(10, 0)), CAST(3 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), N'Sale Return # 3', CAST(-570.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(-360.0000 AS Numeric(18, 4)), CAST(-930.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T19:12:53.000' AS DateTime), N'', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Journal] ([EntryID], [TransactionID], [EntryDate], [Source], [SourceID], [AccountCode], [CardID], [ItemID], [ItemQuantity], [SupplierPurchaseID], [CustomerPurchaseID], [PDCPayableID], [PDCReceivableID], [Description], [DebitAmount], [CreditAmount], [OpeningBalance], [ClosingBalance], [CompanyCode], [SystemDate], [Attributes], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [OperationType]) VALUES (31, CAST(8 AS Numeric(10, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'Sale Return', CAST(3 AS Numeric(10, 0)), N'001-001', CAST(0 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1.000 AS Numeric(18, 3)), CAST(-1 AS Numeric(10, 0)), CAST(3 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), N'Sale Return # 3', CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(-930.0000 AS Numeric(18, 4)), CAST(-930.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T19:12:53.000' AS DateTime), N'', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Journal] ([EntryID], [TransactionID], [EntryDate], [Source], [SourceID], [AccountCode], [CardID], [ItemID], [ItemQuantity], [SupplierPurchaseID], [CustomerPurchaseID], [PDCPayableID], [PDCReceivableID], [Description], [DebitAmount], [CreditAmount], [OpeningBalance], [ClosingBalance], [CompanyCode], [SystemDate], [Attributes], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [OperationType]) VALUES (32, CAST(8 AS Numeric(10, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'Sale Return', CAST(3 AS Numeric(10, 0)), N'005-003', CAST(0 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1.000 AS Numeric(18, 3)), CAST(-1 AS Numeric(10, 0)), CAST(3 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), N'Sale Return # 3', CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T19:12:53.000' AS DateTime), N'', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Journal] ([EntryID], [TransactionID], [EntryDate], [Source], [SourceID], [AccountCode], [CardID], [ItemID], [ItemQuantity], [SupplierPurchaseID], [CustomerPurchaseID], [PDCPayableID], [PDCReceivableID], [Description], [DebitAmount], [CreditAmount], [OpeningBalance], [ClosingBalance], [CompanyCode], [SystemDate], [Attributes], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [OperationType]) VALUES (33, CAST(8 AS Numeric(10, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'Sale Return', CAST(3 AS Numeric(10, 0)), N'001-004', CAST(0 AS Numeric(10, 0)), CAST(1 AS Numeric(10, 0)), CAST(-1.000 AS Numeric(18, 3)), CAST(-1 AS Numeric(10, 0)), CAST(3 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), N'Sale Return # 3', CAST(0.0000 AS Numeric(18, 4)), CAST(-200.0000 AS Numeric(18, 4)), CAST(-8400.0000 AS Numeric(18, 4)), CAST(-8200.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T19:12:53.000' AS DateTime), N'', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Journal] ([EntryID], [TransactionID], [EntryDate], [Source], [SourceID], [AccountCode], [CardID], [ItemID], [ItemQuantity], [SupplierPurchaseID], [CustomerPurchaseID], [PDCPayableID], [PDCReceivableID], [Description], [DebitAmount], [CreditAmount], [OpeningBalance], [ClosingBalance], [CompanyCode], [SystemDate], [Attributes], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [OperationType]) VALUES (34, CAST(8 AS Numeric(10, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'Sale Return', CAST(3 AS Numeric(10, 0)), N'004-001', CAST(0 AS Numeric(10, 0)), CAST(1 AS Numeric(10, 0)), CAST(-1.000 AS Numeric(18, 3)), CAST(-1 AS Numeric(10, 0)), CAST(3 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), N'Sale Return # 3', CAST(0.0000 AS Numeric(18, 4)), CAST(-285.0000 AS Numeric(18, 4)), CAST(1140.0000 AS Numeric(18, 4)), CAST(855.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T19:12:53.000' AS DateTime), N'', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Journal] ([EntryID], [TransactionID], [EntryDate], [Source], [SourceID], [AccountCode], [CardID], [ItemID], [ItemQuantity], [SupplierPurchaseID], [CustomerPurchaseID], [PDCPayableID], [PDCReceivableID], [Description], [DebitAmount], [CreditAmount], [OpeningBalance], [ClosingBalance], [CompanyCode], [SystemDate], [Attributes], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [OperationType]) VALUES (35, CAST(8 AS Numeric(10, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'Sale Return', CAST(3 AS Numeric(10, 0)), N'005-001', CAST(0 AS Numeric(10, 0)), CAST(1 AS Numeric(10, 0)), CAST(-1.000 AS Numeric(18, 3)), CAST(-1 AS Numeric(10, 0)), CAST(3 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), N'Sale Return # 3', CAST(-200.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(20400.0000 AS Numeric(18, 4)), CAST(20200.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T19:12:53.000' AS DateTime), N'', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Journal] ([EntryID], [TransactionID], [EntryDate], [Source], [SourceID], [AccountCode], [CardID], [ItemID], [ItemQuantity], [SupplierPurchaseID], [CustomerPurchaseID], [PDCPayableID], [PDCReceivableID], [Description], [DebitAmount], [CreditAmount], [OpeningBalance], [ClosingBalance], [CompanyCode], [SystemDate], [Attributes], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [OperationType]) VALUES (36, CAST(8 AS Numeric(10, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'Sale Return', CAST(3 AS Numeric(10, 0)), N'001-004', CAST(0 AS Numeric(10, 0)), CAST(2 AS Numeric(10, 0)), CAST(-1.000 AS Numeric(18, 3)), CAST(-1 AS Numeric(10, 0)), CAST(3 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), N'Sale Return # 3', CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(-8200.0000 AS Numeric(18, 4)), CAST(-8200.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T19:12:53.000' AS DateTime), N'', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Journal] ([EntryID], [TransactionID], [EntryDate], [Source], [SourceID], [AccountCode], [CardID], [ItemID], [ItemQuantity], [SupplierPurchaseID], [CustomerPurchaseID], [PDCPayableID], [PDCReceivableID], [Description], [DebitAmount], [CreditAmount], [OpeningBalance], [ClosingBalance], [CompanyCode], [SystemDate], [Attributes], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [OperationType]) VALUES (37, CAST(8 AS Numeric(10, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'Sale Return', CAST(3 AS Numeric(10, 0)), N'004-001', CAST(0 AS Numeric(10, 0)), CAST(2 AS Numeric(10, 0)), CAST(-1.000 AS Numeric(18, 3)), CAST(-1 AS Numeric(10, 0)), CAST(3 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), N'Sale Return # 3', CAST(0.0000 AS Numeric(18, 4)), CAST(-285.0000 AS Numeric(18, 4)), CAST(855.0000 AS Numeric(18, 4)), CAST(570.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T19:12:53.000' AS DateTime), N'', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Journal] ([EntryID], [TransactionID], [EntryDate], [Source], [SourceID], [AccountCode], [CardID], [ItemID], [ItemQuantity], [SupplierPurchaseID], [CustomerPurchaseID], [PDCPayableID], [PDCReceivableID], [Description], [DebitAmount], [CreditAmount], [OpeningBalance], [ClosingBalance], [CompanyCode], [SystemDate], [Attributes], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [OperationType]) VALUES (38, CAST(8 AS Numeric(10, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'Sale Return', CAST(3 AS Numeric(10, 0)), N'005-001', CAST(0 AS Numeric(10, 0)), CAST(2 AS Numeric(10, 0)), CAST(-1.000 AS Numeric(18, 3)), CAST(-1 AS Numeric(10, 0)), CAST(3 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), N'Sale Return # 3', CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(20200.0000 AS Numeric(18, 4)), CAST(20200.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T19:12:53.000' AS DateTime), N'', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Journal] ([EntryID], [TransactionID], [EntryDate], [Source], [SourceID], [AccountCode], [CardID], [ItemID], [ItemQuantity], [SupplierPurchaseID], [CustomerPurchaseID], [PDCPayableID], [PDCReceivableID], [Description], [DebitAmount], [CreditAmount], [OpeningBalance], [ClosingBalance], [CompanyCode], [SystemDate], [Attributes], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [OperationType]) VALUES (39, CAST(9 AS Numeric(10, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'Sale Invoice', CAST(4 AS Numeric(10, 0)), N'001-007-001', CAST(1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1.000 AS Numeric(18, 3)), CAST(-1 AS Numeric(10, 0)), CAST(4 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), N'Sale Invoice # 4', CAST(285.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(285.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T19:15:31.000' AS DateTime), N'', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Journal] ([EntryID], [TransactionID], [EntryDate], [Source], [SourceID], [AccountCode], [CardID], [ItemID], [ItemQuantity], [SupplierPurchaseID], [CustomerPurchaseID], [PDCPayableID], [PDCReceivableID], [Description], [DebitAmount], [CreditAmount], [OpeningBalance], [ClosingBalance], [CompanyCode], [SystemDate], [Attributes], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [OperationType]) VALUES (40, CAST(9 AS Numeric(10, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'Sale Invoice', CAST(4 AS Numeric(10, 0)), N'001-004', CAST(1 AS Numeric(10, 0)), CAST(1 AS Numeric(10, 0)), CAST(1.000 AS Numeric(18, 3)), CAST(-1 AS Numeric(10, 0)), CAST(4 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), N'Sale Invoice # 4', CAST(0.0000 AS Numeric(18, 4)), CAST(200.0000 AS Numeric(18, 4)), CAST(-8200.0000 AS Numeric(18, 4)), CAST(-8400.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T19:15:31.000' AS DateTime), N'', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Journal] ([EntryID], [TransactionID], [EntryDate], [Source], [SourceID], [AccountCode], [CardID], [ItemID], [ItemQuantity], [SupplierPurchaseID], [CustomerPurchaseID], [PDCPayableID], [PDCReceivableID], [Description], [DebitAmount], [CreditAmount], [OpeningBalance], [ClosingBalance], [CompanyCode], [SystemDate], [Attributes], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [OperationType]) VALUES (41, CAST(9 AS Numeric(10, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'Sale Invoice', CAST(4 AS Numeric(10, 0)), N'004-001', CAST(1 AS Numeric(10, 0)), CAST(1 AS Numeric(10, 0)), CAST(1.000 AS Numeric(18, 3)), CAST(-1 AS Numeric(10, 0)), CAST(4 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), N'Sale Invoice # 4', CAST(0.0000 AS Numeric(18, 4)), CAST(285.0000 AS Numeric(18, 4)), CAST(570.0000 AS Numeric(18, 4)), CAST(855.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T19:15:31.000' AS DateTime), N'', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Journal] ([EntryID], [TransactionID], [EntryDate], [Source], [SourceID], [AccountCode], [CardID], [ItemID], [ItemQuantity], [SupplierPurchaseID], [CustomerPurchaseID], [PDCPayableID], [PDCReceivableID], [Description], [DebitAmount], [CreditAmount], [OpeningBalance], [ClosingBalance], [CompanyCode], [SystemDate], [Attributes], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [OperationType]) VALUES (42, CAST(9 AS Numeric(10, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'Sale Invoice', CAST(4 AS Numeric(10, 0)), N'005-001', CAST(1 AS Numeric(10, 0)), CAST(1 AS Numeric(10, 0)), CAST(1.000 AS Numeric(18, 3)), CAST(-1 AS Numeric(10, 0)), CAST(4 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), N'Sale Invoice # 4', CAST(200.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(20200.0000 AS Numeric(18, 4)), CAST(20400.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T19:15:31.000' AS DateTime), N'', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Journal] ([EntryID], [TransactionID], [EntryDate], [Source], [SourceID], [AccountCode], [CardID], [ItemID], [ItemQuantity], [SupplierPurchaseID], [CustomerPurchaseID], [PDCPayableID], [PDCReceivableID], [Description], [DebitAmount], [CreditAmount], [OpeningBalance], [ClosingBalance], [CompanyCode], [SystemDate], [Attributes], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [OperationType]) VALUES (43, CAST(10 AS Numeric(10, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'Sale Invoice', CAST(5 AS Numeric(10, 0)), N'001-001', CAST(0 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1.000 AS Numeric(18, 3)), CAST(-1 AS Numeric(10, 0)), CAST(5 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), N'Sale Invoice # 5', CAST(6475.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(-930.0000 AS Numeric(18, 4)), CAST(5545.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T19:15:56.000' AS DateTime), N'', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Journal] ([EntryID], [TransactionID], [EntryDate], [Source], [SourceID], [AccountCode], [CardID], [ItemID], [ItemQuantity], [SupplierPurchaseID], [CustomerPurchaseID], [PDCPayableID], [PDCReceivableID], [Description], [DebitAmount], [CreditAmount], [OpeningBalance], [ClosingBalance], [CompanyCode], [SystemDate], [Attributes], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [OperationType]) VALUES (44, CAST(10 AS Numeric(10, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'Sale Invoice', CAST(5 AS Numeric(10, 0)), N'001-004', CAST(0 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(3.000 AS Numeric(18, 3)), CAST(-1 AS Numeric(10, 0)), CAST(5 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), N'Sale Invoice # 5', CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(-8400.0000 AS Numeric(18, 4)), CAST(-8400.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T19:15:56.000' AS DateTime), N'', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Journal] ([EntryID], [TransactionID], [EntryDate], [Source], [SourceID], [AccountCode], [CardID], [ItemID], [ItemQuantity], [SupplierPurchaseID], [CustomerPurchaseID], [PDCPayableID], [PDCReceivableID], [Description], [DebitAmount], [CreditAmount], [OpeningBalance], [ClosingBalance], [CompanyCode], [SystemDate], [Attributes], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [OperationType]) VALUES (45, CAST(10 AS Numeric(10, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'Sale Invoice', CAST(5 AS Numeric(10, 0)), N'004-001', CAST(0 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(3.000 AS Numeric(18, 3)), CAST(-1 AS Numeric(10, 0)), CAST(5 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), N'Sale Invoice # 5', CAST(0.0000 AS Numeric(18, 4)), CAST(6000.0000 AS Numeric(18, 4)), CAST(855.0000 AS Numeric(18, 4)), CAST(6855.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T19:15:56.000' AS DateTime), N'', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Journal] ([EntryID], [TransactionID], [EntryDate], [Source], [SourceID], [AccountCode], [CardID], [ItemID], [ItemQuantity], [SupplierPurchaseID], [CustomerPurchaseID], [PDCPayableID], [PDCReceivableID], [Description], [DebitAmount], [CreditAmount], [OpeningBalance], [ClosingBalance], [CompanyCode], [SystemDate], [Attributes], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [OperationType]) VALUES (46, CAST(10 AS Numeric(10, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'Sale Invoice', CAST(5 AS Numeric(10, 0)), N'005-001', CAST(0 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(3.000 AS Numeric(18, 3)), CAST(-1 AS Numeric(10, 0)), CAST(5 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), N'Sale Invoice # 5', CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(20400.0000 AS Numeric(18, 4)), CAST(20400.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T19:15:56.000' AS DateTime), N'', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Journal] ([EntryID], [TransactionID], [EntryDate], [Source], [SourceID], [AccountCode], [CardID], [ItemID], [ItemQuantity], [SupplierPurchaseID], [CustomerPurchaseID], [PDCPayableID], [PDCReceivableID], [Description], [DebitAmount], [CreditAmount], [OpeningBalance], [ClosingBalance], [CompanyCode], [SystemDate], [Attributes], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [OperationType]) VALUES (47, CAST(10 AS Numeric(10, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'Sale Invoice', CAST(5 AS Numeric(10, 0)), N'001-004', CAST(0 AS Numeric(10, 0)), CAST(2 AS Numeric(10, 0)), CAST(1.000 AS Numeric(18, 3)), CAST(-1 AS Numeric(10, 0)), CAST(5 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), N'Sale Invoice # 5', CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(-8400.0000 AS Numeric(18, 4)), CAST(-8400.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T19:15:56.000' AS DateTime), N'', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Journal] ([EntryID], [TransactionID], [EntryDate], [Source], [SourceID], [AccountCode], [CardID], [ItemID], [ItemQuantity], [SupplierPurchaseID], [CustomerPurchaseID], [PDCPayableID], [PDCReceivableID], [Description], [DebitAmount], [CreditAmount], [OpeningBalance], [ClosingBalance], [CompanyCode], [SystemDate], [Attributes], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [OperationType]) VALUES (48, CAST(10 AS Numeric(10, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'Sale Invoice', CAST(5 AS Numeric(10, 0)), N'004-001', CAST(0 AS Numeric(10, 0)), CAST(2 AS Numeric(10, 0)), CAST(1.000 AS Numeric(18, 3)), CAST(-1 AS Numeric(10, 0)), CAST(5 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), N'Sale Invoice # 5', CAST(0.0000 AS Numeric(18, 4)), CAST(475.0000 AS Numeric(18, 4)), CAST(6855.0000 AS Numeric(18, 4)), CAST(7330.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T19:15:56.000' AS DateTime), N'', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Journal] ([EntryID], [TransactionID], [EntryDate], [Source], [SourceID], [AccountCode], [CardID], [ItemID], [ItemQuantity], [SupplierPurchaseID], [CustomerPurchaseID], [PDCPayableID], [PDCReceivableID], [Description], [DebitAmount], [CreditAmount], [OpeningBalance], [ClosingBalance], [CompanyCode], [SystemDate], [Attributes], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [OperationType]) VALUES (49, CAST(10 AS Numeric(10, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'Sale Invoice', CAST(5 AS Numeric(10, 0)), N'005-001', CAST(0 AS Numeric(10, 0)), CAST(2 AS Numeric(10, 0)), CAST(1.000 AS Numeric(18, 3)), CAST(-1 AS Numeric(10, 0)), CAST(5 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), N'Sale Invoice # 5', CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(20400.0000 AS Numeric(18, 4)), CAST(20400.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T19:15:56.000' AS DateTime), N'', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Journal] ([EntryID], [TransactionID], [EntryDate], [Source], [SourceID], [AccountCode], [CardID], [ItemID], [ItemQuantity], [SupplierPurchaseID], [CustomerPurchaseID], [PDCPayableID], [PDCReceivableID], [Description], [DebitAmount], [CreditAmount], [OpeningBalance], [ClosingBalance], [CompanyCode], [SystemDate], [Attributes], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [OperationType]) VALUES (50, CAST(11 AS Numeric(10, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'Monthly Expenses', CAST(1 AS Numeric(10, 0)), N'001-001', CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1.000 AS Numeric(18, 3)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), N'Expense # 1', CAST(0.0000 AS Numeric(18, 4)), CAST(4000.0000 AS Numeric(18, 4)), CAST(5545.0000 AS Numeric(18, 4)), CAST(1545.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T19:26:27.000' AS DateTime), N'', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Journal] ([EntryID], [TransactionID], [EntryDate], [Source], [SourceID], [AccountCode], [CardID], [ItemID], [ItemQuantity], [SupplierPurchaseID], [CustomerPurchaseID], [PDCPayableID], [PDCReceivableID], [Description], [DebitAmount], [CreditAmount], [OpeningBalance], [ClosingBalance], [CompanyCode], [SystemDate], [Attributes], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [OperationType]) VALUES (51, CAST(11 AS Numeric(10, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'Monthly Expenses', CAST(1 AS Numeric(10, 0)), N'005-005', CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1.000 AS Numeric(18, 3)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), N'Expense # 1', CAST(4000.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(4000.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T19:26:27.000' AS DateTime), N'', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Journal] ([EntryID], [TransactionID], [EntryDate], [Source], [SourceID], [AccountCode], [CardID], [ItemID], [ItemQuantity], [SupplierPurchaseID], [CustomerPurchaseID], [PDCPayableID], [PDCReceivableID], [Description], [DebitAmount], [CreditAmount], [OpeningBalance], [ClosingBalance], [CompanyCode], [SystemDate], [Attributes], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [OperationType]) VALUES (52, CAST(12 AS Numeric(10, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'Daily Expenses', CAST(1 AS Numeric(10, 0)), N'001-001', CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1.000 AS Numeric(18, 3)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), N'Expense # 1', CAST(0.0000 AS Numeric(18, 4)), CAST(200.0000 AS Numeric(18, 4)), CAST(1545.0000 AS Numeric(18, 4)), CAST(1345.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T19:26:43.000' AS DateTime), N'', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Journal] ([EntryID], [TransactionID], [EntryDate], [Source], [SourceID], [AccountCode], [CardID], [ItemID], [ItemQuantity], [SupplierPurchaseID], [CustomerPurchaseID], [PDCPayableID], [PDCReceivableID], [Description], [DebitAmount], [CreditAmount], [OpeningBalance], [ClosingBalance], [CompanyCode], [SystemDate], [Attributes], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [OperationType]) VALUES (53, CAST(12 AS Numeric(10, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'Daily Expenses', CAST(1 AS Numeric(10, 0)), N'005-005', CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1.000 AS Numeric(18, 3)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), N'Expense # 1', CAST(200.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(4000.0000 AS Numeric(18, 4)), CAST(4200.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T19:26:43.000' AS DateTime), N'', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Journal] ([EntryID], [TransactionID], [EntryDate], [Source], [SourceID], [AccountCode], [CardID], [ItemID], [ItemQuantity], [SupplierPurchaseID], [CustomerPurchaseID], [PDCPayableID], [PDCReceivableID], [Description], [DebitAmount], [CreditAmount], [OpeningBalance], [ClosingBalance], [CompanyCode], [SystemDate], [Attributes], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [OperationType]) VALUES (54, CAST(13 AS Numeric(10, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'Stock Transfer', CAST(3 AS Numeric(10, 0)), N'', CAST(-1 AS Numeric(10, 0)), CAST(1 AS Numeric(10, 0)), CAST(1.000 AS Numeric(18, 3)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), N'Stock Transfer # 3', CAST(0.0000 AS Numeric(18, 4)), CAST(1200.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T19:54:36.000' AS DateTime), N'1', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Journal] ([EntryID], [TransactionID], [EntryDate], [Source], [SourceID], [AccountCode], [CardID], [ItemID], [ItemQuantity], [SupplierPurchaseID], [CustomerPurchaseID], [PDCPayableID], [PDCReceivableID], [Description], [DebitAmount], [CreditAmount], [OpeningBalance], [ClosingBalance], [CompanyCode], [SystemDate], [Attributes], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [OperationType]) VALUES (55, CAST(13 AS Numeric(10, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'Stock Transfer', CAST(3 AS Numeric(10, 0)), N'', CAST(-1 AS Numeric(10, 0)), CAST(1 AS Numeric(10, 0)), CAST(1.000 AS Numeric(18, 3)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), CAST(-1 AS Numeric(10, 0)), N'Stock Transfer # 3', CAST(1200.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T19:54:36.000' AS DateTime), N'1', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Journal] OFF
GO
INSERT [dbo].[LinkedAccounts] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (1, N'Assets', N'001', 0, 1, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[LinkedAccounts] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (2, N'Liabilities', N'002', 0, 1, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[LinkedAccounts] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (3, N'Equity', N'003', 0, 1, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[LinkedAccounts] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (4, N'Equity Earnings', N'003-001', 0, 1, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[LinkedAccounts] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (5, N'Expenses', N'005', 0, 1, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[LinkedAccounts] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (6, N'Petty Cash', N'001-001', 0, 1, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[LinkedAccounts] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (7, N'Customer Receivables', N'001-002', 0, 1, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[LinkedAccounts] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (8, N'PDC Receivables', N'001-003', 0, 1, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[LinkedAccounts] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (9, N'Supplier Payables', N'002-001', 0, 1, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[LinkedAccounts] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (10, N'PDC Payables', N'002-002', 0, 1, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[LinkedAccounts] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (11, N'Inventory Sales (Header)', N'004-004', 0, 1, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[LinkedAccounts] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (12, N'Freight Collected', N'004-002', 0, 1, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[LinkedAccounts] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (13, N'Cost of Goods Sold (Header)', N'005-006', 0, 1, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[LinkedAccounts] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (14, N'Discounts Given', N'005-003', 0, 1, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[LinkedAccounts] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (15, N'Freight Paid', N'005-002', 0, 1, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[LinkedAccounts] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (16, N'Discount Taken', N'004-003', 0, 1, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[LinkedAccounts] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (17, N'Inventory (Header)', N'001-008', 0, 1, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[LinkedAccounts] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (18, N'Suppliers (Header)', N'002-004', 0, 1, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[LinkedAccounts] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (19, N'Customers (Header)', N'001-007', 0, 1, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[LinkedAccounts] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (20, N'Banks (Header)', N'001-005', 0, 1, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[LinkedAccounts] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (21, N'General Expense', N'005-005', 0, 1, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[LinkedAccounts] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (22, N'Inventory', N'001-004', 0, 1, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[LinkedAccounts] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (23, N'Sales', N'004-001', 0, 1, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[LinkedAccounts] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (24, N'Cost of Goods Sold', N'005-001', 0, 1, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[LinkedAccounts] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (25, N'Employee Payables', N'002-005', 0, 1, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[LinkedAccounts] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (26, N'Employees (Header)', N'002-006', 0, 1, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[LinkedAccounts_JellyERP] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (CAST(1 AS Numeric(10, 0)), N'Assets', N'001', 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LinkedAccounts_JellyERP] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (CAST(2 AS Numeric(10, 0)), N'Liabilities', N'002', 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LinkedAccounts_JellyERP] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (CAST(3 AS Numeric(10, 0)), N'Equity', N'003', 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LinkedAccounts_JellyERP] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (CAST(4 AS Numeric(10, 0)), N'Equity Earnings', N'003-001', 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LinkedAccounts_JellyERP] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (CAST(5 AS Numeric(10, 0)), N'Expenses', N'005', 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LinkedAccounts_JellyERP] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (CAST(6 AS Numeric(10, 0)), N'Petty Cash', N'001-001', 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LinkedAccounts_JellyERP] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (CAST(7 AS Numeric(10, 0)), N'Customer Receivables', N'001-002', 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LinkedAccounts_JellyERP] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (CAST(8 AS Numeric(10, 0)), N'PDC Receivables', N'001-003', 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LinkedAccounts_JellyERP] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (CAST(9 AS Numeric(10, 0)), N'Supplier Payables', N'002-001', 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LinkedAccounts_JellyERP] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (CAST(10 AS Numeric(10, 0)), N'PDC Payables', N'002-002', 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LinkedAccounts_JellyERP] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (CAST(11 AS Numeric(10, 0)), N'Inventory Sales (Header)', N'004-004', 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LinkedAccounts_JellyERP] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (CAST(12 AS Numeric(10, 0)), N'Freight Collected', N'004-002', 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LinkedAccounts_JellyERP] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (CAST(13 AS Numeric(10, 0)), N'Cost of Goods Sold (Header)', N'005-006', 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LinkedAccounts_JellyERP] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (CAST(14 AS Numeric(10, 0)), N'Discounts Given', N'005-003', 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LinkedAccounts_JellyERP] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (CAST(15 AS Numeric(10, 0)), N'Freight Paid', N'005-002', 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LinkedAccounts_JellyERP] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (CAST(16 AS Numeric(10, 0)), N'Discount Taken', N'004-003', 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LinkedAccounts_JellyERP] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (CAST(17 AS Numeric(10, 0)), N'Inventory (Header)', N'001-008', 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LinkedAccounts_JellyERP] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (CAST(18 AS Numeric(10, 0)), N'Suppliers (Header)', N'002-004', 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LinkedAccounts_JellyERP] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (CAST(19 AS Numeric(10, 0)), N'Customers (Header)', N'001-007', 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LinkedAccounts_JellyERP] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (CAST(20 AS Numeric(10, 0)), N'Banks (Header)', N'001-005', 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LinkedAccounts_JellyERP] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (CAST(21 AS Numeric(10, 0)), N'General Expense', N'005-005', 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LinkedAccounts_JellyERP] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (CAST(22 AS Numeric(10, 0)), N'Inventory', N'001-004', 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LinkedAccounts_JellyERP] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (CAST(23 AS Numeric(10, 0)), N'Sales', N'004-001', 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LinkedAccounts_JellyERP] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (CAST(24 AS Numeric(10, 0)), N'Cost of Goods Sold', N'005-001', 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LinkedAccounts_JellyERP] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (CAST(25 AS Numeric(10, 0)), N'Employee Payables', N'002-005', 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LinkedAccounts_JellyERP] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (CAST(26 AS Numeric(10, 0)), N'Employees (Header)', N'002-006', 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LinkedAccounts_Retaila] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (CAST(1 AS Numeric(10, 0)), N'Assets', N'001', 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LinkedAccounts_Retaila] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (CAST(2 AS Numeric(10, 0)), N'Liabilities', N'002', 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LinkedAccounts_Retaila] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (CAST(3 AS Numeric(10, 0)), N'Equity', N'003', 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LinkedAccounts_Retaila] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (CAST(4 AS Numeric(10, 0)), N'Equity Earnings', N'003-001', 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LinkedAccounts_Retaila] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (CAST(5 AS Numeric(10, 0)), N'Expenses', N'005', 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LinkedAccounts_Retaila] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (CAST(6 AS Numeric(10, 0)), N'Petty Cash', N'001-001', 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LinkedAccounts_Retaila] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (CAST(7 AS Numeric(10, 0)), N'Customer Receivables', N'001-002', 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LinkedAccounts_Retaila] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (CAST(8 AS Numeric(10, 0)), N'PDC Receivables', N'001-003', 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LinkedAccounts_Retaila] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (CAST(9 AS Numeric(10, 0)), N'Supplier Payables', N'002-001', 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LinkedAccounts_Retaila] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (CAST(10 AS Numeric(10, 0)), N'PDC Payables', N'002-002', 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LinkedAccounts_Retaila] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (CAST(11 AS Numeric(10, 0)), N'Inventory Sales (Header)', N'004-004', 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LinkedAccounts_Retaila] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (CAST(12 AS Numeric(10, 0)), N'Freight Collected', N'004-002', 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LinkedAccounts_Retaila] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (CAST(13 AS Numeric(10, 0)), N'Cost of Goods Sold (Header)', N'005-006', 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LinkedAccounts_Retaila] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (CAST(14 AS Numeric(10, 0)), N'Discounts Given', N'005-003', 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LinkedAccounts_Retaila] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (CAST(15 AS Numeric(10, 0)), N'Freight Paid', N'005-002', 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LinkedAccounts_Retaila] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (CAST(16 AS Numeric(10, 0)), N'Discount Taken', N'004-003', 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LinkedAccounts_Retaila] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (CAST(17 AS Numeric(10, 0)), N'Inventory (Header)', N'001-008', 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LinkedAccounts_Retaila] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (CAST(18 AS Numeric(10, 0)), N'Suppliers (Header)', N'002-004', 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LinkedAccounts_Retaila] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (CAST(19 AS Numeric(10, 0)), N'Customers (Header)', N'001-007', 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LinkedAccounts_Retaila] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (CAST(20 AS Numeric(10, 0)), N'Banks (Header)', N'001-005', 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LinkedAccounts_Retaila] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (CAST(21 AS Numeric(10, 0)), N'General Expense', N'005-005', 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LinkedAccounts_Retaila] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (CAST(22 AS Numeric(10, 0)), N'Inventory', N'001-004', 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LinkedAccounts_Retaila] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (CAST(23 AS Numeric(10, 0)), N'Sales', N'004-001', 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LinkedAccounts_Retaila] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (CAST(24 AS Numeric(10, 0)), N'Cost of Goods Sold', N'005-001', 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LinkedAccounts_Retaila] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (CAST(25 AS Numeric(10, 0)), N'Employee Payables', N'002-005', 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LinkedAccounts_Retaila] ([ID], [NameAccountToLink], [CodeLinkedAccount], [ReadOnly], [CompanyCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (CAST(26 AS Numeric(10, 0)), N'Employees (Header)', N'002-006', 0, 1, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[LocationsManager] ([Code], [Name], [CompanyCode], [IsActive], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (1, N'Warehouse', 1, 1, 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL)
GO
INSERT [dbo].[LocationsManager] ([Code], [Name], [CompanyCode], [IsActive], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (2, N'Imporium Branch', 1, 1, 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL)
GO
SET IDENTITY_INSERT [dbo].[MonthlyExpenses] ON 
GO
INSERT [dbo].[MonthlyExpenses] ([ID], [Month], [Year], [ExpenseDate], [Expense], [Amount], [UserName], [TaxID], [TaxName], [TaxRate], [ExpenseTax], [CompanyCode], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate]) VALUES (1, 2, 2025, CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'RENT', CAST(4000.0000 AS Numeric(18, 4)), N'admin', NULL, NULL, NULL, NULL, NULL, NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[MonthlyExpenses] OFF
GO
SET IDENTITY_INSERT [dbo].[MonthlyExpenseTypes] ON 
GO
INSERT [dbo].[MonthlyExpenseTypes] ([ID], [Category], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (1, N'RENT', NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[MonthlyExpenseTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[OpenItems] ON 
GO
INSERT [dbo].[OpenItems] ([Code], [Name], [Price], [TaxID], [Method], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode], [Barcode]) VALUES (1, N'New Ope', 2000, CAST(1 AS Numeric(18, 0)), 2, NULL, NULL, NULL, NULL, NULL, N'80410621955')
GO
SET IDENTITY_INSERT [dbo].[OpenItems] OFF
GO
SET IDENTITY_INSERT [dbo].[Options] ON 
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (1, N'ProductTax', N'1', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (2, N'OrderTax', N'0', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (3, N'ShowTaxInSale', N'0', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (4, N'TaxRate', N'0', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (5, N'EnableTax', N'1', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (6, N'TaxCalculationMethod', N'0', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (7, N'AttributesSequence', N'Color,Size', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (8, N'ExpiryDays', N'50', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (9, N'LicenseNo', N'987654321', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (10, N'Discount', N'0', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (11, N'Terms', N'', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (12, N'BusinessCategory', N'Pharmacy', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (13, N'LoginScreen', N'1', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (14, N'TutorialShow', N'0', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (15, N'AlertsShow', N'0', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (16, N'LeftMargin', N'0', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (17, N'TopMargin', N'0', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (18, N'AutomaticPartyLedgers', N'1', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (19, N'AutomaticBankLedgers', N'1', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (20, N'AutomaticInventoryLedgers', N'0', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (21, N'SaleReturnDeductionPercentage', N'0', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (22, N'Salestax', N'0', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (23, N'AttributesCategory', N'Item Level Attributes', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (24, N'InvoicePageType', N'A4', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (25, N'InvoicePageSize', N'3.0', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (26, N'StickerSize', N'StickerThermal', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (27, N'DiscountDisableOnNewSale', N'1', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (28, N'ProductCodeField', N'1', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (29, N'BarcodeField', N'1', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (30, N'ThermalPageWidth', N'3.0', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (31, N'StickerHight', N'80', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (32, N'StickerWidth', N'0', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (33, N'OverSelling', N'1', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (34, N'BusinessTitle', N'NAZAAM KIRYANA', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (35, N'AddressLine1', N'Address 1', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (36, N'AddressLine2', N'Address 2', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (37, N'EnableAttributes', N'0', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (38, N'EnableAccounting', N'1', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (39, N'EnableMultiLocation', N'0', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (40, N'WizardCompleted', N'1', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (41, N'Language', N'0', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (42, N'Decimals', N'0', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (43, N'EnableSms', N'0', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (44, N'CustomerSms', N'0', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (45, N'AdminSms', N'0', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (46, N'AdminNumber', N'12345678', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (47, N'SMSSenderID', N'lifetimesms', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (48, N'SMSUserID', N'6113dd595895a692a82ee63a8dc967a494b9c23045', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (49, N'SMSUserIDPassword', N'hatim', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (50, N'SupplierSms', N'0', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (51, N'CountryCode', N'+92', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (52, N'EnableEmail', N'0', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (53, N'SmtpAddress', N'mail.mypos.pk', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (54, N'PortNumber', N'587', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (55, N'EmailSubject', N'Sale Report', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (56, N'EmailBody', N'Check it', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (57, N'EmailFrom', N'info@mypos.pk', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (58, N'Password', N'nopassword', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (59, N'EmailTo', N'khaleel.anjum@gmail.com', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (60, N'SSL', N'0', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (61, N'DefaultCategory', N'', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (62, N'WindowsKeyBoard', N'0', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (63, N'ArabicBusinessTitle', N'???? ????? ????? ?????? ??????? ??????????', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (64, N'ArabicAddress', N'??????? /???????? 6/??? ????????? ?????', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (65, N'PoBoxNo', N'30091', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (66, N'ArabicPoBoxNo', N'', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (67, N'Email', N'info@jamaperfumes', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (68, N'CartAddMethod', N'1', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (69, N'PurchaseInvoicePageType', N'A4', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (70, N'PurchsaeInvoiceSize', N'2.5', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (71, N'PurchaseOrderInvoicePageType', N'A4', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (72, N'PurchaseOrderInvoiceSize', N'2.5', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (73, N'SaleOrderInvoicePageType', N'A4', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (74, N'SaleOrderInvoiceSize', N'3.0', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (75, N'ShowDashboard', N'0', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (76, N'BackUp', N'0', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (77, N'PaymentMode', N'1', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (78, N'ScreenLayout', N'0', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (79, N'ServerIP', N'KBHOfJ/FBhs5dWw4dfQlgQ==', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (80, N'ServerPortNo', N'KBHOfJ/FBhs5dWw4dfQlgQ==', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (81, N'DataBaseName', N'KBHOfJ/FBhs5dWw4dfQlgQ==', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (82, N'ServerUsername', N'KBHOfJ/FBhs5dWw4dfQlgQ==', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (83, N'ServerPassword', N'KBHOfJ/FBhs5dWw4dfQlgQ==', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (84, N'BranchCode', N'-1', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (85, N'EnableTerm', N'0', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (86, N'BalancePopup', N'1', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (87, N'ProductNameInSale', N'0', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (88, N'StockAlert', N'0', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (89, N'ProductExpiry', N'1', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (90, N'PDCAlert', N'0', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (91, N'PassportAlert', N'0', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (92, N'PassportAlertDays', N'0', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (93, N'VisaAlert', N'0', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (94, N'VisaAlertDays', N'0', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (95, N'CopyRight', N'0', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (96, N'PDCDays', N'10', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (97, N'Category Color', N'192, 80, 77', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (98, N'Category Size', N'110', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (99, N'Category Font', N'Adobe Fangsong Std R', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (100, N'Category Font Size', N'11', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (101, N'Category Font Style', N'Regular', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (102, N'Product Color', N'49, 133, 155', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (103, N'Product Size', N'110', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (104, N'Product Font', N'Lato', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (105, N'Product Font Size', N'12', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (106, N'Product Font Style', N'Regular', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (107, N'DefaultFocus', N'1', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (108, N'PlusFunction', N'1', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (109, N'AuthPassword', N'BJE1MSbnaZJVT8bTBVIsQg==', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (110, N'RegisterPassword', N'+F3K3I0CRwynuw9AXOTknQ==', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (111, N'DiscountPassword', N'BJE1MSbnaZJVT8bTBVIsQg==', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (112, N'BillingMode', N'1', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (113, N'MyShopsServerIP', N'myshops.pk', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (114, N'MyShopsServerPortNo', N'3306', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (115, N'MyShopsDataBaseName', N'UOVmAVClvdMYKKLITyXnKLC7piRRsllNzQ/2MFvj6rMzreqwTIpFyQGYARtKQC1D', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (116, N'MyShopsServerUsername', N'UOVmAVClvdMYKKLITyXnKEJggGfcE8nk4Tx9dTvxGig=', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (117, N'MyShopsServerPassword', N'zzCV5DwwHEck/+j616Z8szEDzWgXeQsOF3bH4ArJo/0=', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (118, N'MyShopsMerchantCode', N'1', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (119, N'CurrencyWord', N' PKR', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (120, N'CurrencySubWord', N' Rs.', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (121, N'BusinessAccountNo', N'Account Number', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (122, N'BusinessBankName', N'HBL', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (123, N'LicenseExpiry', N'2020-01-29', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (124, N'CrNo', N'987654321', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (125, N'CrExpiry', N'2020-01-31', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (126, N'IDAlert', N'0', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (127, N'IDAlertDays', N'0', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (128, N'MedicalPolicyAlert', N'0', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (129, N'MedicalPolicyAlertDays', N'0', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (130, N'DrivingLicenseAlert', N'0', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (131, N'DrivingLicenseAlertDays', N'0', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (132, N'BusinessLicenseAlert', N'0', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (133, N'BusinessLicenseAlertDays', N'0', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (134, N'BusinessCRAlert', N'0', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (135, N'BusinessCRAlertDays', N'0', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (136, N'EnableMyShops', N'0', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (137, N'MyShopsServerLastModifiedDate', N'2020-05-11 01:24:27', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (138, N'PurchaseProfitPercentage', N'10', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (139, N'UpdateSalePrice', N'1', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (140, N'PurchaseAmountToSave', N'1', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (141, N'SaleAmountToSave', N'1', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (142, N'SaleScreenMode', N'0', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (143, N'RoundingEnable', N'1', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (144, N'Rounding', N'3', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (145, N'EnableOnlineSync', N'0', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (146, N'SyncType', N'1', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (147, N'SyncInterval', N'3', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (148, N'UserLevelLanguage', N'0', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (149, N'ProfitCalculation', N'2', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (150, N'WeighScale', N'0', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (151, N'WeighBarcodePrefix', N'98', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (152, N'WeighBarcodePattern', N'W|13|3-7|8-12|1000', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (153, N'SMSFrom', N'lifetimesms', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (154, N'SMSAPIToken', N'6113dd595895a692a82ee63a8dc967a494b9c23045', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (155, N'SMSAPISecret', N'hatim', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (156, N'EnableCustomerPole', N'0', NULL, CAST(N'2024-12-18T12:31:41.000' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (157, N'CustomerPolePort', N'', NULL, CAST(N'2024-12-18T12:31:41.000' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (158, N'CustomerPoleRTL', N'', NULL, CAST(N'2024-12-18T12:31:41.000' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (159, N'CustomerPoleLineCount', N'', NULL, CAST(N'2024-12-18T12:31:41.000' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (160, N'CustomerPoleLineChrCount', N'', NULL, CAST(N'2024-12-18T12:31:41.000' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (161, N'CustomerPoleChrReplacement', N'', NULL, CAST(N'2024-12-18T12:31:41.000' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (162, N'enableLTS', N'0', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (163, N'enableSSG', N'0', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (164, N'SSG_user', N'', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (165, N'SSG_pwd', N'', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (166, N'SSG_sender', N'', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (167, N'SSG_countrycode', N'', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (168, N'CheckoutAlert', N'1', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (169, N'ButtonStyle', N'0', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (170, N'SoftwareCategory', N'R05lbHCTFQCmLzkcQ7sc1/qdwjETZXlK8GCrdXx7Q3k=', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (171, N'EnableFBR', N'0', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (172, N'ReportDecimals', N'0', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (173, N'DefaultUnit', N'10', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (174, N'EnableSalesTax', N'0', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (175, N'EnableSalesProductLevelTax', N'0', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (176, N'EnableSalesOrderLevelTax', N'0', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (177, N'EnablePurchaseTax', N'0', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (178, N'DefaultSalesTaxRate', N'3', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (179, N'DefaultSalesTaxMethod', N'0', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (180, N'OrderLevelSalesTaxRate', N'1', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (181, N'SaleOrderTaxMethod', N'1', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (182, N'EnableWooCommerce', N'1', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (183, N'EnableWooSubscription', N'0', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (184, N'WooDateFrom', N'C/rQt6HVjL4fxZ9ejaBNjOf3aiybqrbi4Kw1Mcj6Dvk=', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (185, N'WooDateTo', N'C/rQt6HVjL4fxZ9ejaBNjOf3aiybqrbi4Kw1Mcj6Dvk=', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (186, N'WooAppURL', N'http://restro.designkorner.com/wp-json/wc/v3/', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (187, N'WooConsumerKey', N'ck_ba02df3c8c69f7a81a93c9acf6ef960edd3c0fa1', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (188, N'WooConsumerSecret', N'cs_092a5d41baca4b3b45e5b58cb8fd1165fc7f80c4', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (189, N'WooProductsSyncType', N'0', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (190, N'WooProductsSyncInterval', N'2', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (191, N'WooProductsPrice', N'0', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (192, N'WooProductsDescription', N'2', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (193, N'WooProductAddName', N'1', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (194, N'WooProductAddPrice', N'1', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (195, N'WooProductAddCategory', N'1', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (196, N'WooProductAddQuantity', N'1', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (197, N'WooProductAddImages', N'0', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (198, N'WooProductAddDesc', N'0', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (199, N'WooProductAddManageStock', N'2', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (200, N'WooProductAddInStock', N'2', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (201, N'WooProductUpdateName', N'1', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (202, N'WooProductUpdatePrice', N'1', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (203, N'WooProductUpdateCategory', N'1', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (204, N'WooProductUpdateQuantity', N'1', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (205, N'WooProductUpdateImages', N'0', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (206, N'WooProductUpdateDesc', N'0', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (207, N'WooProductUpdateManageStock', N'-1', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (208, N'WooProductUpdateInStock', N'-1', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (209, N'WooOrdersSyncType', N'0', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (210, N'WooOrdersSyncInterval', N'1', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (211, N'WooOrderStatusPending', N'1', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (212, N'WooOrderStatusProcessing', N'1', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (213, N'WooOrderStatusOnHold', N'1', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (214, N'WooOrderStatusCompleted', N'0', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (215, N'WooOrderStatusCancelled', N'2', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (216, N'WooOrderStatusRefunded', N'1', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (217, N'WooOrderStatusFailed', N'1', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (218, N'WooOrderStatusShipped', N'0', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (219, N'EnableWPSMS', N'0', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (220, N'EnableWA', N'0', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (221, N'EnableINSMS', N'0', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (222, N'InstaMSGAPI', N'', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (223, N'HidePurchaseColumns', N'1', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (224, N'WhatsappMode', N'1', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (225, N'WASaleInvoiceAttachment', N'0', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (226, N'WASaleInvoiceAttachmentFormat', N'0', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (227, N'EnableSaleInvoiceSMS', N'0', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (228, N'EnableSaleInvoiceWA', N'0', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (229, N'EnableSaleOrderSMS', N'0', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (230, N'EnableSaleOrderWA', N'0', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (231, N'WASaleOrderAttachment', N'0', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (232, N'WASaleOrderAttachmentFormat', N'0', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (233, N'EnablePurchaseInvoiceSMS', N'0', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (234, N'EnablePurchaseInvoiceWA', N'0', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (235, N'EnablePurchaseOrderSMS', N'0', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (236, N'EnablePurchaseOrderWA', N'0', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (237, N'EnableCustomerReciptSMS', N'0', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (238, N'EnableCustomerReciptWA', N'0', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (239, N'WACustomerReceiptAttachment', N'0', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (240, N'WACustomerReceiptAttachmentFormat', N'0', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (241, N'EnableSupplierReciptSMS', N'0', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (242, N'EnableSupplierReciptWA', N'0', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (243, N'WASupplierReceiptAttachment', N'0', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Options] ([Code], [Name], [Value], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (244, N'WASupplierReceiptAttachmentFormat', N'0', NULL, NULL, NULL, NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[Options] OFF
GO
INSERT [dbo].[PaymentMethodDetail] ([ID], [PaymentMethod], [CardID], [ChequeNo], [BankName], [BankAccountNumber], [BankAccountName], [ChequeDate], [PDC], [PDCtoCDC], [CreditOrDebitCardNo], [CreditOrDebitCardType], [CardExpiryDate], [Amount], [Notes], [Type], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate]) VALUES (1, N'Cash', CAST(1 AS Numeric(10, 0)), N'', N'', N'', N'', NULL, 0, 0, N'', N'', CAST(N'2025-02-01T00:00:00.000' AS DateTime), CAST(1000.0000 AS Numeric(18, 4)), N'', N'Payment', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL)
GO
INSERT [dbo].[PaymentMethodDetail] ([ID], [PaymentMethod], [CardID], [ChequeNo], [BankName], [BankAccountNumber], [BankAccountName], [ChequeDate], [PDC], [PDCtoCDC], [CreditOrDebitCardNo], [CreditOrDebitCardType], [CardExpiryDate], [Amount], [Notes], [Type], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate]) VALUES (2, N'Cash', CAST(1 AS Numeric(10, 0)), N'', N'', N'', N'', NULL, 0, 0, N'', N'', CAST(N'2025-02-01T00:00:00.000' AS DateTime), CAST(1000.0000 AS Numeric(18, 4)), N'', N'Payment', NULL, CAST(2 AS Numeric(18, 0)), NULL, NULL, NULL)
GO
INSERT [dbo].[PaymentMethodDetail] ([ID], [PaymentMethod], [CardID], [ChequeNo], [BankName], [BankAccountNumber], [BankAccountName], [ChequeDate], [PDC], [PDCtoCDC], [CreditOrDebitCardNo], [CreditOrDebitCardType], [CardExpiryDate], [Amount], [Notes], [Type], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate]) VALUES (3, N'Cash', CAST(1 AS Numeric(10, 0)), N'', N'', N'', N'', NULL, 0, 0, N'', N'', CAST(N'2025-02-01T00:00:00.000' AS DateTime), CAST(500.0000 AS Numeric(18, 4)), N'', N'Payment', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL)
GO
INSERT [dbo].[Payments] ([PVID], [SupplierCode], [PaymentDate], [PaymentAmount], [SupplierBalance], [Remarks], [PaymentMethodDetailID], [DebitedAccountCode], [CreditedAccountCode], [AmountInWords], [CompanyCode], [Source], [UserName], [ContactType], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate]) VALUES (1, 1, CAST(N'2025-02-02T18:36:00.000' AS DateTime), CAST(1000.0000 AS Numeric(18, 4)), CAST(11000.0000 AS Numeric(18, 4)), N'', 1, N'002-004-001', N'001-001', N'', 1, N'Supplier Payment Voucher', N'admin', N'Supplier', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL)
GO
INSERT [dbo].[Payments] ([PVID], [SupplierCode], [PaymentDate], [PaymentAmount], [SupplierBalance], [Remarks], [PaymentMethodDetailID], [DebitedAccountCode], [CreditedAccountCode], [AmountInWords], [CompanyCode], [Source], [UserName], [ContactType], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate]) VALUES (2, 1, CAST(N'2025-02-02T18:36:17.000' AS DateTime), CAST(1000.0000 AS Numeric(18, 4)), CAST(10000.0000 AS Numeric(18, 4)), N'', 2, N'002-004-001', N'001-001', N'', 1, N'Supplier Payment Voucher', N'admin', N'Supplier', NULL, CAST(2 AS Numeric(18, 0)), NULL, NULL, NULL)
GO
INSERT [dbo].[Payments] ([PVID], [SupplierCode], [PaymentDate], [PaymentAmount], [SupplierBalance], [Remarks], [PaymentMethodDetailID], [DebitedAccountCode], [CreditedAccountCode], [AmountInWords], [CompanyCode], [Source], [UserName], [ContactType], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate]) VALUES (3, 1, CAST(N'2025-02-02T18:37:05.000' AS DateTime), CAST(500.0000 AS Numeric(18, 4)), CAST(9500.0000 AS Numeric(18, 4)), N'', 3, N'002-004-001', N'001-001', N'', 1, N'Supplier Payment Voucher', N'admin', N'Supplier', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[PaymentsDetail] ON 
GO
INSERT [dbo].[PaymentsDetail] ([Code], [PVID], [POID], [AppliedAmount], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate]) VALUES (1, 1, -1, CAST(1000.00 AS Numeric(18, 2)), NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL)
GO
INSERT [dbo].[PaymentsDetail] ([Code], [PVID], [POID], [AppliedAmount], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate]) VALUES (2, 2, -1, CAST(1000.00 AS Numeric(18, 2)), NULL, CAST(2 AS Numeric(18, 0)), NULL, NULL, NULL)
GO
INSERT [dbo].[PaymentsDetail] ([Code], [PVID], [POID], [AppliedAmount], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate]) VALUES (3, 3, -1, CAST(500.00 AS Numeric(18, 2)), NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[PaymentsDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Permissions] ON 
GO
INSERT [dbo].[Permissions] ([ID], [GroupCode], [InventoryManagerAdd], [InventoryManagerEdit], [InverntoryManagerDelete], [InventoryManagerView], [InventoryManagerHideSalePrice], [InventoryManagerHidePurchasePrice], [InventoryManagerHideAverageCost], [InventoryManagerPrintBarcode], [InventoryManagerStockCount], [InventoryManagerStockAdjustment], [InventoryManagerImportProducts], [InventoryManagerStockTransfer], [InventoryManagerPriceGroup], [InventoryMyShops], [SalesAdd], [SalesEdit], [SalesDelete], [SalesView], [SalesImportSales], [SalesAddCustomer], [SalesCustomerRecipts], [SalesCustomerPayment], [SalesPaymentHistory], [SalesExpenses], [SalesReceiveStock], [SaleOrder], [SaleReturn], [PurchaseAdd], [PurchaseEdit], [PurchaseDelete], [PurchaseView], [PurchaseImportPurchase], [PurchaseAddSupplier], [PurchaseSupplierRecipt], [PurchaseSupplierPayment], [PurchasePaymentHistory], [PurchaseOrder], [PurchaseReturn], [EmployeeManagerAdd], [EmployeeManagerEdit], [EmployeeManagerDelete], [EmployeeManagerView], [EmployeePayment], [AddBiller], [AddGroupPermissions], [AccountingAdd], [AccountingEdit], [AccountingDelete], [AccountingView], [AccountingBanks], [AccountingJournalVoucher], [AccountingTransactionJournal], [AccountAccountLedger], [AccountingTrialBalance], [AccountingIncomeStatement], [AccountingBalanceSheet], [AccountingPostDatedChecks], [ReportsView], [ReportsSales], [ReportsPurchases], [ReportsInventory], [ReportsRegisterAndZReport], [ReportsExpenseReport], [ReportTaxReport], [OptionsAdd], [OptionsEdit], [OptionsDelete], [OptionsView], [Settings], [DatabaseBackUP], [DatabaseRestore], [PurchaseHistory], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [InventoryDefineDeals], [InventoryToping], [InventoryTables], [InventoryLocations], [InventoryStockTransfer], [InventoryTransferHistory], [InventoryByLocation], [InventoryTransferRegister], [InventoryStockAdjustment], [InventoryStockAudit], [InventoryStockAuditReport], [SalesDeliveryOrder], [SaleHistory], [DeliveryReport], [KitchenScreen], [BranchCode], [QuickSaleView], [InventoryManagerLocations], [InventoryManagerStockRequest], [InventoryManagerStockHistory]) VALUES (1, CAST(1 AS Numeric(18, 0)), 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, CAST(N'2024-11-19T22:26:36.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Permissions] ([ID], [GroupCode], [InventoryManagerAdd], [InventoryManagerEdit], [InverntoryManagerDelete], [InventoryManagerView], [InventoryManagerHideSalePrice], [InventoryManagerHidePurchasePrice], [InventoryManagerHideAverageCost], [InventoryManagerPrintBarcode], [InventoryManagerStockCount], [InventoryManagerStockAdjustment], [InventoryManagerImportProducts], [InventoryManagerStockTransfer], [InventoryManagerPriceGroup], [InventoryMyShops], [SalesAdd], [SalesEdit], [SalesDelete], [SalesView], [SalesImportSales], [SalesAddCustomer], [SalesCustomerRecipts], [SalesCustomerPayment], [SalesPaymentHistory], [SalesExpenses], [SalesReceiveStock], [SaleOrder], [SaleReturn], [PurchaseAdd], [PurchaseEdit], [PurchaseDelete], [PurchaseView], [PurchaseImportPurchase], [PurchaseAddSupplier], [PurchaseSupplierRecipt], [PurchaseSupplierPayment], [PurchasePaymentHistory], [PurchaseOrder], [PurchaseReturn], [EmployeeManagerAdd], [EmployeeManagerEdit], [EmployeeManagerDelete], [EmployeeManagerView], [EmployeePayment], [AddBiller], [AddGroupPermissions], [AccountingAdd], [AccountingEdit], [AccountingDelete], [AccountingView], [AccountingBanks], [AccountingJournalVoucher], [AccountingTransactionJournal], [AccountAccountLedger], [AccountingTrialBalance], [AccountingIncomeStatement], [AccountingBalanceSheet], [AccountingPostDatedChecks], [ReportsView], [ReportsSales], [ReportsPurchases], [ReportsInventory], [ReportsRegisterAndZReport], [ReportsExpenseReport], [ReportTaxReport], [OptionsAdd], [OptionsEdit], [OptionsDelete], [OptionsView], [Settings], [DatabaseBackUP], [DatabaseRestore], [PurchaseHistory], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [InventoryDefineDeals], [InventoryToping], [InventoryTables], [InventoryLocations], [InventoryStockTransfer], [InventoryTransferHistory], [InventoryByLocation], [InventoryTransferRegister], [InventoryStockAdjustment], [InventoryStockAudit], [InventoryStockAuditReport], [SalesDeliveryOrder], [SaleHistory], [DeliveryReport], [KitchenScreen], [BranchCode], [QuickSaleView], [InventoryManagerLocations], [InventoryManagerStockRequest], [InventoryManagerStockHistory]) VALUES (2, CAST(2 AS Numeric(18, 0)), 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Permissions] ([ID], [GroupCode], [InventoryManagerAdd], [InventoryManagerEdit], [InverntoryManagerDelete], [InventoryManagerView], [InventoryManagerHideSalePrice], [InventoryManagerHidePurchasePrice], [InventoryManagerHideAverageCost], [InventoryManagerPrintBarcode], [InventoryManagerStockCount], [InventoryManagerStockAdjustment], [InventoryManagerImportProducts], [InventoryManagerStockTransfer], [InventoryManagerPriceGroup], [InventoryMyShops], [SalesAdd], [SalesEdit], [SalesDelete], [SalesView], [SalesImportSales], [SalesAddCustomer], [SalesCustomerRecipts], [SalesCustomerPayment], [SalesPaymentHistory], [SalesExpenses], [SalesReceiveStock], [SaleOrder], [SaleReturn], [PurchaseAdd], [PurchaseEdit], [PurchaseDelete], [PurchaseView], [PurchaseImportPurchase], [PurchaseAddSupplier], [PurchaseSupplierRecipt], [PurchaseSupplierPayment], [PurchasePaymentHistory], [PurchaseOrder], [PurchaseReturn], [EmployeeManagerAdd], [EmployeeManagerEdit], [EmployeeManagerDelete], [EmployeeManagerView], [EmployeePayment], [AddBiller], [AddGroupPermissions], [AccountingAdd], [AccountingEdit], [AccountingDelete], [AccountingView], [AccountingBanks], [AccountingJournalVoucher], [AccountingTransactionJournal], [AccountAccountLedger], [AccountingTrialBalance], [AccountingIncomeStatement], [AccountingBalanceSheet], [AccountingPostDatedChecks], [ReportsView], [ReportsSales], [ReportsPurchases], [ReportsInventory], [ReportsRegisterAndZReport], [ReportsExpenseReport], [ReportTaxReport], [OptionsAdd], [OptionsEdit], [OptionsDelete], [OptionsView], [Settings], [DatabaseBackUP], [DatabaseRestore], [PurchaseHistory], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [InventoryDefineDeals], [InventoryToping], [InventoryTables], [InventoryLocations], [InventoryStockTransfer], [InventoryTransferHistory], [InventoryByLocation], [InventoryTransferRegister], [InventoryStockAdjustment], [InventoryStockAudit], [InventoryStockAuditReport], [SalesDeliveryOrder], [SaleHistory], [DeliveryReport], [KitchenScreen], [BranchCode], [QuickSaleView], [InventoryManagerLocations], [InventoryManagerStockRequest], [InventoryManagerStockHistory]) VALUES (3, CAST(3 AS Numeric(18, 0)), 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, CAST(N'2024-11-19T22:25:58.000' AS DateTime), 1, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Permissions] ([ID], [GroupCode], [InventoryManagerAdd], [InventoryManagerEdit], [InverntoryManagerDelete], [InventoryManagerView], [InventoryManagerHideSalePrice], [InventoryManagerHidePurchasePrice], [InventoryManagerHideAverageCost], [InventoryManagerPrintBarcode], [InventoryManagerStockCount], [InventoryManagerStockAdjustment], [InventoryManagerImportProducts], [InventoryManagerStockTransfer], [InventoryManagerPriceGroup], [InventoryMyShops], [SalesAdd], [SalesEdit], [SalesDelete], [SalesView], [SalesImportSales], [SalesAddCustomer], [SalesCustomerRecipts], [SalesCustomerPayment], [SalesPaymentHistory], [SalesExpenses], [SalesReceiveStock], [SaleOrder], [SaleReturn], [PurchaseAdd], [PurchaseEdit], [PurchaseDelete], [PurchaseView], [PurchaseImportPurchase], [PurchaseAddSupplier], [PurchaseSupplierRecipt], [PurchaseSupplierPayment], [PurchasePaymentHistory], [PurchaseOrder], [PurchaseReturn], [EmployeeManagerAdd], [EmployeeManagerEdit], [EmployeeManagerDelete], [EmployeeManagerView], [EmployeePayment], [AddBiller], [AddGroupPermissions], [AccountingAdd], [AccountingEdit], [AccountingDelete], [AccountingView], [AccountingBanks], [AccountingJournalVoucher], [AccountingTransactionJournal], [AccountAccountLedger], [AccountingTrialBalance], [AccountingIncomeStatement], [AccountingBalanceSheet], [AccountingPostDatedChecks], [ReportsView], [ReportsSales], [ReportsPurchases], [ReportsInventory], [ReportsRegisterAndZReport], [ReportsExpenseReport], [ReportTaxReport], [OptionsAdd], [OptionsEdit], [OptionsDelete], [OptionsView], [Settings], [DatabaseBackUP], [DatabaseRestore], [PurchaseHistory], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [InventoryDefineDeals], [InventoryToping], [InventoryTables], [InventoryLocations], [InventoryStockTransfer], [InventoryTransferHistory], [InventoryByLocation], [InventoryTransferRegister], [InventoryStockAdjustment], [InventoryStockAudit], [InventoryStockAuditReport], [SalesDeliveryOrder], [SaleHistory], [DeliveryReport], [KitchenScreen], [BranchCode], [QuickSaleView], [InventoryManagerLocations], [InventoryManagerStockRequest], [InventoryManagerStockHistory]) VALUES (4, CAST(4 AS Numeric(18, 0)), 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, CAST(N'2024-11-19T22:44:36.000' AS DateTime), 1, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Permissions] ([ID], [GroupCode], [InventoryManagerAdd], [InventoryManagerEdit], [InverntoryManagerDelete], [InventoryManagerView], [InventoryManagerHideSalePrice], [InventoryManagerHidePurchasePrice], [InventoryManagerHideAverageCost], [InventoryManagerPrintBarcode], [InventoryManagerStockCount], [InventoryManagerStockAdjustment], [InventoryManagerImportProducts], [InventoryManagerStockTransfer], [InventoryManagerPriceGroup], [InventoryMyShops], [SalesAdd], [SalesEdit], [SalesDelete], [SalesView], [SalesImportSales], [SalesAddCustomer], [SalesCustomerRecipts], [SalesCustomerPayment], [SalesPaymentHistory], [SalesExpenses], [SalesReceiveStock], [SaleOrder], [SaleReturn], [PurchaseAdd], [PurchaseEdit], [PurchaseDelete], [PurchaseView], [PurchaseImportPurchase], [PurchaseAddSupplier], [PurchaseSupplierRecipt], [PurchaseSupplierPayment], [PurchasePaymentHistory], [PurchaseOrder], [PurchaseReturn], [EmployeeManagerAdd], [EmployeeManagerEdit], [EmployeeManagerDelete], [EmployeeManagerView], [EmployeePayment], [AddBiller], [AddGroupPermissions], [AccountingAdd], [AccountingEdit], [AccountingDelete], [AccountingView], [AccountingBanks], [AccountingJournalVoucher], [AccountingTransactionJournal], [AccountAccountLedger], [AccountingTrialBalance], [AccountingIncomeStatement], [AccountingBalanceSheet], [AccountingPostDatedChecks], [ReportsView], [ReportsSales], [ReportsPurchases], [ReportsInventory], [ReportsRegisterAndZReport], [ReportsExpenseReport], [ReportTaxReport], [OptionsAdd], [OptionsEdit], [OptionsDelete], [OptionsView], [Settings], [DatabaseBackUP], [DatabaseRestore], [PurchaseHistory], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [InventoryDefineDeals], [InventoryToping], [InventoryTables], [InventoryLocations], [InventoryStockTransfer], [InventoryTransferHistory], [InventoryByLocation], [InventoryTransferRegister], [InventoryStockAdjustment], [InventoryStockAudit], [InventoryStockAuditReport], [SalesDeliveryOrder], [SaleHistory], [DeliveryReport], [KitchenScreen], [BranchCode], [QuickSaleView], [InventoryManagerLocations], [InventoryManagerStockRequest], [InventoryManagerStockHistory]) VALUES (5, CAST(5 AS Numeric(18, 0)), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, CAST(N'2024-11-19T22:44:52.000' AS DateTime), 1, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[Permissions] ([ID], [GroupCode], [InventoryManagerAdd], [InventoryManagerEdit], [InverntoryManagerDelete], [InventoryManagerView], [InventoryManagerHideSalePrice], [InventoryManagerHidePurchasePrice], [InventoryManagerHideAverageCost], [InventoryManagerPrintBarcode], [InventoryManagerStockCount], [InventoryManagerStockAdjustment], [InventoryManagerImportProducts], [InventoryManagerStockTransfer], [InventoryManagerPriceGroup], [InventoryMyShops], [SalesAdd], [SalesEdit], [SalesDelete], [SalesView], [SalesImportSales], [SalesAddCustomer], [SalesCustomerRecipts], [SalesCustomerPayment], [SalesPaymentHistory], [SalesExpenses], [SalesReceiveStock], [SaleOrder], [SaleReturn], [PurchaseAdd], [PurchaseEdit], [PurchaseDelete], [PurchaseView], [PurchaseImportPurchase], [PurchaseAddSupplier], [PurchaseSupplierRecipt], [PurchaseSupplierPayment], [PurchasePaymentHistory], [PurchaseOrder], [PurchaseReturn], [EmployeeManagerAdd], [EmployeeManagerEdit], [EmployeeManagerDelete], [EmployeeManagerView], [EmployeePayment], [AddBiller], [AddGroupPermissions], [AccountingAdd], [AccountingEdit], [AccountingDelete], [AccountingView], [AccountingBanks], [AccountingJournalVoucher], [AccountingTransactionJournal], [AccountAccountLedger], [AccountingTrialBalance], [AccountingIncomeStatement], [AccountingBalanceSheet], [AccountingPostDatedChecks], [ReportsView], [ReportsSales], [ReportsPurchases], [ReportsInventory], [ReportsRegisterAndZReport], [ReportsExpenseReport], [ReportTaxReport], [OptionsAdd], [OptionsEdit], [OptionsDelete], [OptionsView], [Settings], [DatabaseBackUP], [DatabaseRestore], [PurchaseHistory], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [InventoryDefineDeals], [InventoryToping], [InventoryTables], [InventoryLocations], [InventoryStockTransfer], [InventoryTransferHistory], [InventoryByLocation], [InventoryTransferRegister], [InventoryStockAdjustment], [InventoryStockAudit], [InventoryStockAuditReport], [SalesDeliveryOrder], [SaleHistory], [DeliveryReport], [KitchenScreen], [BranchCode], [QuickSaleView], [InventoryManagerLocations], [InventoryManagerStockRequest], [InventoryManagerStockHistory]) VALUES (6, CAST(6 AS Numeric(18, 0)), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Permissions] ([ID], [GroupCode], [InventoryManagerAdd], [InventoryManagerEdit], [InverntoryManagerDelete], [InventoryManagerView], [InventoryManagerHideSalePrice], [InventoryManagerHidePurchasePrice], [InventoryManagerHideAverageCost], [InventoryManagerPrintBarcode], [InventoryManagerStockCount], [InventoryManagerStockAdjustment], [InventoryManagerImportProducts], [InventoryManagerStockTransfer], [InventoryManagerPriceGroup], [InventoryMyShops], [SalesAdd], [SalesEdit], [SalesDelete], [SalesView], [SalesImportSales], [SalesAddCustomer], [SalesCustomerRecipts], [SalesCustomerPayment], [SalesPaymentHistory], [SalesExpenses], [SalesReceiveStock], [SaleOrder], [SaleReturn], [PurchaseAdd], [PurchaseEdit], [PurchaseDelete], [PurchaseView], [PurchaseImportPurchase], [PurchaseAddSupplier], [PurchaseSupplierRecipt], [PurchaseSupplierPayment], [PurchasePaymentHistory], [PurchaseOrder], [PurchaseReturn], [EmployeeManagerAdd], [EmployeeManagerEdit], [EmployeeManagerDelete], [EmployeeManagerView], [EmployeePayment], [AddBiller], [AddGroupPermissions], [AccountingAdd], [AccountingEdit], [AccountingDelete], [AccountingView], [AccountingBanks], [AccountingJournalVoucher], [AccountingTransactionJournal], [AccountAccountLedger], [AccountingTrialBalance], [AccountingIncomeStatement], [AccountingBalanceSheet], [AccountingPostDatedChecks], [ReportsView], [ReportsSales], [ReportsPurchases], [ReportsInventory], [ReportsRegisterAndZReport], [ReportsExpenseReport], [ReportTaxReport], [OptionsAdd], [OptionsEdit], [OptionsDelete], [OptionsView], [Settings], [DatabaseBackUP], [DatabaseRestore], [PurchaseHistory], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [InventoryDefineDeals], [InventoryToping], [InventoryTables], [InventoryLocations], [InventoryStockTransfer], [InventoryTransferHistory], [InventoryByLocation], [InventoryTransferRegister], [InventoryStockAdjustment], [InventoryStockAudit], [InventoryStockAuditReport], [SalesDeliveryOrder], [SaleHistory], [DeliveryReport], [KitchenScreen], [BranchCode], [QuickSaleView], [InventoryManagerLocations], [InventoryManagerStockRequest], [InventoryManagerStockHistory]) VALUES (7, CAST(7 AS Numeric(18, 0)), 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Permissions] OFF
GO
SET IDENTITY_INSERT [dbo].[PermissionsGroup] ON 
GO
INSERT [dbo].[PermissionsGroup] ([Code], [Name], [Description], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (1, N'Admin Permission Group', N'', 0, CAST(N'2024-11-19T22:26:36.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL)
GO
INSERT [dbo].[PermissionsGroup] ([Code], [Name], [Description], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (2, N'sales', N'', 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), 1, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL)
GO
INSERT [dbo].[PermissionsGroup] ([Code], [Name], [Description], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (3, N'Sales Permissions', N'', NULL, CAST(N'2024-11-19T22:25:58.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[PermissionsGroup] ([Code], [Name], [Description], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (4, N'Purchase', N'', NULL, CAST(N'2024-11-19T22:44:36.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[PermissionsGroup] ([Code], [Name], [Description], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (5, N'pc', N'', NULL, CAST(N'2024-11-19T22:44:51.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[PermissionsGroup] ([Code], [Name], [Description], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (6, N'Accounts', N'', NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[PermissionsGroup] OFF
GO
SET IDENTITY_INSERT [dbo].[POSRegister] ON 
GO
INSERT [dbo].[POSRegister] ([ID], [_Date], [UserID], [CashInHand], [Status], [TotalCash], [TotalBankTransfers], [TotalCheques], [TotalCCSlips], [TotalCashSubmitted], [TotalChequesSubmitted], [TotalCCSlipSubmitted], [TotalBankTransferSubmitted], [Note], [CloseAt], [TransferOpendBills], [ClosedBy], [CompanyCode], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [PartialDeposit], [PartialWithdraw]) VALUES (1, CAST(N'2025-02-02T19:00:16.000' AS DateTime), CAST(4 AS Numeric(18, 0)), CAST(0.0000 AS Numeric(18, 4)), N'Open', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[POSRegister] OFF
GO
SET IDENTITY_INSERT [dbo].[PriceGroup] ON 
GO
INSERT [dbo].[PriceGroup] ([Code], [Name], [RangeType], [DateFrom], [DateTo], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ID], [ProductCode], [SalePrice], [PurchasePrice]) VALUES (1, N'5% Discount', N'Unlimited', CAST(N'2025-02-02T18:59:28.000' AS DateTime), CAST(N'2025-02-02T18:59:28.000' AS DateTime), NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[PriceGroup] OFF
GO
SET IDENTITY_INSERT [dbo].[PriceGroupItems] ON 
GO
INSERT [dbo].[PriceGroupItems] ([Code], [PriceGroupId], [ProductCode], [ProductBarcode], [ProductPrice], [DIscountPR], [Discount], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (1, 1, 1, N'63899662329', CAST(285.0000 AS Numeric(18, 4)), CAST(5.0000 AS Numeric(18, 4)), CAST(15.0000 AS Numeric(18, 4)), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[PriceGroupItems] ([Code], [PriceGroupId], [ProductCode], [ProductBarcode], [ProductPrice], [DIscountPR], [Discount], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (2, 1, 2, N'79933767151', CAST(285.0000 AS Numeric(18, 4)), CAST(5.0000 AS Numeric(18, 4)), CAST(15.0000 AS Numeric(18, 4)), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[PriceGroupItems] ([Code], [PriceGroupId], [ProductCode], [ProductBarcode], [ProductPrice], [DIscountPR], [Discount], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (3, 1, 2, N'93615978428', CAST(475.0000 AS Numeric(18, 4)), CAST(5.0000 AS Numeric(18, 4)), CAST(25.0000 AS Numeric(18, 4)), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[PriceGroupItems] ([Code], [PriceGroupId], [ProductCode], [ProductBarcode], [ProductPrice], [DIscountPR], [Discount], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (4, 1, 5, N'40318616615', CAST(380.0000 AS Numeric(18, 4)), CAST(5.0000 AS Numeric(18, 4)), CAST(20.0000 AS Numeric(18, 4)), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[PriceGroupItems] ([Code], [PriceGroupId], [ProductCode], [ProductBarcode], [ProductPrice], [DIscountPR], [Discount], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (5, 1, 5, N'66517011804', CAST(570.0000 AS Numeric(18, 4)), CAST(5.0000 AS Numeric(18, 4)), CAST(30.0000 AS Numeric(18, 4)), NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[PriceGroupItems] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductsManager] ON 
GO
INSERT [dbo].[ProductsManager] ([Code], [Name], [OptionalName], [Company], [Category], [SubCategory], [ProfitCalcMethod], [PackQuantity], [CurrentStockLoose], [CurrentValue], [LastPurchasePriceLoose], [LastPurchasePricePack], [LastSalePriceLoose], [LastSalePricePack], [IsFixedPrice], [Description], [Specification], [IsActive], [LastModifiedDate], [MinimumStockLevelPack], [Expires], [Barcode], [Unit], [Color], [Size], [CompanyCode], [InventoryAccountCode], [COGSAccountCode], [IncomeAccountCode], [Bonus], [Discount], [DiscountRs], [IsService], [InventoryCheck], [TaxRate], [TaxMethod], [CalCulationMethod], [Variants], [IsIMEI], [IsDeleted], [IsSync], [MyShopsSync], [MyShopsStatus], [MyShopsPrice], [MyShopsDiscount], [MyShopsItemID], [MyShopsCatID], [MyShopsSubCatID], [MyShopsLastModifiedDate], [LastSyncDate], [Supplier1], [Supplier2], [Supplier3], [Supplier4], [Supplier5], [IsLabelPrint], [SaleUnitID], [PurchaseUnitID], [SaleTaxRateMethod], [FixedSaleTaxRate], [SaleTaxID], [SaleTaxMethod], [PurchaseTaxID], [PurchaseTaxMethod], [ReOrderLevel], [PCTCode], [BranchCode], [ProductType], [FBRItemType]) VALUES (1, N'Name', N'URDU Name', N'Brand', 1, 2, 0, N'1X1.0000', CAST(34.0000 AS Numeric(18, 4)), CAST(9590.0000 AS Numeric(18, 4)), CAST(200.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(300.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), 0, N'', N'', 1, CAST(N'2025-02-02T19:15:30.000' AS DateTime), CAST(10.000 AS Numeric(18, 3)), 0, N'63899662329', NULL, N'Green', N'Size', 1, N'', N'', N'', 0, CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), 0, 0, NULL, NULL, N'', CAST(0 AS Numeric(18, 0)), 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, -1, -1, -1, -1, NULL, 10, 10, 0, CAST(0.0000 AS Numeric(18, 4)), 1, 0, 1, 0, CAST(10.0000 AS Decimal(18, 4)), N'', NULL, 0, NULL)
GO
INSERT [dbo].[ProductsManager] ([Code], [Name], [OptionalName], [Company], [Category], [SubCategory], [ProfitCalcMethod], [PackQuantity], [CurrentStockLoose], [CurrentValue], [LastPurchasePriceLoose], [LastPurchasePricePack], [LastSalePriceLoose], [LastSalePricePack], [IsFixedPrice], [Description], [Specification], [IsActive], [LastModifiedDate], [MinimumStockLevelPack], [Expires], [Barcode], [Unit], [Color], [Size], [CompanyCode], [InventoryAccountCode], [COGSAccountCode], [IncomeAccountCode], [Bonus], [Discount], [DiscountRs], [IsService], [InventoryCheck], [TaxRate], [TaxMethod], [CalCulationMethod], [Variants], [IsIMEI], [IsDeleted], [IsSync], [MyShopsSync], [MyShopsStatus], [MyShopsPrice], [MyShopsDiscount], [MyShopsItemID], [MyShopsCatID], [MyShopsSubCatID], [MyShopsLastModifiedDate], [LastSyncDate], [Supplier1], [Supplier2], [Supplier3], [Supplier4], [Supplier5], [IsLabelPrint], [SaleUnitID], [PurchaseUnitID], [SaleTaxRateMethod], [FixedSaleTaxRate], [SaleTaxID], [SaleTaxMethod], [PurchaseTaxID], [PurchaseTaxMethod], [ReOrderLevel], [PCTCode], [BranchCode], [ProductType], [FBRItemType]) VALUES (2, N'Packaging Item', N'', N'Brand', 1, 2, 0, N'1X1.0000', CAST(-125.0000 AS Numeric(18, 4)), CAST(-14400.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), 0, N'', N'', 1, CAST(N'2025-02-02T19:15:56.000' AS DateTime), CAST(10.000 AS Numeric(18, 3)), 0, N'83146416780', NULL, N'', N'', 1, N'', N'', N'', 0, CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), 0, 0, NULL, NULL, N'', CAST(0 AS Numeric(18, 0)), 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, -1, -1, -1, -1, NULL, 15, 15, 0, CAST(0.0000 AS Numeric(18, 4)), 1, 0, 1, 0, CAST(10.0000 AS Decimal(18, 4)), N'', NULL, 1, NULL)
GO
INSERT [dbo].[ProductsManager] ([Code], [Name], [OptionalName], [Company], [Category], [SubCategory], [ProfitCalcMethod], [PackQuantity], [CurrentStockLoose], [CurrentValue], [LastPurchasePriceLoose], [LastPurchasePricePack], [LastSalePriceLoose], [LastSalePricePack], [IsFixedPrice], [Description], [Specification], [IsActive], [LastModifiedDate], [MinimumStockLevelPack], [Expires], [Barcode], [Unit], [Color], [Size], [CompanyCode], [InventoryAccountCode], [COGSAccountCode], [IncomeAccountCode], [Bonus], [Discount], [DiscountRs], [IsService], [InventoryCheck], [TaxRate], [TaxMethod], [CalCulationMethod], [Variants], [IsIMEI], [IsDeleted], [IsSync], [MyShopsSync], [MyShopsStatus], [MyShopsPrice], [MyShopsDiscount], [MyShopsItemID], [MyShopsCatID], [MyShopsSubCatID], [MyShopsLastModifiedDate], [LastSyncDate], [Supplier1], [Supplier2], [Supplier3], [Supplier4], [Supplier5], [IsLabelPrint], [SaleUnitID], [PurchaseUnitID], [SaleTaxRateMethod], [FixedSaleTaxRate], [SaleTaxID], [SaleTaxMethod], [PurchaseTaxID], [PurchaseTaxMethod], [ReOrderLevel], [PCTCode], [BranchCode], [ProductType], [FBRItemType]) VALUES (3, N'SERvice', N'', N'', 0, 0, 0, N'1X1', CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(500.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), 0, N'', N'', 1, CAST(N'2025-02-02T17:34:04.000' AS DateTime), CAST(10.000 AS Numeric(18, 3)), 0, N'38965714126', NULL, N'', N'', 1, N'', N'', N'', 0, CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), 1, 0, NULL, NULL, N'', CAST(0 AS Numeric(18, 0)), 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, -1, -1, -1, -1, NULL, 15, 15, 0, CAST(0.0000 AS Numeric(18, 4)), 1, 0, 1, 0, CAST(10.0000 AS Decimal(18, 4)), N'', NULL, 2, NULL)
GO
INSERT [dbo].[ProductsManager] ([Code], [Name], [OptionalName], [Company], [Category], [SubCategory], [ProfitCalcMethod], [PackQuantity], [CurrentStockLoose], [CurrentValue], [LastPurchasePriceLoose], [LastPurchasePricePack], [LastSalePriceLoose], [LastSalePricePack], [IsFixedPrice], [Description], [Specification], [IsActive], [LastModifiedDate], [MinimumStockLevelPack], [Expires], [Barcode], [Unit], [Color], [Size], [CompanyCode], [InventoryAccountCode], [COGSAccountCode], [IncomeAccountCode], [Bonus], [Discount], [DiscountRs], [IsService], [InventoryCheck], [TaxRate], [TaxMethod], [CalCulationMethod], [Variants], [IsIMEI], [IsDeleted], [IsSync], [MyShopsSync], [MyShopsStatus], [MyShopsPrice], [MyShopsDiscount], [MyShopsItemID], [MyShopsCatID], [MyShopsSubCatID], [MyShopsLastModifiedDate], [LastSyncDate], [Supplier1], [Supplier2], [Supplier3], [Supplier4], [Supplier5], [IsLabelPrint], [SaleUnitID], [PurchaseUnitID], [SaleTaxRateMethod], [FixedSaleTaxRate], [SaleTaxID], [SaleTaxMethod], [PurchaseTaxID], [PurchaseTaxMethod], [ReOrderLevel], [PCTCode], [BranchCode], [ProductType], [FBRItemType]) VALUES (4, N'GUN', N'', N'', 0, 0, 0, N'1X1', CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), 0, N'', N'', 1, CAST(N'2025-02-02T17:34:29.000' AS DateTime), CAST(10.000 AS Numeric(18, 3)), 0, N'63648513561', NULL, N'', N'', 1, N'', N'', N'', 0, CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), 0, 0, NULL, NULL, N'', CAST(0 AS Numeric(18, 0)), 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, -1, -1, -1, -1, NULL, 15, 15, 0, CAST(0.0000 AS Numeric(18, 4)), 1, 0, 1, 0, CAST(10.0000 AS Decimal(18, 4)), N'', NULL, 3, NULL)
GO
INSERT [dbo].[ProductsManager] ([Code], [Name], [OptionalName], [Company], [Category], [SubCategory], [ProfitCalcMethod], [PackQuantity], [CurrentStockLoose], [CurrentValue], [LastPurchasePriceLoose], [LastPurchasePricePack], [LastSalePriceLoose], [LastSalePricePack], [IsFixedPrice], [Description], [Specification], [IsActive], [LastModifiedDate], [MinimumStockLevelPack], [Expires], [Barcode], [Unit], [Color], [Size], [CompanyCode], [InventoryAccountCode], [COGSAccountCode], [IncomeAccountCode], [Bonus], [Discount], [DiscountRs], [IsService], [InventoryCheck], [TaxRate], [TaxMethod], [CalCulationMethod], [Variants], [IsIMEI], [IsDeleted], [IsSync], [MyShopsSync], [MyShopsStatus], [MyShopsPrice], [MyShopsDiscount], [MyShopsItemID], [MyShopsCatID], [MyShopsSubCatID], [MyShopsLastModifiedDate], [LastSyncDate], [Supplier1], [Supplier2], [Supplier3], [Supplier4], [Supplier5], [IsLabelPrint], [SaleUnitID], [PurchaseUnitID], [SaleTaxRateMethod], [FixedSaleTaxRate], [SaleTaxID], [SaleTaxMethod], [PurchaseTaxID], [PurchaseTaxMethod], [ReOrderLevel], [PCTCode], [BranchCode], [ProductType], [FBRItemType]) VALUES (5, N'SHIRT', N'', N'', 0, 0, 0, N'1X1.0000', CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), 0, N'', N'', 1, CAST(N'2025-02-02T17:34:54.000' AS DateTime), CAST(10.000 AS Numeric(18, 3)), 0, N'04251238821', NULL, N'', N'', 1, N'', N'', N'', 0, CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), 0, 0, NULL, NULL, N'', CAST(1 AS Numeric(18, 0)), 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, -1, -1, -1, -1, NULL, 10, 10, 0, CAST(0.0000 AS Numeric(18, 4)), 1, 0, 1, 0, CAST(10.0000 AS Decimal(18, 4)), N'', NULL, 4, NULL)
GO
SET IDENTITY_INSERT [dbo].[ProductsManager] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductsPricing] ON 
GO
INSERT [dbo].[ProductsPricing] ([Code], [ProductCode], [Quantity], [Price], [Priority], [CustomerGroupCode], [DateFrom], [DateTo], [BranchCode], [IsSync], [IsDeleted], [LastModifiedDate], [LastSyncDate], [PackageBarcode], [PackageTitle], [PackageQuantity], [PackagePrice], [PackageUnitId], [PackageCost], [PackageDiscountRs], [PackageTaxId], [PackageTaxMethod], [PackageIsActive], [PackageDiscountPR]) VALUES (1, 2, CAST(50.0000 AS Numeric(18, 4)), NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, N'79933767151', N'pkg 50g', CAST(50.0000 AS Numeric(18, 4)), CAST(300.0000 AS Numeric(18, 4)), 15, CAST(250.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), 3, 0, 1, NULL)
GO
INSERT [dbo].[ProductsPricing] ([Code], [ProductCode], [Quantity], [Price], [Priority], [CustomerGroupCode], [DateFrom], [DateTo], [BranchCode], [IsSync], [IsDeleted], [LastModifiedDate], [LastSyncDate], [PackageBarcode], [PackageTitle], [PackageQuantity], [PackagePrice], [PackageUnitId], [PackageCost], [PackageDiscountRs], [PackageTaxId], [PackageTaxMethod], [PackageIsActive], [PackageDiscountPR]) VALUES (2, 2, CAST(100.0000 AS Numeric(18, 4)), NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, N'93615978428', N'pkg 100', CAST(100.0000 AS Numeric(18, 4)), CAST(500.0000 AS Numeric(18, 4)), 15, CAST(400.0000 AS Numeric(18, 4)), CAST(10.0000 AS Numeric(18, 4)), 3, 0, 1, NULL)
GO
SET IDENTITY_INSERT [dbo].[ProductsPricing] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductsSKU] ON 
GO
INSERT [dbo].[ProductsSKU] ([Code], [ProductCode], [Attributes], [SKU], [Barcode], [Price], [Cost], [Stock], [Bonus], [CurrentValue], [InventoryAccountCode], [COGSAccountCode], [IncomeAccountCode], [BranchCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [CostPrice], [IsActive]) VALUES (1, CAST(5 AS Numeric(18, 0)), N'COLOR=GREEN,SIZE=SMALL', N'65302', N'40318616615', CAST(400.0000 AS Numeric(18, 4)), CAST(300.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), N'001-008-001', N'005-006-001', N'004-004-001', 1, NULL, NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[ProductsSKU] ([Code], [ProductCode], [Attributes], [SKU], [Barcode], [Price], [Cost], [Stock], [Bonus], [CurrentValue], [InventoryAccountCode], [COGSAccountCode], [IncomeAccountCode], [BranchCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [CostPrice], [IsActive]) VALUES (2, CAST(5 AS Numeric(18, 0)), N'COLOR=GREY,SIZE=LARGE', N'34040', N'66517011804', CAST(600.0000 AS Numeric(18, 4)), CAST(400.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), N'001-008-001', N'005-006-001', N'004-004-001', 1, NULL, NULL, NULL, NULL, NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[ProductsSKU] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductsVariants] ON 
GO
INSERT [dbo].[ProductsVariants] ([Code], [ProductCode], [VariantGroupCode], [VariantCode], [SKU], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (1, CAST(5 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(65302 AS Numeric(18, 0)), NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[ProductsVariants] ([Code], [ProductCode], [VariantGroupCode], [VariantCode], [SKU], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (2, CAST(5 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(65302 AS Numeric(18, 0)), NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[ProductsVariants] ([Code], [ProductCode], [VariantGroupCode], [VariantCode], [SKU], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (3, CAST(5 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(34040 AS Numeric(18, 0)), NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[ProductsVariants] ([Code], [ProductCode], [VariantGroupCode], [VariantCode], [SKU], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (4, CAST(5 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(34040 AS Numeric(18, 0)), NULL, NULL, NULL, NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[ProductsVariants] OFF
GO
SET IDENTITY_INSERT [dbo].[PurchaseBill] ON 
GO
INSERT [dbo].[PurchaseBill] ([Code], [POID], [PurchaseDate], [SupplierCode], [SupplierInvoiceNo], [SubTotal], [Freight], [Discount], [TotalAmount], [AppliedAmount], [CompanyCode], [UserName], [OrderTax], [TaxId], [UserID], [ItemTax], [TotalTax], [IsSync], [BranchCode], [SupplierPreBalance], [LastModifiedDate], [IsDeleted], [LastSyncDate]) VALUES (5, 1, CAST(N'2025-02-02T18:06:03.000' AS DateTime), 1, N'', CAST(16000.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(16000.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), 1, N'admin', CAST(0.0000 AS Numeric(18, 4)), 1, 4, CAST(0.0000 AS Numeric(25, 4)), CAST(0.0000 AS Numeric(25, 4)), NULL, CAST(1 AS Numeric(18, 0)), 0, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[PurchaseBill] OFF
GO
SET IDENTITY_INSERT [dbo].[PurchaseBillDetail] ON 
GO
INSERT [dbo].[PurchaseBillDetail] ([Code], [POID], [RowID], [ProductCode], [Quantity], [ExpectedSalePrice], [RetailPrice], [TradePrice], [DiscountPr], [FixedDiscount], [ExtraDiscountPr], [ExtraDiscount], [Amount], [Type], [BatchNo], [ExpiryDate], [CompanyCode], [Bonus], [TaxId], [TaxName], [TaxRate], [ItemTax], [Tax1Rate], [Tax1Value], [Tax2Rate], [Tax2Value], [ProfitRate], [ProfitValue], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ProductName], [ProductSKU], [Attributes], [Serial], [Serial1], [Serial2], [LooseQuantity], [PackSize], [TaxMethod], [ProductBarcode]) VALUES (5, CAST(1 AS Numeric(18, 0)), 1, N'2', CAST(20.000 AS Numeric(18, 3)), CAST(330.0000 AS Numeric(18, 4)), CAST(400.0000 AS Numeric(18, 4)), CAST(300.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(6000.0000 AS Numeric(18, 4)), NULL, N'', NULL, 1, CAST(0.0000 AS Numeric(18, 4)), NULL, NULL, CAST(0.0000 AS Numeric(18, 4)), NULL, CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(10.0000 AS Numeric(18, 4)), CAST(30.0000 AS Numeric(18, 4)), NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, N'pkg 50g', -1, NULL, NULL, NULL, NULL, CAST(20.0000 AS Numeric(18, 4)), N'1X1', 0, N'83146416780')
GO
INSERT [dbo].[PurchaseBillDetail] ([Code], [POID], [RowID], [ProductCode], [Quantity], [ExpectedSalePrice], [RetailPrice], [TradePrice], [DiscountPr], [FixedDiscount], [ExtraDiscountPr], [ExtraDiscount], [Amount], [Type], [BatchNo], [ExpiryDate], [CompanyCode], [Bonus], [TaxId], [TaxName], [TaxRate], [ItemTax], [Tax1Rate], [Tax1Value], [Tax2Rate], [Tax2Value], [ProfitRate], [ProfitValue], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ProductName], [ProductSKU], [Attributes], [Serial], [Serial1], [Serial2], [LooseQuantity], [PackSize], [TaxMethod], [ProductBarcode]) VALUES (6, CAST(1 AS Numeric(18, 0)), 2, N'1', CAST(50.000 AS Numeric(18, 3)), CAST(220.0000 AS Numeric(18, 4)), CAST(300.0000 AS Numeric(18, 4)), CAST(200.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(10000.0000 AS Numeric(18, 4)), NULL, N'', NULL, 1, CAST(0.0000 AS Numeric(18, 4)), NULL, NULL, CAST(0.0000 AS Numeric(18, 4)), NULL, CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(10.0000 AS Numeric(18, 4)), CAST(20.0000 AS Numeric(18, 4)), NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, N'Name', -1, NULL, NULL, NULL, NULL, CAST(50.0000 AS Numeric(18, 4)), N'1X1', 0, N'63899662329')
GO
SET IDENTITY_INSERT [dbo].[PurchaseBillDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[PurchaseReturn] ON 
GO
INSERT [dbo].[PurchaseReturn] ([Code], [PRID], [ReturnDate], [SupplierCode], [SupplierInvoiceNo], [TotalAmount], [AppliedAmount], [CompanyCode], [UserName], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate]) VALUES (1, 1, CAST(N'2025-02-02T18:30:04.000' AS DateTime), 1, N'', CAST(4000.0000 AS Numeric(18, 4)), CAST(4000.0000 AS Numeric(18, 4)), 1, N'admin', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[PurchaseReturn] OFF
GO
SET IDENTITY_INSERT [dbo].[PurchaseReturnDetail] ON 
GO
INSERT [dbo].[PurchaseReturnDetail] ([Code], [PRID], [RowID], [ProductCode], [Quantity], [ReturnPrice], [Amount], [Type], [Investment], [Profit], [BatchNo], [CompanyCode], [Bonus], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ProductBarcode], [RetailPrice], [TradePrice], [DiscountPr], [FixedDiscount], [ExtraDiscountPr], [ExtraDiscount], [ExpiryDate], [TaxId], [TaxName], [TaxRate], [ItemTax], [Tax1Rate], [Tax1Value], [Tax2Rate], [Tax2Value], [ProfitRate], [ProfitValue], [ProductName], [ProductSKU], [Attributes], [Serial], [Serial1], [Serial2], [LooseQuantity], [PackSize], [TaxMethod]) VALUES (1, CAST(1 AS Numeric(18, 0)), 1, N'1', CAST(20.000 AS Numeric(18, 3)), CAST(200.0000 AS Numeric(18, 4)), CAST(4000.0000 AS Numeric(18, 4)), NULL, NULL, NULL, N'', 1, 0, NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, N'63899662329', CAST(300.0000 AS Numeric(18, 4)), CAST(200.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), NULL, NULL, NULL, N'0', NULL, CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(10.0000 AS Numeric(18, 4)), CAST(20.0000 AS Numeric(18, 4)), N'Name', -1, NULL, NULL, NULL, NULL, CAST(20.0000 AS Numeric(18, 4)), N'1X1', 0)
GO
SET IDENTITY_INSERT [dbo].[PurchaseReturnDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[PurchasesOrder] ON 
GO
INSERT [dbo].[PurchasesOrder] ([Code], [POID], [PurchaseDate], [SupplierCode], [SupplierInvoiceNo], [SubTotal], [Freight], [Discount], [TotalAmount], [AppliedAmount], [CompanyCode], [UserName], [Converted], [OrderTax], [ItemTax], [TotalTax], [TaxId], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate]) VALUES (7, 1, CAST(N'2025-02-02T18:06:03.000' AS DateTime), 1, N'', CAST(16000.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(16000.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), 1, N'admin', 1, CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(1 AS Numeric(18, 0)), NULL, 1, CAST(N'2025-02-02T18:27:26.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PurchasesOrder] ([Code], [POID], [PurchaseDate], [SupplierCode], [SupplierInvoiceNo], [SubTotal], [Freight], [Discount], [TotalAmount], [AppliedAmount], [CompanyCode], [UserName], [Converted], [OrderTax], [ItemTax], [TotalTax], [TaxId], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate]) VALUES (8, 2, CAST(N'2025-02-02T18:13:42.000' AS DateTime), 1, N'', CAST(14000.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(14000.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), 1, N'admin', 0, CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(1 AS Numeric(18, 0)), NULL, 2, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[PurchasesOrder] OFF
GO
SET IDENTITY_INSERT [dbo].[PurchasesOrderDetail] ON 
GO
INSERT [dbo].[PurchasesOrderDetail] ([Code], [POID], [RowID], [ProductCode], [Quantity], [RetailPrice], [TradePrice], [DiscountPr], [FixedDiscount], [ExtraDiscountPr], [ExtraDiscount], [Amount], [Type], [BatchNo], [ExpiryDate], [CompanyCode], [Bonus], [TAXID], [TaxName], [TaxRate], [ItemTax], [Tax1Rate], [Tax1Value], [Tax2Rate], [Tax2Value], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [LooseQuantity], [PackSize], [TaxMethod], [ProductBarcode], [ExpectedSalePrice], [ProfitRate], [ProfitValue], [ProductName], [ProductSKU], [Attributes], [Serial], [Serial1], [Serial2]) VALUES (14, CAST(1 AS Numeric(18, 0)), 1, N'2', CAST(20.000 AS Numeric(18, 3)), CAST(400.0000 AS Numeric(18, 4)), CAST(300.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(6000.0000 AS Numeric(18, 4)), NULL, N'', NULL, 1, CAST(0.0000 AS Numeric(18, 4)), NULL, NULL, CAST(0.0000 AS Numeric(25, 4)), NULL, CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, CAST(20.0000 AS Numeric(18, 4)), N'1X1', 0, N'83146416780', CAST(330.0000 AS Numeric(18, 4)), CAST(10.0000 AS Numeric(18, 4)), CAST(30.0000 AS Numeric(18, 4)), N'pkg 50g', N'-1', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[PurchasesOrderDetail] ([Code], [POID], [RowID], [ProductCode], [Quantity], [RetailPrice], [TradePrice], [DiscountPr], [FixedDiscount], [ExtraDiscountPr], [ExtraDiscount], [Amount], [Type], [BatchNo], [ExpiryDate], [CompanyCode], [Bonus], [TAXID], [TaxName], [TaxRate], [ItemTax], [Tax1Rate], [Tax1Value], [Tax2Rate], [Tax2Value], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [LooseQuantity], [PackSize], [TaxMethod], [ProductBarcode], [ExpectedSalePrice], [ProfitRate], [ProfitValue], [ProductName], [ProductSKU], [Attributes], [Serial], [Serial1], [Serial2]) VALUES (15, CAST(1 AS Numeric(18, 0)), 2, N'1', CAST(50.000 AS Numeric(18, 3)), CAST(300.0000 AS Numeric(18, 4)), CAST(200.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(10000.0000 AS Numeric(18, 4)), NULL, N'', NULL, 1, CAST(0.0000 AS Numeric(18, 4)), NULL, NULL, CAST(0.0000 AS Numeric(25, 4)), NULL, CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, CAST(50.0000 AS Numeric(18, 4)), N'1X1', 0, N'63899662329', CAST(220.0000 AS Numeric(18, 4)), CAST(10.0000 AS Numeric(18, 4)), CAST(20.0000 AS Numeric(18, 4)), N'Name', N'-1', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[PurchasesOrderDetail] ([Code], [POID], [RowID], [ProductCode], [Quantity], [RetailPrice], [TradePrice], [DiscountPr], [FixedDiscount], [ExtraDiscountPr], [ExtraDiscount], [Amount], [Type], [BatchNo], [ExpiryDate], [CompanyCode], [Bonus], [TAXID], [TaxName], [TaxRate], [ItemTax], [Tax1Rate], [Tax1Value], [Tax2Rate], [Tax2Value], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [LooseQuantity], [PackSize], [TaxMethod], [ProductBarcode], [ExpectedSalePrice], [ProfitRate], [ProfitValue], [ProductName], [ProductSKU], [Attributes], [Serial], [Serial1], [Serial2]) VALUES (16, CAST(2 AS Numeric(18, 0)), 1, N'1', CAST(70.000 AS Numeric(18, 3)), CAST(300.0000 AS Numeric(18, 4)), CAST(200.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(14000.0000 AS Numeric(18, 4)), NULL, N'', NULL, 1, CAST(0.0000 AS Numeric(18, 4)), NULL, NULL, CAST(0.0000 AS Numeric(25, 4)), NULL, CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), NULL, CAST(2 AS Numeric(18, 0)), NULL, NULL, NULL, CAST(70.0000 AS Numeric(18, 4)), N'1X1', 0, N'63899662329', CAST(220.0000 AS Numeric(18, 4)), CAST(10.0000 AS Numeric(18, 4)), CAST(20.0000 AS Numeric(18, 4)), N'Name', N'-1', NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[PurchasesOrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Sales] ON 
GO
INSERT [dbo].[Sales] ([Code], [SaleID], [SubTotal], [Freight], [Discount], [TotalAmount], [PaidAmount], [SaleDate], [CustomerType], [CustomerCode], [OrderTakerCode], [CompanyCode], [UserName], [CustomerPrevBalance], [SaleManCode], [SalesTax], [ItemTax], [OrderTax], [TotalTax], [RealTotal], [TaxID], [IsSync], [BranchCode], [ExactPaidAmount], [Remarks], [RoundingFiger], [Status], [DiscountPR], [LastModifiedDate], [IsDeleted], [LastSyncDate], [FBRInvoiceNumber], [POSID], [IsFBRSync], [FBRSyncDate], [FBRInvoiceType], [FBRPaymentMode], [TaxMethod], [OrderType], [DeliveryBoy], [OrderRefrence], [PaidAccount], [Paid], [Refrence], [Waiter], [Difference], [TableName], [Seats], [DeliveryTime], [DeliveryStatus], [RewardPointsEarned], [RewardPointsRedeemed], [RewardPointsAmountRedeemed], [FBRStatus], [ReturnSaleID], [CreditCardCharges]) VALUES (1, 1, CAST(570.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(570.0000 AS Numeric(18, 4)), CAST(570.0000 AS Numeric(18, 4)), CAST(N'2025-02-02T19:02:55.000' AS DateTime), -1, -1, -1, 1, N'admin', CAST(0.00 AS Numeric(18, 2)), 4, CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), -1, NULL, CAST(1 AS Numeric(18, 0)), 570, N'', 0, N'Returned', 0, NULL, NULL, NULL, N'', N'943185', 0, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, NULL)
GO
INSERT [dbo].[Sales] ([Code], [SaleID], [SubTotal], [Freight], [Discount], [TotalAmount], [PaidAmount], [SaleDate], [CustomerType], [CustomerCode], [OrderTakerCode], [CompanyCode], [UserName], [CustomerPrevBalance], [SaleManCode], [SalesTax], [ItemTax], [OrderTax], [TotalTax], [RealTotal], [TaxID], [IsSync], [BranchCode], [ExactPaidAmount], [Remarks], [RoundingFiger], [Status], [DiscountPR], [LastModifiedDate], [IsDeleted], [LastSyncDate], [FBRInvoiceNumber], [POSID], [IsFBRSync], [FBRSyncDate], [FBRInvoiceType], [FBRPaymentMode], [TaxMethod], [OrderType], [DeliveryBoy], [OrderRefrence], [PaidAccount], [Paid], [Refrence], [Waiter], [Difference], [TableName], [Seats], [DeliveryTime], [DeliveryStatus], [RewardPointsEarned], [RewardPointsRedeemed], [RewardPointsAmountRedeemed], [FBRStatus], [ReturnSaleID], [CreditCardCharges]) VALUES (2, 2, CAST(570.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(570.0000 AS Numeric(18, 4)), CAST(570.0000 AS Numeric(18, 4)), CAST(N'2025-02-02T19:12:14.000' AS DateTime), -1, -1, -1, 1, N'admin', CAST(0.00 AS Numeric(18, 2)), 4, CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), -1, NULL, CAST(1 AS Numeric(18, 0)), 570, N'', 0, N'Sale Invoice', 0, NULL, NULL, NULL, N'', N'943185', 0, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, NULL)
GO
INSERT [dbo].[Sales] ([Code], [SaleID], [SubTotal], [Freight], [Discount], [TotalAmount], [PaidAmount], [SaleDate], [CustomerType], [CustomerCode], [OrderTakerCode], [CompanyCode], [UserName], [CustomerPrevBalance], [SaleManCode], [SalesTax], [ItemTax], [OrderTax], [TotalTax], [RealTotal], [TaxID], [IsSync], [BranchCode], [ExactPaidAmount], [Remarks], [RoundingFiger], [Status], [DiscountPR], [LastModifiedDate], [IsDeleted], [LastSyncDate], [FBRInvoiceNumber], [POSID], [IsFBRSync], [FBRSyncDate], [FBRInvoiceType], [FBRPaymentMode], [TaxMethod], [OrderType], [DeliveryBoy], [OrderRefrence], [PaidAccount], [Paid], [Refrence], [Waiter], [Difference], [TableName], [Seats], [DeliveryTime], [DeliveryStatus], [RewardPointsEarned], [RewardPointsRedeemed], [RewardPointsAmountRedeemed], [FBRStatus], [ReturnSaleID], [CreditCardCharges]) VALUES (3, 3, CAST(-570.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(-570.0000 AS Numeric(18, 4)), CAST(-570.0000 AS Numeric(18, 4)), CAST(N'2025-02-02T19:12:53.000' AS DateTime), -1, -1, -1, 1, N'admin', CAST(0.00 AS Numeric(18, 2)), 4, CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), -1, NULL, CAST(1 AS Numeric(18, 0)), 570, N'', 0, N'Sale Invoice', 0, NULL, NULL, NULL, N'', N'943185', 0, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL)
GO
INSERT [dbo].[Sales] ([Code], [SaleID], [SubTotal], [Freight], [Discount], [TotalAmount], [PaidAmount], [SaleDate], [CustomerType], [CustomerCode], [OrderTakerCode], [CompanyCode], [UserName], [CustomerPrevBalance], [SaleManCode], [SalesTax], [ItemTax], [OrderTax], [TotalTax], [RealTotal], [TaxID], [IsSync], [BranchCode], [ExactPaidAmount], [Remarks], [RoundingFiger], [Status], [DiscountPR], [LastModifiedDate], [IsDeleted], [LastSyncDate], [FBRInvoiceNumber], [POSID], [IsFBRSync], [FBRSyncDate], [FBRInvoiceType], [FBRPaymentMode], [TaxMethod], [OrderType], [DeliveryBoy], [OrderRefrence], [PaidAccount], [Paid], [Refrence], [Waiter], [Difference], [TableName], [Seats], [DeliveryTime], [DeliveryStatus], [RewardPointsEarned], [RewardPointsRedeemed], [RewardPointsAmountRedeemed], [FBRStatus], [ReturnSaleID], [CreditCardCharges]) VALUES (4, 4, CAST(285.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(285.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(N'2025-02-02T19:15:30.000' AS DateTime), 1, 1, -1, 1, N'admin', CAST(0.00 AS Numeric(18, 2)), 4, CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), -1, NULL, CAST(1 AS Numeric(18, 0)), 0, N'', 0, N'Sale Invoice', 0, NULL, NULL, NULL, N'', N'943185', 0, NULL, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, NULL)
GO
INSERT [dbo].[Sales] ([Code], [SaleID], [SubTotal], [Freight], [Discount], [TotalAmount], [PaidAmount], [SaleDate], [CustomerType], [CustomerCode], [OrderTakerCode], [CompanyCode], [UserName], [CustomerPrevBalance], [SaleManCode], [SalesTax], [ItemTax], [OrderTax], [TotalTax], [RealTotal], [TaxID], [IsSync], [BranchCode], [ExactPaidAmount], [Remarks], [RoundingFiger], [Status], [DiscountPR], [LastModifiedDate], [IsDeleted], [LastSyncDate], [FBRInvoiceNumber], [POSID], [IsFBRSync], [FBRSyncDate], [FBRInvoiceType], [FBRPaymentMode], [TaxMethod], [OrderType], [DeliveryBoy], [OrderRefrence], [PaidAccount], [Paid], [Refrence], [Waiter], [Difference], [TableName], [Seats], [DeliveryTime], [DeliveryStatus], [RewardPointsEarned], [RewardPointsRedeemed], [RewardPointsAmountRedeemed], [FBRStatus], [ReturnSaleID], [CreditCardCharges]) VALUES (5, 5, CAST(6475.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(6475.0000 AS Numeric(18, 4)), CAST(6475.0000 AS Numeric(18, 4)), CAST(N'2025-02-02T19:15:56.000' AS DateTime), -1, -1, -1, 1, N'admin', CAST(0.00 AS Numeric(18, 2)), 4, CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), -1, NULL, CAST(1 AS Numeric(18, 0)), 6475, N'', 0, N'Sale Invoice', 0, NULL, NULL, NULL, N'', N'943185', 0, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, NULL)
GO
SET IDENTITY_INSERT [dbo].[Sales] OFF
GO
SET IDENTITY_INSERT [dbo].[SalesDetail] ON 
GO
INSERT [dbo].[SalesDetail] ([Code], [SaleID], [RowID], [ProductCode], [ProductIMEICode], [Serial], [Type], [RetailPrice], [Quantity], [Discount], [Amount], [Investment], [Profit], [BatchNo], [CompanyCode], [Bonus], [TaxId], [TaxName], [ItemTax], [OriginalPrice], [OriginalTotal], [NOofGuards], [Description], [UnitPrice], [Days], [StylistCode], [IsSync], [BranchCode], [Employees], [DiscountPR], [LastModifiedDate], [IsDeleted], [LastSyncDate], [PackageCode], [ProductName], [UnitId], [Unit], [LooseQuantity], [TaxMethod], [TaxRate], [PCTCode], [Comments], [NameWithModifier], [SubTotal], [ProductBarcode], [FBRItemType], [ProductSKU]) VALUES (1, 1, 1, N'1', -1, NULL, N'1', CAST(300.0000 AS Numeric(18, 4)), CAST(1.000 AS Numeric(18, 3)), CAST(15.0000 AS Numeric(18, 4)), CAST(285.0000 AS Numeric(18, 4)), CAST(200.00 AS Numeric(18, 2)), CAST(85.00 AS Numeric(18, 2)), N'', 1, 0, CAST(1 AS Numeric(18, 0)), N'0.0%', 0, CAST(300.0000 AS Numeric(18, 4)), NULL, CAST(0 AS Numeric(18, 0)), N'', CAST(0.0000 AS Numeric(18, 4)), CAST(0 AS Numeric(18, 0)), NULL, NULL, CAST(1 AS Numeric(18, 0)), 0, 5, NULL, NULL, NULL, -1, N'Name URDU Name', 10, N'PCS', CAST(1.0000 AS Numeric(18, 4)), N'0', CAST(0.0000 AS Numeric(18, 4)), N'', NULL, NULL, NULL, N'63899662329', NULL, N'-1')
GO
INSERT [dbo].[SalesDetail] ([Code], [SaleID], [RowID], [ProductCode], [ProductIMEICode], [Serial], [Type], [RetailPrice], [Quantity], [Discount], [Amount], [Investment], [Profit], [BatchNo], [CompanyCode], [Bonus], [TaxId], [TaxName], [ItemTax], [OriginalPrice], [OriginalTotal], [NOofGuards], [Description], [UnitPrice], [Days], [StylistCode], [IsSync], [BranchCode], [Employees], [DiscountPR], [LastModifiedDate], [IsDeleted], [LastSyncDate], [PackageCode], [ProductName], [UnitId], [Unit], [LooseQuantity], [TaxMethod], [TaxRate], [PCTCode], [Comments], [NameWithModifier], [SubTotal], [ProductBarcode], [FBRItemType], [ProductSKU]) VALUES (2, 1, 2, N'2', -1, NULL, N'2', CAST(300.0000 AS Numeric(18, 4)), CAST(1.000 AS Numeric(18, 3)), CAST(15.0000 AS Numeric(18, 4)), CAST(285.0000 AS Numeric(18, 4)), CAST(250.00 AS Numeric(18, 2)), CAST(35.00 AS Numeric(18, 2)), N'', 1, 0, CAST(1 AS Numeric(18, 0)), N'0.0%', 0, CAST(300.0000 AS Numeric(18, 4)), NULL, CAST(0 AS Numeric(18, 0)), N'', CAST(0.0000 AS Numeric(18, 4)), CAST(0 AS Numeric(18, 0)), NULL, NULL, CAST(1 AS Numeric(18, 0)), 0, 5, NULL, NULL, NULL, 1, N'pkg 50g', 15, N'Gram', CAST(50.0000 AS Numeric(18, 4)), N'0', CAST(12.0000 AS Numeric(18, 4)), N'', NULL, NULL, NULL, N'79933767151', NULL, N'-1')
GO
INSERT [dbo].[SalesDetail] ([Code], [SaleID], [RowID], [ProductCode], [ProductIMEICode], [Serial], [Type], [RetailPrice], [Quantity], [Discount], [Amount], [Investment], [Profit], [BatchNo], [CompanyCode], [Bonus], [TaxId], [TaxName], [ItemTax], [OriginalPrice], [OriginalTotal], [NOofGuards], [Description], [UnitPrice], [Days], [StylistCode], [IsSync], [BranchCode], [Employees], [DiscountPR], [LastModifiedDate], [IsDeleted], [LastSyncDate], [PackageCode], [ProductName], [UnitId], [Unit], [LooseQuantity], [TaxMethod], [TaxRate], [PCTCode], [Comments], [NameWithModifier], [SubTotal], [ProductBarcode], [FBRItemType], [ProductSKU]) VALUES (3, 2, 1, N'1', -1, NULL, N'1', CAST(300.0000 AS Numeric(18, 4)), CAST(1.000 AS Numeric(18, 3)), CAST(15.0000 AS Numeric(18, 4)), CAST(285.0000 AS Numeric(18, 4)), CAST(200.00 AS Numeric(18, 2)), CAST(85.00 AS Numeric(18, 2)), N'', 1, 0, CAST(1 AS Numeric(18, 0)), N'0.0%', 0, CAST(300.0000 AS Numeric(18, 4)), NULL, CAST(0 AS Numeric(18, 0)), N'', CAST(300.0000 AS Numeric(18, 4)), CAST(0 AS Numeric(18, 0)), NULL, NULL, CAST(1 AS Numeric(18, 0)), 0, 5, NULL, NULL, NULL, -1, N'Name URDU Name', 10, N'PCS', CAST(1.0000 AS Numeric(18, 4)), N'0', CAST(0.0000 AS Numeric(18, 4)), N'', NULL, NULL, NULL, N'63899662329', NULL, N'-1')
GO
INSERT [dbo].[SalesDetail] ([Code], [SaleID], [RowID], [ProductCode], [ProductIMEICode], [Serial], [Type], [RetailPrice], [Quantity], [Discount], [Amount], [Investment], [Profit], [BatchNo], [CompanyCode], [Bonus], [TaxId], [TaxName], [ItemTax], [OriginalPrice], [OriginalTotal], [NOofGuards], [Description], [UnitPrice], [Days], [StylistCode], [IsSync], [BranchCode], [Employees], [DiscountPR], [LastModifiedDate], [IsDeleted], [LastSyncDate], [PackageCode], [ProductName], [UnitId], [Unit], [LooseQuantity], [TaxMethod], [TaxRate], [PCTCode], [Comments], [NameWithModifier], [SubTotal], [ProductBarcode], [FBRItemType], [ProductSKU]) VALUES (4, 2, 2, N'2', -1, NULL, N'2', CAST(300.0000 AS Numeric(18, 4)), CAST(1.000 AS Numeric(18, 3)), CAST(15.0000 AS Numeric(18, 4)), CAST(285.0000 AS Numeric(18, 4)), CAST(250.00 AS Numeric(18, 2)), CAST(35.00 AS Numeric(18, 2)), N'', 1, 0, CAST(3 AS Numeric(18, 0)), N'12%', 0, CAST(300.0000 AS Numeric(18, 4)), NULL, CAST(0 AS Numeric(18, 0)), N'', CAST(300.0000 AS Numeric(18, 4)), CAST(0 AS Numeric(18, 0)), NULL, NULL, CAST(1 AS Numeric(18, 0)), 0, 5, NULL, NULL, NULL, 1, N'pkg 50g', 15, N'Gram', CAST(50.0000 AS Numeric(18, 4)), N'0', CAST(12.0000 AS Numeric(18, 4)), N'', NULL, NULL, NULL, N'79933767151', NULL, N'-1')
GO
INSERT [dbo].[SalesDetail] ([Code], [SaleID], [RowID], [ProductCode], [ProductIMEICode], [Serial], [Type], [RetailPrice], [Quantity], [Discount], [Amount], [Investment], [Profit], [BatchNo], [CompanyCode], [Bonus], [TaxId], [TaxName], [ItemTax], [OriginalPrice], [OriginalTotal], [NOofGuards], [Description], [UnitPrice], [Days], [StylistCode], [IsSync], [BranchCode], [Employees], [DiscountPR], [LastModifiedDate], [IsDeleted], [LastSyncDate], [PackageCode], [ProductName], [UnitId], [Unit], [LooseQuantity], [TaxMethod], [TaxRate], [PCTCode], [Comments], [NameWithModifier], [SubTotal], [ProductBarcode], [FBRItemType], [ProductSKU]) VALUES (5, 3, 1, N'1', -1, NULL, N'1', CAST(300.0000 AS Numeric(18, 4)), CAST(-1.000 AS Numeric(18, 3)), CAST(15.0000 AS Numeric(18, 4)), CAST(-285.0000 AS Numeric(18, 4)), CAST(-200.00 AS Numeric(18, 2)), CAST(-85.00 AS Numeric(18, 2)), N'', 1, 0, CAST(1 AS Numeric(18, 0)), N'0.0%', 0, CAST(300.0000 AS Numeric(18, 4)), NULL, CAST(0 AS Numeric(18, 0)), N'', CAST(0.0000 AS Numeric(18, 4)), CAST(0 AS Numeric(18, 0)), NULL, NULL, CAST(1 AS Numeric(18, 0)), 0, 5, NULL, NULL, NULL, -1, N'Name URDU Name', 10, N'PCS', CAST(-1.0000 AS Numeric(18, 4)), N'0', CAST(0.0000 AS Numeric(18, 4)), N'', NULL, NULL, NULL, N'63899662329', NULL, N'-1')
GO
INSERT [dbo].[SalesDetail] ([Code], [SaleID], [RowID], [ProductCode], [ProductIMEICode], [Serial], [Type], [RetailPrice], [Quantity], [Discount], [Amount], [Investment], [Profit], [BatchNo], [CompanyCode], [Bonus], [TaxId], [TaxName], [ItemTax], [OriginalPrice], [OriginalTotal], [NOofGuards], [Description], [UnitPrice], [Days], [StylistCode], [IsSync], [BranchCode], [Employees], [DiscountPR], [LastModifiedDate], [IsDeleted], [LastSyncDate], [PackageCode], [ProductName], [UnitId], [Unit], [LooseQuantity], [TaxMethod], [TaxRate], [PCTCode], [Comments], [NameWithModifier], [SubTotal], [ProductBarcode], [FBRItemType], [ProductSKU]) VALUES (6, 3, 2, N'2', -1, NULL, N'2', CAST(300.0000 AS Numeric(18, 4)), CAST(-1.000 AS Numeric(18, 3)), CAST(15.0000 AS Numeric(18, 4)), CAST(-285.0000 AS Numeric(18, 4)), CAST(-250.00 AS Numeric(18, 2)), CAST(-35.00 AS Numeric(18, 2)), N'', 1, 0, CAST(3 AS Numeric(18, 0)), N'12%', 0, CAST(300.0000 AS Numeric(18, 4)), NULL, CAST(0 AS Numeric(18, 0)), N'', CAST(0.0000 AS Numeric(18, 4)), CAST(0 AS Numeric(18, 0)), NULL, NULL, CAST(1 AS Numeric(18, 0)), 0, 5, NULL, NULL, NULL, 1, N'pkg 50g', 15, N'Gram', CAST(-50.0000 AS Numeric(18, 4)), N'0', CAST(12.0000 AS Numeric(18, 4)), N'', NULL, NULL, NULL, N'79933767151', NULL, N'-1')
GO
INSERT [dbo].[SalesDetail] ([Code], [SaleID], [RowID], [ProductCode], [ProductIMEICode], [Serial], [Type], [RetailPrice], [Quantity], [Discount], [Amount], [Investment], [Profit], [BatchNo], [CompanyCode], [Bonus], [TaxId], [TaxName], [ItemTax], [OriginalPrice], [OriginalTotal], [NOofGuards], [Description], [UnitPrice], [Days], [StylistCode], [IsSync], [BranchCode], [Employees], [DiscountPR], [LastModifiedDate], [IsDeleted], [LastSyncDate], [PackageCode], [ProductName], [UnitId], [Unit], [LooseQuantity], [TaxMethod], [TaxRate], [PCTCode], [Comments], [NameWithModifier], [SubTotal], [ProductBarcode], [FBRItemType], [ProductSKU]) VALUES (7, 4, 1, N'1', -1, NULL, N'1', CAST(300.0000 AS Numeric(18, 4)), CAST(1.000 AS Numeric(18, 3)), CAST(15.0000 AS Numeric(18, 4)), CAST(285.0000 AS Numeric(18, 4)), CAST(200.00 AS Numeric(18, 2)), CAST(85.00 AS Numeric(18, 2)), N'', 1, 0, CAST(1 AS Numeric(18, 0)), N'0.0%', 0, CAST(300.0000 AS Numeric(18, 4)), NULL, CAST(0 AS Numeric(18, 0)), N'', CAST(0.0000 AS Numeric(18, 4)), CAST(0 AS Numeric(18, 0)), NULL, NULL, CAST(1 AS Numeric(18, 0)), 0, 5, NULL, NULL, NULL, -1, N'Name URDU Name', 10, N'PCS', CAST(1.0000 AS Numeric(18, 4)), N'0', CAST(0.0000 AS Numeric(18, 4)), N'', NULL, NULL, NULL, N'63899662329', NULL, N'-1')
GO
INSERT [dbo].[SalesDetail] ([Code], [SaleID], [RowID], [ProductCode], [ProductIMEICode], [Serial], [Type], [RetailPrice], [Quantity], [Discount], [Amount], [Investment], [Profit], [BatchNo], [CompanyCode], [Bonus], [TaxId], [TaxName], [ItemTax], [OriginalPrice], [OriginalTotal], [NOofGuards], [Description], [UnitPrice], [Days], [StylistCode], [IsSync], [BranchCode], [Employees], [DiscountPR], [LastModifiedDate], [IsDeleted], [LastSyncDate], [PackageCode], [ProductName], [UnitId], [Unit], [LooseQuantity], [TaxMethod], [TaxRate], [PCTCode], [Comments], [NameWithModifier], [SubTotal], [ProductBarcode], [FBRItemType], [ProductSKU]) VALUES (8, 5, 1, N'-1', 0, NULL, N'1', CAST(2000.0000 AS Numeric(18, 4)), CAST(3.000 AS Numeric(18, 3)), CAST(0.0000 AS Numeric(18, 4)), CAST(6000.0000 AS Numeric(18, 4)), CAST(0.00 AS Numeric(18, 2)), CAST(6000.00 AS Numeric(18, 2)), N'0', 1, 0, CAST(1 AS Numeric(18, 0)), N'0.0%', 0, CAST(2000.0000 AS Numeric(18, 4)), NULL, CAST(0 AS Numeric(18, 0)), N'', CAST(2000.0000 AS Numeric(18, 4)), CAST(0 AS Numeric(18, 0)), NULL, NULL, CAST(1 AS Numeric(18, 0)), 0, 0, NULL, NULL, NULL, 0, N'New Ope', -1, N'PCS', CAST(3.0000 AS Numeric(18, 4)), N'0', CAST(0.0000 AS Numeric(18, 4)), N'', NULL, NULL, NULL, N'80410621955', NULL, N'0')
GO
INSERT [dbo].[SalesDetail] ([Code], [SaleID], [RowID], [ProductCode], [ProductIMEICode], [Serial], [Type], [RetailPrice], [Quantity], [Discount], [Amount], [Investment], [Profit], [BatchNo], [CompanyCode], [Bonus], [TaxId], [TaxName], [ItemTax], [OriginalPrice], [OriginalTotal], [NOofGuards], [Description], [UnitPrice], [Days], [StylistCode], [IsSync], [BranchCode], [Employees], [DiscountPR], [LastModifiedDate], [IsDeleted], [LastSyncDate], [PackageCode], [ProductName], [UnitId], [Unit], [LooseQuantity], [TaxMethod], [TaxRate], [PCTCode], [Comments], [NameWithModifier], [SubTotal], [ProductBarcode], [FBRItemType], [ProductSKU]) VALUES (9, 5, 2, N'2', -1, NULL, N'2', CAST(500.0000 AS Numeric(18, 4)), CAST(1.000 AS Numeric(18, 3)), CAST(25.0000 AS Numeric(18, 4)), CAST(475.0000 AS Numeric(18, 4)), CAST(400.00 AS Numeric(18, 2)), CAST(75.00 AS Numeric(18, 2)), N'', 1, 0, CAST(1 AS Numeric(18, 0)), N'0.0%', 0, CAST(500.0000 AS Numeric(18, 4)), NULL, CAST(0 AS Numeric(18, 0)), N'', CAST(0.0000 AS Numeric(18, 4)), CAST(0 AS Numeric(18, 0)), NULL, NULL, CAST(1 AS Numeric(18, 0)), 0, 5, NULL, NULL, NULL, 2, N'pkg 100', 15, N'Gram', CAST(100.0000 AS Numeric(18, 4)), N'0', CAST(12.0000 AS Numeric(18, 4)), N'', NULL, NULL, NULL, N'93615978428', NULL, N'-1')
GO
SET IDENTITY_INSERT [dbo].[SalesDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[SalesOrder] ON 
GO
INSERT [dbo].[SalesOrder] ([Code], [SaleID], [SubTotal], [Freight], [Discount], [TotalAmount], [PaidAmount], [SaleDate], [CustomerType], [CustomerCode], [OrderTakerCode], [CompanyCode], [UserName], [CustomerPrevBalance], [Converted], [TaxID], [OrderTax], [ItemTax], [TotalTax], [IsSync], [BranchCode], [Remarks], [LastModifiedDate], [IsDeleted], [LastSyncDate]) VALUES (1, 1, CAST(570.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(570.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(N'2025-02-02T19:11:53.000' AS DateTime), -1, -1, -1, 1, N'admin', CAST(0.0000 AS Numeric(18, 4)), 1, -1, CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), NULL, CAST(1 AS Numeric(18, 0)), N'', CAST(N'2025-02-02T19:12:14.000' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[SalesOrder] OFF
GO
SET IDENTITY_INSERT [dbo].[SalesOrderDetail] ON 
GO
INSERT [dbo].[SalesOrderDetail] ([Code], [SaleID], [RowID], [ProductCode], [Type], [RetailPrice], [Quantity], [Discount], [Amount], [Investment], [Profit], [BatchNo], [CompanyCode], [Bonus], [TaxID], [TaxName], [TaxRate], [ItemTax], [OriginalPrice], [OriginalTotal], [NOofGuards], [Description], [UnitPrice], [Days], [StylistCode], [IsSync], [BranchCode], [Employees], [LastModifiedDate], [IsDeleted], [LastSyncDate], [LooseQuantity], [ProductIMEICode], [Serial], [DiscountPR], [PackageCode], [ProductName], [UnitId], [Unit], [TaxMethod], [PCTCode], [Comments], [NameWithModifier], [SubTotal], [ProductBarcode], [FBRItemType], [ProductSKU]) VALUES (1, CAST(1 AS Numeric(18, 0)), 1, N'1', N'1', CAST(300.0000 AS Numeric(18, 4)), CAST(1.000 AS Numeric(18, 3)), CAST(15.0000 AS Numeric(18, 4)), CAST(285.0000 AS Numeric(18, 4)), CAST(200.0000 AS Numeric(18, 4)), CAST(85.0000 AS Numeric(18, 4)), N'', 1, 0, 1, N'0.0%', 0, CAST(0.0000 AS Numeric(18, 4)), CAST(300.0000 AS Numeric(18, 4)), NULL, CAST(0 AS Numeric(18, 0)), N'', CAST(0.0000 AS Numeric(18, 4)), CAST(0 AS Numeric(18, 0)), NULL, NULL, CAST(1 AS Numeric(18, 0)), 0, NULL, NULL, NULL, CAST(1.0000 AS Numeric(18, 4)), -1, NULL, 5, -1, N'Name URDU Name', 10, N'PCS', N'0', N'', NULL, NULL, NULL, N'63899662329', NULL, N'-1')
GO
INSERT [dbo].[SalesOrderDetail] ([Code], [SaleID], [RowID], [ProductCode], [Type], [RetailPrice], [Quantity], [Discount], [Amount], [Investment], [Profit], [BatchNo], [CompanyCode], [Bonus], [TaxID], [TaxName], [TaxRate], [ItemTax], [OriginalPrice], [OriginalTotal], [NOofGuards], [Description], [UnitPrice], [Days], [StylistCode], [IsSync], [BranchCode], [Employees], [LastModifiedDate], [IsDeleted], [LastSyncDate], [LooseQuantity], [ProductIMEICode], [Serial], [DiscountPR], [PackageCode], [ProductName], [UnitId], [Unit], [TaxMethod], [PCTCode], [Comments], [NameWithModifier], [SubTotal], [ProductBarcode], [FBRItemType], [ProductSKU]) VALUES (2, CAST(1 AS Numeric(18, 0)), 2, N'2', N'2', CAST(300.0000 AS Numeric(18, 4)), CAST(1.000 AS Numeric(18, 3)), CAST(15.0000 AS Numeric(18, 4)), CAST(285.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(285.0000 AS Numeric(18, 4)), N'', 1, 0, 1, N'0.0%', 12, CAST(0.0000 AS Numeric(18, 4)), CAST(300.0000 AS Numeric(18, 4)), NULL, CAST(0 AS Numeric(18, 0)), N'', CAST(0.0000 AS Numeric(18, 4)), CAST(0 AS Numeric(18, 0)), NULL, NULL, CAST(1 AS Numeric(18, 0)), 0, NULL, NULL, NULL, CAST(50.0000 AS Numeric(18, 4)), -1, NULL, 5, 1, N'pkg 50g', 15, N'Gram', N'0', N'', NULL, NULL, NULL, N'79933767151', NULL, N'-1')
GO
SET IDENTITY_INSERT [dbo].[SalesOrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[SampleFiles] ON 
GO
INSERT [dbo].[SampleFiles] ([Code], [Name], [FileDetail], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ID], [BranchCode]) VALUES (1, N'ProductsManager', 0xD0CF11E0A1B11AE1000000000000000000000000000000003E000300FEFF090006000000000000000000000001000000510000000000000000100000FEFFFFFF00000000FEFFFFFF0000000050000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF09081000000605006632CD07C9C0010006060000E1000200B004C10002000000E20000005C0070000300006D61732020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202042000200B004610102000000C00100003D01020001009C0002001100190002000000120002000000130002000000AF0102000000BC01020000003D00120068014B009F424E2A380000000000010058024000020000008D00020000002200020000000E0002000100B70102000000DA000200000031002A00C8000000FF7F900100000000007F0D014D0053002000530061006E00730020005300650072006900660031002A00C8000100FF7FBC0200000000007F0D014D0053002000530061006E00730020005300650072006900660031002A00C8000200FF7F900100000000007F0D014D0053002000530061006E00730020005300650072006900660031002A00C8000300FF7FBC0200000000007F0D014D0053002000530061006E00730020005300650072006900660031002A00C8000000FF7F900100000002007F0D014D0053002000530061006E00730020005300650072006900660031002A00C80004000C00900100000102007F0D014D0053002000530061006E00730020005300650072006900660031002A00C80004000E00900100000102007F0D014D0053002000530061006E00730020005300650072006900660031001E00DC000000080090010000000200000701430061006C00690062007200690031001E00DC000000090090010000000200000701430061006C00690062007200690031001E00DC000000140090010000000200000701430061006C00690062007200690031001E00DC0001003400BC020000000200000701430061006C00690062007200690031001E00DC0001000900BC020000000200000701430061006C00690062007200690031001E00DC000200170090010000000200000701430061006C00690062007200690031001E00DC000000110090010000000200000701430061006C00690062007200690031001E002C0101003800BC020000000200000701430061006C00690062007200690031001E00040101003800BC020000000200000701430061006C00690062007200690031001E00DC0001003800BC020000000200000701430061006C00690062007200690031001E00DC0000003E0090010000000200000701430061006C00690062007200690031001E00DC000000340090010000000200000701430061006C00690062007200690031001E00DC0000003C0090010000000200000701430061006C00690062007200690031001E00DC0001003F00BC020000000200000701430061006C00690062007200690031001E00680101003800BC020000000200000701430061006D00620072006900610031001E00DC0001000800BC020000000200000701430061006C00690062007200690031001E00DC0000000A0090010000000200000701430061006C00690062007200690031001C00B40000000800900100000000000006015400610068006F006D0061001E041C000500170000222422232C2323305F293B5C28222422232C2323305C291E04210006001C0000222422232C2323305F293B5B5265645D5C28222422232C2323305C291E04220007001D0000222422232C2323302E30305F293B5C28222422232C2323302E30305C291E0427000800220000222422232C2323302E30305F293B5B5265645D5C28222422232C2323302E30305C291E0437002A003200005F282224222A20232C2323305F293B5F282224222A205C28232C2323305C293B5F282224222A20222D225F293B5F28405F291E042E0029002900005F282A20232C2323305F293B5F282A205C28232C2323305C293B5F282A20222D225F293B5F28405F291E043F002C003A00005F282224222A20232C2323302E30305F293B5F282224222A205C28232C2323302E30305C293B5F282224222A20222D223F3F5F293B5F28405F291E0436002B003100005F282A20232C2323302E30305F293B5F282A205C28232C2323302E30305C293B5F282A20222D223F3F5F293B5F28405F291E041B00A4001600005B242D3430395D645C206D6D6D6D5C2C5C20797979791E041A00A5001500005B242D3430395D683A6D6D3A73735C20414D2F504D1E040F00A6000A0000302E30303030452B30301E041000A7000B0000302E3030303030452B30301E041100A8000C0000302E303030303030452B30301E041200A9000D0000302E30303030303030452B30301E041300AA000E0000302E3030303030303030452B30301E041400AB000F0000302E303030303030303030452B30301E041500AC00100000302E30303030303030303030452B30301E041600AD00110000302E3030303030303030303030452B30301E041700AE00120000302E303030303030303030303030452B30301E041800AF00130000302E30303030303030303030303030452B30301E040800B000030000302E301E040E00B100090000232C2323302E3030301E040F00B2000A0000232C2323302E303030301E041000B3000B0000232C2323302E30303030301E041100B4000C0000232C2323302E3030303030301E040C00B500070000232C2323302E30E000140000000000F5FF200000000000000000000000C020E000140001000000F5FF200000F40000000000000000C020E000140001000000F5FF200000F40000000000000000C020E000140002000000F5FF200000F40000000000000000C020E000140002000000F5FF200000F40000000000000000C020E000140000000000F5FF200000F40000000000000000C020E000140000000000F5FF200000F40000000000000000C020E000140000000000F5FF200000F40000000000000000C020E000140000000000F5FF200000F40000000000000000C020E000140000000000F5FF200000F40000000000000000C020E000140000000000F5FF200000F40000000000000000C020E000140000000000F5FF200000F40000000000000000C020E000140000000000F5FF200000F40000000000000000C020E000140000000000F5FF200000F40000000000000000C020E000140000000000F5FF200000F40000000000000000C020E0001400000000000100200000000000000000000000C020E000140008000000F5FF200000B400000000000000049F20E000140008000000F5FF200000B40000000000000004AD20E000140008000000F5FF200000B40000000000000004AA20E000140008000000F5FF200000B40000000000000004AE20E000140008000000F5FF200000B400000000000000049B20E000140008000000F5FF200000B40000000000000004AF20E000140008000000F5FF200000B40000000000000004AC20E000140008000000F5FF200000B400000000000000049D20E000140008000000F5FF200000B400000000000000048B20E000140008000000F5FF200000B40000000000000004AE20E000140008000000F5FF200000B40000000000000004AC20E000140008000000F5FF200000B40000000000000004B320E000140009000000F5FF200000B400000000000000049E20E000140009000000F5FF200000B400000000000000049D20E000140009000000F5FF200000B400000000000000048B20E000140009000000F5FF200000B40000000000000004A420E000140009000000F5FF200000B40000000000000004B120E000140009000000F5FF200000B40000000000000004B420E000140009000000F5FF200000B40000000000000004BE20E000140009000000F5FF200000B400000000000000048A20E000140009000000F5FF200000B40000000000000004B920E000140009000000F5FF200000B40000000000000004A420E000140009000000F5FF200000B40000000000000004B120E000140009000000F5FF200000B40000000000000004B520E00014000A000000F5FF200000B40000000000000004AD20E00014000B000000F5FF200000941111970B970B00049620E00014000C000000F5FF200000946666BF1FBF1F0004B720E000140005002B00F5FF200000F80000000000000000C020E000140005002900F5FF200000F80000000000000000C020E000140005002C00F5FF200000F80000000000000000C020E000140005002A00F5FF200000F80000000000000000C020E00014000D000000F5FF200000F40000000000000000C020E000140007000000F5FF200000F40000000000000000C020E00014000E000000F5FF200000B40000000000000004AA20E00014000F000000F5FF200000D400500000001F0000C020E000140010000000F5FF200000D400500000000B0000C020E000140011000000F5FF200000D400200000000F0000C020E000140011000000F5FF200000F40000000000000000C020E000140006000000F5FF200000F40000000000000000C020E000140012000000F5FF200000941111970B970B0004AF20E000140013000000F5FF200000D400600000001A0000C020E000140014000000F5FF200000B40000000000000004AB20E000140005000000F5FF2000009C1111160B160B00049A20E000140015000000F5FF200000941111BF1FBF1F00049620E000140005000900F5FF200000F80000000000000000C020E000140016000000F5FF200000F40000000000000000C020E000140017000000F5FF200000D4006100003E1F0000C020E000140018000000F5FF200000F40000000000000000C020E00014001900310001001000407C01113700B71B00068920E00014001900040001001300407C1111B71BB71B000689207C0814007C08000000000000000000000000420071D9B2C97D0841007D080000000000000000000000001000000003000D001400030000000100000030305C293B5F282A0E000500020400140003006566040000003B5F28405F2920207D0841007D080000000000000000000000001100000003000D001400030000000100000030305C293B5F282A0E000500020400140003006566050000003B5F28405F2920207D0841007D080000000000000000000000001200000003000D001400030000000100000030305C293B5F282A0E000500020400140003006566060000003B5F28405F2920207D0841007D080000000000000000000000001300000003000D001400030000000100000030305C293B5F282A0E000500020400140003006566070000003B5F28405F2920207D0841007D080000000000000000000000001400000003000D001400030000000100000030305C293B5F282A0E000500020400140003006566080000003B5F28405F2920207D0841007D080000000000000000000000001500000003000D001400030000000100000030305C293B5F282A0E000500020400140003006566090000003B5F28405F2920207D0841007D080000000000000000000000001600000003000D001400030000000100000030305C293B5F282A0E00050002040014000300CC4C040000003B5F28405F2920207D0841007D080000000000000000000000001700000003000D001400030000000100000030305C293B5F282A0E00050002040014000300CC4C050000003B5F28405F2920207D0841007D080000000000000000000000001800000003000D001400030000000100000030305C293B5F282A0E00050002040014000300CC4C060000003B5F28405F2920207D0841007D080000000000000000000000001900000003000D001400030000000100000030305C293B5F282A0E00050002040014000300CC4C070000003B5F28405F2920207D0841007D080000000000000000000000001A00000003000D001400030000000100000030305C293B5F282A0E00050002040014000300CC4C080000003B5F28405F2920207D0841007D080000000000000000000000001B00000003000D001400030000000100000030305C293B5F282A0E00050002040014000300CC4C090000003B5F28405F2920207D0841007D080000000000000000000000001C00000003000D001400030000000000000030305C293B5F282A0E000500020400140003003233040000003B5F28405F2920207D0841007D080000000000000000000000001D00000003000D001400030000000000000030305C293B5F282A0E000500020400140003003233050000003B5F28405F2920207D0841007D080000000000000000000000001E00000003000D001400030000000000000030305C293B5F282A0E000500020400140003003233060000003B5F28405F2920207D0841007D080000000000000000000000001F00000003000D001400030000000000000030305C293B5F282A0E000500020400140003003233070000003B5F28405F2920207D0841007D080000000000000000000000002000000003000D001400030000000000000030305C293B5F282A0E000500020400140003003233080000003B5F28405F2920207D0841007D080000000000000000000000002100000003000D001400030000000000000030305C293B5F282A0E000500020400140003003233090000003B5F28405F2920207D0841007D080000000000000000000000002200000003000D001400030000000000000030305C293B5F282A0E000500020400140003000000040000003B5F28405F2920207D0841007D080000000000000000000000002300000003000D001400030000000000000030305C293B5F282A0E000500020400140003000000050000003B5F28405F2920207D0841007D080000000000000000000000002400000003000D001400030000000000000030305C293B5F282A0E000500020400140003000000060000003B5F28405F2920207D0841007D080000000000000000000000002500000003000D001400030000000000000030305C293B5F282A0E000500020400140003000000070000003B5F28405F2920207D0841007D080000000000000000000000002600000003000D001400030000000000000030305C293B5F282A0E000500020400140003000000080000003B5F28405F2920207D0841007D080000000000000000000000002700000003000D001400030000000000000030305C293B5F282A0E000500020400140003000000090000003B5F28405F2920207D0841007D080000000000000000000000002800000003000D001400020000009C0006FF30305C293B5F282A0E000500020400140002000000FFC7CEFF3B5F28405F2920207D0891007D080000000000000000000000002900000007000D00140002000000FA7D00FF30305C293B5F282A0E000500020400140002000000F2F2F2FF3B5F28405F29202007001400020000007F7F7FFF202020202020202008001400020000007F7F7FFF202020202020202009001400020000007F7F7FFF00000000000000000A001400020000007F7F7FFF00000000000000007D0891007D080000000000000000000000002A00000007000D001400030000000000000030305C293B5F282A0E000500020400140002000000A5A5A5FF3B5F28405F29202007001400020000003F3F3FFF202020202020202008001400020000003F3F3FFF202020202020202009001400020000003F3F3FFF00000000000000000A001400020000003F3F3FFF00000000000000007D082D007D080000000000000000000000002F00000002000D001400020000007F7F7FFF30305C293B5F282A0E000500027D0841007D080000000000000000000000003100000003000D00140002000000006100FF30305C293B5F282A0E000500020400140002000000C6EFCEFF3B5F28405F2920207D0841007D080000000000000000000000003200000003000D001400030000000300000030305C293B5F282A0E000500020800140003000000040000003B5F28405F2920207D0841007D080000000000000000000000003300000003000D001400030000000300000030305C293B5F282A0E00050002080014000300FF3F040000003B5F28405F2920207D0841007D080000000000000000000000003400000003000D001400030000000300000030305C293B5F282A0E000500020800140003003233040000003B5F28405F2920207D082D007D080000000000000000000000003500000002000D001400030000000300000030305C293B5F282A0E000500027D0891007D080000000000000000000000003700000007000D001400020000003F3F76FF30305C293B5F282A0E000500020400140002000000FFCC99FF3B5F28405F29202007001400020000007F7F7FFF202020202020202008001400020000007F7F7FFF202020202020202009001400020000007F7F7FFF00000000000000000A001400020000007F7F7FFF00000000000000007D0841007D080000000000000000000000003800000003000D00140002000000FA7D00FF30305C293B5F282A0E000500020800140002000000FF8001FF3B5F28405F2920207D0841007D080000000000000000000000003900000003000D001400020000009C6500FF30305C293B5F282A0E000500020400140002000000FFEB9CFF3B5F28405F2920207D0878007D080000000000000000000000003A00000005000400140002000000FFFFCCFF30305C293B5F282A0700140002000000B2B2B2FF00FFEB9CFF3B5F280800140002000000B2B2B2FF007F7F7FFF2020200900140002000000B2B2B2FF007F7F7FFF2020200A00140002000000B2B2B2FF007F7F7FFF0000007D0891007D080000000000000000000000003B00000007000D001400020000003F3F3FFF30305C293B5F282A0E000500020400140002000000F2F2F2FF3B5F28080014000207001400020000003F3F3FFF202020090014000208001400020000003F3F3FFF2020200A0014000209001400020000003F3F3FFF00000000000000000A001400020000003F3F3FFF00000000000000007D082D007D080000000000000000000000003D00000002000D001400030000000300000030305C293B5F282A0E000500017D0855007D080000000000000000000000003E00000004000D001400030000000100000030305C293B5F282A0E000500020700140003000000040000003B5F28080014000208001400030000000400000020202009001400027D082D007D080000000000000000000000003F00000002000D00140002000000FF0000FF30305C293B5F282A0E000500027D0878007D080000000000000000000000004000000005000D00140002000000000000FF30305C293B5F282A0400140002000000FFFFFFFF00040000003B5F280700140002000000A9A9A9FF00040000002020200800140002000000A9A9A9FF003F3F3FFF2020200900140002000000A9A9A9FF003F3F3FFF0000007D088C007D080000000000000000000000004100000006000D00140002000000000000FF30305C293B5F282A0400140002000000FFFFFFFF00040000003B5F280700140002000000A9A9A9FF00040000002020200800140002000000A9A9A9FF003F3F3FFF2020200900140002000000A9A9A9FF003F3F3FFF0000000A00140002000000A9A9A9FF003F3F3FFF0000009302120010000D0000323025202D20416363656E743192084D0092080000000000000000000001041EFF0D0032003000250020002D00200041006300630065006E00740031000000030001000C0007046566DCE6F1FF05000C0007010000000000FF25000500029302120011000D0000323025202D20416363656E743292084D00920800000000000000000000010422FF0D0032003000250020002D00200041006300630065006E00740032000000030001000C0007056566F2DCDBFF05000C0007010000000000FF25000500029302120012000D0000323025202D20416363656E743392084D00920800000000000000000000010426FF0D0032003000250020002D00200041006300630065006E00740033000000030001000C0007066566EBF1DEFF05000C0007010000000000FF25000500029302120013000D0000323025202D20416363656E743492084D0092080000000000000000000001042AFF0D0032003000250020002D00200041006300630065006E00740034000000030001000C0007076566E4DFECFF05000C0007010000000000FF25000500029302120014000D0000323025202D20416363656E743592084D0092080000000000000000000001042EFF0D0032003000250020002D00200041006300630065006E00740035000000030001000C0007086566DAEEF3FF05000C0007010000000000FF25000500029302120015000D0000323025202D20416363656E743692084D00920800000000000000000000010432FF0D0032003000250020002D00200041006300630065006E00740036000000030001000C0007096566FDE9D9FF05000C0007010000000000FF25000500029302120016000D0000343025202D20416363656E743192084D0092080000000000000000000001041FFF0D0034003000250020002D00200041006300630065006E00740031000000030001000C000704CC4CB8CCE4FF05000C0007010000000000FF25000500029302120017000D0000343025202D20416363656E743292084D00920800000000000000000000010423FF0D0034003000250020002D00200041006300630065006E00740032000000030001000C000705CC4CE6B8B7FF05000C0007010000000000FF25000500029302120018000D0000343025202D20416363656E743392084D00920800000000000000000000010427FF0D0034003000250020002D00200041006300630065006E00740033000000030001000C000706CC4CD8E4BCFF05000C0007010000000000FF25000500029302120019000D0000343025202D20416363656E743492084D0092080000000000000000000001042BFF0D0034003000250020002D00200041006300630065006E00740034000000030001000C000707CC4CCCC0DAFF05000C0007010000000000FF2500050002930212001A000D0000343025202D20416363656E743592084D0092080000000000000000000001042FFF0D0034003000250020002D00200041006300630065006E00740035000000030001000C000708CC4CB7DEE8FF05000C0007010000000000FF2500050002930212001B000D0000343025202D20416363656E743692084D00920800000000000000000000010433FF0D0034003000250020002D00200041006300630065006E00740036000000030001000C000709CC4CFCD5B4FF05000C0007010000000000FF2500050002930212001C000D0000363025202D20416363656E743192084D00920800000000000000000000010420FF0D0036003000250020002D00200041006300630065006E00740031000000030001000C000704323395B3D7FF05000C0007000000FFFFFFFF2500050002930212001D000D0000363025202D20416363656E743292084D00920800000000000000000000010424FF0D0036003000250020002D00200041006300630065006E00740032000000030001000C0007053233DA9694FF05000C0007000000FFFFFFFF2500050002930212001E000D0000363025202D20416363656E743392084D00920800000000000000000000010428FF0D0036003000250020002D00200041006300630065006E00740033000000030001000C0007063233C4D79BFF05000C0007000000FFFFFFFF2500050002930212001F000D0000363025202D20416363656E743492084D0092080000000000000000000001042CFF0D0036003000250020002D00200041006300630065006E00740034000000030001000C0007073233B1A0C7FF05000C0007000000FFFFFFFF25000500029302120020000D0000363025202D20416363656E743592084D00920800000000000000000000010430FF0D0036003000250020002D00200041006300630065006E00740035000000030001000C000708323392CDDCFF05000C0007000000FFFFFFFF25000500029302120021000D0000363025202D20416363656E743692084D00920800000000000000000000010434FF0D0036003000250020002D00200041006300630065006E00740036000000030001000C0007093233FABF8FFF05000C0007000000FFFFFFFF250005000293020C002200070000416363656E74319208410092080000000000000000000001041DFF070041006300630065006E00740031000000030001000C00070400004F81BDFF05000C0007000000FFFFFFFF250005000293020C002300070000416363656E743292084100920800000000000000000000010421FF070041006300630065006E00740032000000030001000C0007050000C0504DFF05000C0007000000FFFFFFFF250005000293020C002400070000416363656E743392084100920800000000000000000000010425FF070041006300630065006E00740033000000030001000C00070600009BBB59FF05000C0007000000FFFFFFFF250005000293020C002500070000416363656E743492084100920800000000000000000000010429FF070041006300630065006E00740034000000030001000C00070700008064A2FF05000C0007000000FFFFFFFF250005000293020C002600070000416363656E74359208410092080000000000000000000001042DFF070041006300630065006E00740035000000030001000C00070800004BACC6FF05000C0007000000FFFFFFFF250005000293020C002700070000416363656E743692084100920800000000000000000000010431FF070041006300630065006E00740036000000030001000C0007090000F79646FF05000C0007000000FFFFFFFF25000500029302080028000300004261649208390092080000000000000000000001011BFF03004200610064000000030001000C0005FF0000FFC7CEFF05000C0005FF00009C0006FF25000500029302100029000B000043616C63756C6174696F6E92088100920800000000000000000000010216FF0B00430061006C00630075006C006100740069006F006E000000070001000C0005FF0000F2F2F2FF05000C0005FF0000FA7D00FF250005000206000E0005FF00007F7F7FFF010007000E0005FF00007F7F7FFF010008000E0005FF00007F7F7FFF010009000E0005FF00007F7F7FFF010093020F002A000A0000436865636B2043656C6C92087F00920800000000000000000000010217FF0A0043006800650063006B002000430065006C006C000000070001000C0005FF0000A5A5A5FF05000C0007000000FFFFFFFF250005000206000E0005FF00003F3F3FFF060007000E0005FF00003F3F3FFF060008000E0005FF00003F3F3FFF060009000E0005FF00003F3F3FFF0600930204002B8003FF92082000920800000000000000000000010503FF050043006F006D006D00610000000000930204002C8006FF92082800920800000000000000000000010506FF090043006F006D006D00610020005B0030005D0000000000930204002D8004FF92082600920800000000000000000000010504FF0800430075007200720065006E006300790000000000930204002E8007FF92082E00920800000000000000000000010507FF0C00430075007200720065006E006300790020005B0030005D0000000000930215002F001000004578706C616E61746F7279205465787492084700920800000000000000000000010235FF10004500780070006C0061006E00610074006F0072007900200054006500780074000000020005000C0005FF00007F7F7FFF250005000293020400308009FF92083A00920800000000000000000000010209FF120046006F006C006C006F007700650064002000480079007000650072006C0069006E006B0000000000930209003100040000476F6F6492083B0092080000000000000000000001011AFF040047006F006F0064000000030001000C0005FF0000C6EFCEFF05000C0005FF0000006100FF250005000293020E00320009000048656164696E67203192084700920800000000000000000000010310FF0900480065006100640069006E006700200031000000030005000C00070300001F497DFF250005000207000E00070400004F81BDFF050093020E00330009000048656164696E67203292084700920800000000000000000000010311FF0900480065006100640069006E006700200032000000030005000C00070300001F497DFF250005000207000E000704FF3FA7BFDEFF050093020E00340009000048656164696E67203392084700920800000000000000000000010312FF0900480065006100640069006E006700200033000000030005000C00070300001F497DFF250005000207000E000704323395B3D7FF020093020E00350009000048656164696E67203492083900920800000000000000000000010313FF0900480065006100640069006E006700200034000000020005000C00070300001F497DFF250005000293020400368008FF92082800920800000000000000000000010208FF0900480079007000650072006C0069006E006B000000000093020A003700050000496E70757492087500920800000000000000000000010214FF050049006E007000750074000000070001000C0005FF0000FFCC99FF05000C0005FF00003F3F76FF250005000206000E0005FF00007F7F7FFF010007000E0005FF00007F7F7FFF010008000E0005FF00007F7F7FFF010009000E0005FF00007F7F7FFF01009302100038000B00004C696E6B65642043656C6C92084B00920800000000000000000000010218FF0B004C0069006E006B00650064002000430065006C006C000000030005000C0005FF0000FA7D00FF250005000207000E0005FF0000FF8001FF060093020C0039000700004E65757472616C9208410092080000000000000000000001011CFF07004E00650075007400720061006C000000030001000C0005FF0000FFEB9CFF05000C0005FF00009C6500FF250005000293020400008000FF92082200920800000000000000000000010100FF06004E006F0072006D0061006C0000000000930209003A000400004E6F74659208620092080000000000000000000001020AFF04004E006F00740065000000050001000C0005FF0000FFFFCCFF06000E0005FF0000B2B2B2FF010007000E0005FF0000B2B2B2FF010008000E0005FF0000B2B2B2FF010009000E0005FF0000B2B2B2FF010093020B003B000600004F757470757492087700920800000000000000000000010215FF06004F00750074007000750074000000070001000C0005FF0000F2F2F2FF05000C0005FF00003F3F3FFF250005000206000E0005FF00003F3F3FFF010007000E0005FF00003F3F3FFF010008000E0005FF00003F3F3FFF010009000E0005FF00003F3F3FFF0100930204003C8005FF92082400920800000000000000000000010505FF0700500065007200630065006E0074000000000093020A003D000500005469746C659208310092080000000000000000000001030FFF05005400690074006C0065000000020005000C00070300001F497DFF250005000193020A003E00050000546F74616C92084D00920800000000000000000000010319FF050054006F00740061006C000000040005000C0007010000000000FF250005000206000E00070400004F81BDFF010007000E00070400004F81BDFF0600930211003F000C00005761726E696E67205465787492083F0092080000000000000000000001020BFF0C005700610072006E0069006E006700200054006500780074000000020005000C0005FF0000FF0000FF25000500028E0858008E080000000000000000000090000000110011005400610062006C0065005300740079006C0065004D0065006400690075006D0032005000690076006F0074005300740079006C0065004C00690067006800740031003600600102000000850017007336000000000F0050726F64756374734D616E616765729A0818009A0800000000000000000000010000000000000004000000A3081000A30800000000000000000000000000008C00040001000100AE0104000100010417000800010000000000000018001B00210000010B000000010000000000000D3B00000000000000002500180029000000000F0B0000000000000000000050726F64756374734D616E616765723B000000000A0000002500C1010800C10100008D340200FC009407D200000054000000040000436F64650400004E616D650C00004F7074696F6E616C4E616D65070000436F6D70616E7908000043617465676F72790B000053756243617465676F72790C00005061636B5175616E7469747911000043757272656E7453746F636B4C6F6F73650C000043757272656E7456616C75651600004C617374507572636861736550726963654C6F6F73651500004C617374507572636861736550726963655061636B1200004C61737453616C6550726963654C6F6F73651100004C61737453616C6550726963655061636B0B00004465736372697074696F6E0D000053706563696669636174696F6E08000049734163746976651000004C6173744D6F646966696564446174651500004D696E696D756D53746F636B4C6576656C5061636B07000045787069726573070000426172636F6465040000556E69740B0000436F6D70616E79436F6465140000496E76656E746F72794163636F756E74436F64650F0000434F47534163636F756E74436F6465110000496E636F6D654163636F756E74436F6465050000426F6E7573080000446973636F756E740900004973536572766963650A0000446973636F756E745273070000546178526174650900005461784D6574686F6411000043616C43756C6174696F6E4D6574686F6408000056617269616E7473060000497353796E630300003158310E0000496E76656E746F7279436865636B050000436F6C6F7204000053697A65260000414654455220534841564520414C4C2054595045203130304D4C20414C4C204E495645412020180000424220435245414D2035304D4C2054554245204E49564541180000424C554520435245414D203135304D4C204E495645412020180000424C554520435245414D203235304D4C204E495645412020170000424C554520435245414D2033304D4C204E495645412020180000424C554520435245414D203430304D4C204E495645412020170000424C554520435245414D2036304D4C204E4956454120201A0000424F4459204C4F54494F4E2037354D4C20414C4C204E49564541230000424F4459204C4F54494F4E20424F445920203235304D4C20414C4C204E495645412020220000424F4459204C4F54494F4E20424F4459203132354D4C20414C4C204E495645412020220000424F4459204C4F54494F4E20424F4459203430304D4C20414C4C204E495645412020200000424F4459205350524159202845585049524529203135304D4C204E4956452020210000424F445920535052415920414C4C2054595045203135304D4C204E4956454120201A0000434C45414E53494E47204D494C4B203230304D4C204E49564541190000464143452057415348203135304D4C204E4557204E495645411F0000464149524E45535320435245414D2032304D4C20504F554348204E49564541210000464149524E45535320435245414D204D454E203135304D4C204E49564541202020200000464149524E45535320435245414D204D454E2033304D4C204E49564541202020200000464149524E45535320435245414D204D454E2037354D4C204E495645412020201B00004C4142454C4C4F20414C4C2054595045204752204E4956454120202300004E41545552414C20464149524E455320435245414D203230304D4C204E4956454120202500004E41545552414C20464149524E45535320435245414D203130304D4C204E495645412020201700004E4956454120424F4459204D495354203132304D4C20202200004E4956454120464149524E455353204341524520435245414D20203130304D4C20202200004E4956454120464149524E455353204341524520435245414D20203230304D4C20202200004E4956454120464149524E455353204341524520435245414D202035304D4C2020201A00004E49564541204D454E2046414345205741534820203130304D4C1900004E495645412053484F5745522047454C20414C4C20545950451F00004F494C20434F4E54524F4C20435245414D2034304D4C204E495645412020201D0000524F4C4C204F4E20414C4C20545950452035304D4C204E4956454120201D00005348414D504F20414C4C2054595045203235304D4C204E4956454120201D00005348414D504F20414C4C2054595045203430304D4C204E4956454120201B000053484156494E4720435245414D2036304D4C204E495645412020201D000053484156494E4720435245414D45203130304D4C204E495645412020201C000053484156494E4720464F414D20203230304D4C204E495645412020201B000053484156494E472047454C20203230304D4C204E495645412020201B0000534F415020414C4C2054595045203130304752204E495645412020180000534F465420435245414D203130304D4C204E495645412020180000534F465420435245414D203230304D4C204E495645412020180000534F465420435245414D203330304D4C204E495645412020170000534F465420435245414D2035304D4C204E4956454120201C0000535449434B20414C4C20545950452034304D4C204E4956454120202021000057484954454E494E4720464143452057415348203130304D4C204E4956454120200500004E495645410C0000497346697865645072696365030000504353FF005A0008002F2E00000C000000922E00006F000000242F000001010000A12F00007E0100000B300000E80100008930000066020000763100005303000084320000610400009C3300007905000095340000720600007A3500005707000063081600630800000000000000000000160000000000000002009608100096080000000000000000000042E501009B0810009B0800000000000000000000010000008C0810008C0800000000000000000000000000000A00000009081000000610006632CD07C9C00100060600000B02180000000000000000002C000000CE4C0000CF700000A37D00000D00020001000C00020064000F000200010011000200000010000800FCA9F1D24D62503F5F00020001002A00020000002B0002000000820002000100800008000000000000000000250204000000FF0081000200C10414000500020000264115000A000700005061676520265083000200000084000200000026000800000000000000E83F27000800000000000000E83F28000800000000000000F03F29000800000000000000F03F4D002E1500004D006900630072006F0073006F006600740020005000720069006E007400200074006F002000500044004600000000000000000000000000000000000000000001040306DC005014032F010001000100EA0A6F08640001000F005802020001005802030001004C00650074007400650072000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000010000000200000001000000FFFFFFFF4749533400000000000000000000000044494E552200C80024032C113F5D7B7E000000000000000000000000000000000000000000000000000000000500000000000900010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000C8000000534D544A000000001000B8007B00300038003400460030003100460041002D0045003600330034002D0034004400370037002D0038003300450045002D003000370034003800310037004300300033003500380031007D000000524553444C4C00556E69726573444C4C00506170657253697A65004C4554544552004F7269656E746174696F6E00504F525452414954005265736F6C7574696F6E005265734F7074696F6E3100436F6C6F724D6F646500436F6C6F7200000000000000000000000000002C1100005634444D01000000000000009C0A70221C000000EC00000003000000FA014F0834E6774D83EE074817C03581D00000004C0000000300000000080000000000000000000003000000000800002A000000000800000300000040000000560000000010000044006F00630075006D0065006E0074005500730065007200500061007300730077006F0072006400000044006F00630075006D0065006E0074004F0077006E0065007200500061007300730077006F0072006400000044006F00630075006D0065006E0074004300720079007000740053006500630075007200690074007900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000A100220001006400010001000100020058025802000000000000E03F000000000000E03F01009C0826009C080000000000000000000000000000000000000000000000000000040000000000000000005500020008007D000C000100010092200F00020000007D000C0002000200001C0F00020000007D000C000300030000190F00020000007D000C000400040049150F00020000007D000C0005000500DB0D0F00020000007D000C000700070049110F00020000007D000C0008000800DB1A0F00020000007D000C000900090092120F00020000007D000C000A000A00DB0E0F00020000007D000C000B000B0000110F00020000007D000C000C000D006D100F00020000007D000C0014001400001A0F00020000009000110000000A00000028436F6C756D6E204129007408520074080000000000000000000022002200210020001F001E001D001C001B001A0019001800170016001500140013001200110010000F000E000D000C000B000A0009000800070006000500040003000200010000020E00000000002C00000000002600000008021000000000002600FF000000000000010F0008021000010000002600FF000000000000010F0008021000020000002600FF000000000000010F0008021000030000002600FF000000000000010F0008021000040000002600FF000000000000010F0008021000050000002600FF000000000000010F0008021000060000002600FF000000000000010F0008021000070000002600FF000000000000010F0008021000080000002600FF000000000000010F0008021000090000002600FF000000000000010F00080210000A0000002600FF000000000000010F00080210000B0000002600FF000000000000010F00080210000C0000002600FF000000000000010F00080210000D0000002600FF000000000000010F00080210000E0000002600FF000000000000010F00080210000F0000002600FF000000000000010F0008021000100000002500FF000000000000010F0008021000110000002500FF000000000000010F0008021000120000002500FF000000000000010F0008021000130000002500FF000000000000010F0008021000140000002500FF000000000000010F0008021000150000002500FF000000000000010F0008021000160000002500FF000000000000010F0008021000170000002500FF000000000000010F0008021000180000002500FF000000000000010F0008021000190000002500FF000000000000010F00080210001A0000002500FF000000000000010F00080210001B0000002500FF000000000000010F00080210001C0000002500FF000000000000010F00080210001D0000002500FF000000000000010F00080210001E0000002500FF000000000000010F00080210001F0000002500FF000000000000010F00FD000A00000000000F0000000000FD000A00000001000F0001000000FD000A00000002000F0002000000FD000A00000003000F0003000000FD000A00000004000F0004000000FD000A00000005000F0005000000FD000A00000006000F0006000000FD000A00000007000F0007000000FD000A00000008000F0008000000FD000A00000009000F0009000000FD000A0000000A000F000A000000FD000A0000000B000F000B000000FD000A0000000C000F000C000000FD000A0000000D000F0052000000FD000A0000000E000F000D000000FD000A0000000F000F000E000000FD000A00000010000F000F000000FD000A00000011000F0010000000FD000A00000012000F0011000000FD000A00000013000F0012000000FD000A00000014000F0013000000FD000A00000015000F0014000000FD000A00000016000F0024000000FD000A00000017000F0025000000FD000A00000018000F0015000000FD000A00000019000F0016000000FD000A0000001A000F0017000000FD000A0000001B000F0018000000FD000A0000001C000F0019000000FD000A0000001D000F001A000000FD000A0000001E000F001B000000FD000A0000001F000F001C000000FD000A00000020000F0023000000FD000A00000021000F001D000000FD000A00000022000F001E000000FD000A00000023000F001F000000FD000A00000024000F0020000000FD000A00000025000F00210000007E020A00010000000F000000F03FFD000A0001000100400026000000FD000A00010003000F0051000000FD000A00010006000F0022000000BD003000010007000F00000000000F00000000004100E125E8404100E125E8404100C17EE9404100C17EE9400F00000000000D007E020A00010010000F000000F03FBD001800010012000F00000014400F00000000000F008034C4401400FD000A00010015000F00530000007E020A00010018000F000000F03FBD003C0001001C000F00000000000F00000000000F00000000000F00000000000F00000000000F000000F03F0F000000F03F0F00000000000F000000000024007E020A00020000000F0000000040FD000A0002000100400027000000FD000A00020003000F0051000000FD000A00020006000F0022000000BD003000020007000F00000000000F00000000004100C1FCE9404100C1FCE9404100C18EEC404100C18EEC400F00000000000D007E020A00020010000F000000F03FBD001800020012000F00000014400F00000000000F00003CC4401400FD000A00020015000F00530000007E020A00020018000F000000F03FBD003C0002001C000F00000000000F00000000000F00000000000F00000000000F00000000000F000000F03F0F000000F03F0F00000000000F000000000024007E020A00030000000F0000000840FD000A0003000100400028000000FD000A00030003000F0051000000FD000A00030006000F0022000000BD003000030007000F00000000000F0000000000410000806B40410000806B40410000C06C40410000C06C400F00000000000D007E020A00030010000F000000F03FBD001800030012000F00000014400F00000000000F000029C4401400FD000A00030015000F00530000007E020A00030018000F000000F03FBD003C0003001C000F00000000000F00000000000F00000000000F00000000000F00000000000F000000F03F0F000000F03F0F00000000000F000000000024007E020A00040000000F0000001040FD000A0004000100400029000000FD000A00040003000F0051000000FD000A00040006000F0022000000BD001200040007000F00000000000F0000000000080003020E000400090041006666666666BE704003020E0004000A0041006666666666BE7040BD00180004000B00410001CBEA40410001CBEA400F00000000000D007E020A00040010000F000000F03FBD001800040012000F00000014400F00000000000F008029C4401400FD000A00040015000F00530000007E020A00040018000F000000F03FBD003C0004001C000F00000000000F00000000000F00000000000F00000000000F00000000000F000000F03F0F000000F03F0F00000000000F000000000024007E020A00050000000F0000001440FD000A000500010040002A000000FD000A00050003000F0051000000FD000A00050006000F0022000000BD003000050007000F00000000000F0000000000410001F4B540410001F4B540410001D6BA40410001D6BA400F00000000000D007E020A00050010000F000000F03FBD001800050012000F00000014400F00000000000F00802AC4401400FD000A00050015000F00530000007E020A00050018000F000000F03FBD003C0005001C000F00000000000F00000000000F00000000000F00000000000F00000000000F000000F03F0F000000F03F0F00000000000F000000000024007E020A00060000000F0000001840FD000A000600010040002B000000FD000A00060003000F0051000000FD000A00060006000F0022000000BD003000060007000F00000000000F00000000004100C117E2404100C117E2404100A1DCF1404100A1DCF1400F00000000000D007E020A00060010000F000000F03FBD001800060012000F00000014400F00000000000F00002AC4401400FD000A00060015000F00530000007E020A00060018000F000000F03FBD003C0006001C000F00000000000F00000000000F00000000000F00000000000F00000000000F000000F03F0F000000F03F0F00000000000F000000000024007E020A00070000000F0000001C40FD000A000700010040002C000000FD000A00070003000F0051000000FD000A00070006000F0022000000BD003000070007000F00000000000F0000000000410000805B40410000805B40410000805E40410000805E400F00000000000D007E020A00070010000F000000F03FBD001800070012000F00000014400F00000000000F008028C4401400FD000A00070015000F00530000007E020A00070018000F000000F03FBD003C0007001C000F00000000000F00000000000F00000000000F00000000000F00000000000F000000F03F0F000000F03F0F00000000000F000000000024007E020A00080000000F0000002040FD000A000800010040002D000000FD000A00080003000F0051000000FD000A00080006000F0022000000BD003000080007000F00000000000F000000000041004124D04041004124D040410000C06640410000C066400F00000000000D007E020A00080010000F000000F03FBD001800080012000F00000014400F00000000000F00000092401400FD000A00080015000F00530000007E020A00080018000F000000F03FBD003C0008001C000F00000000000F00000000000F00000000000F00000000000F00000000000F000000F03F0F000000F03F0F00000000000F000000000024007E020A00090000000F0000002240FD000A000900010040002E000000FD000A00090003000F0051000000FD000A00090006000F0022000000BD001200090007000F00000000000F0000000000080003020E00090009004100C3F5285C8FCA734003020E0009000A004100C3F5285C8FCA7340BD00180009000B004100008076404100008076400F00000000000D007E020A00090010000F000000F03FBD001800090012000F00000014400F00000000000F000030C4401400FD000A00090015000F00530000007E020A00090018000F000000F03FBD003C0009001C000F00000000000F00000000000F00000000000F00000000000F00000000000F000000F03F0F000000F03F0F00000000000F000000000024007E020A000A0000000F0000002440FD000A000A00010040002F000000FD000A000A0003000F0051000000FD000A000A0006000F0022000000BD0030000A0007000F00000000000F000000000041000126D64041000126D6404100004070404100004070400F00000000000D007E020A000A0010000F000000F03FBD0018000A0012000F00000014400F00000000000F00802FC4401400FD000A000A0015000F00530000007E020A000A0018000F000000F03FBD003C000A001C000F00000000000F00000000000F00000000000F00000000000F00000000000F000000F03F0F000000F03F0F00000000000F000000000024007E020A000B0000000F0000002640FD000A000B000100400030000000FD000A000B0003000F0051000000FD000A000B0006000F0022000000BD0030000B0007000F00000000000F000000000041000184EB4041000184EB404100006083404100006083400F00000000000D007E020A000B0010000F000000F03FBD0018000B0012000F00000014400F00000000000F008030C4401400FD000A000B0015000F00530000007E020A000B0018000F000000F03FBD003C000B001C000F00000000000F00000000000F00000000000F00000000000F00000000000F000000F03F0F000000F03F0F00000000000F000000000024007E020A000C0000000F0000002840FD000A000C000100400031000000FD000A000C0003000F0051000000FD000A000C0006000F0022000000BD0030000C0007000F00000000000F0000000000410000C05640410000C056404100000059404100000059400F00000000000D007E020A000C0010000F000000F03FBD0018000C0012000F00000014400F00000000000F00802CC4401400FD000A000C0015000F00530000007E020A000C0018000F000000F03FBD003C000C001C000F00000000000F00000000000F00000000000F00000000000F00000000000F000000F03F0F000000F03F0F00000000000F000000000024007E020A000D0000000F0000002A40FD000A000D000100400032000000FD000A000D0003000F0051000000FD000A000D0006000F0022000000BD0030000D0007000F00000000000F00000000004100008071404100008071404100000074404100000074400F00000000000D007E020A000D0010000F000000F03FBD0018000D0012000F00000014400F00000000000F00002BC4401400FD000A000D0015000F00530000007E020A000D0018000F000000F03FBD003C000D001C000F00000000000F00000000000F00000000000F00000000000F00000000000F000000F03F0F000000F03F0F00000000000F000000000024007E020A000E0000000F0000002C40FD000A000E000100400033000000FD000A000E0003000F0051000000FD000A000E0006000F0022000000BD0030000E0007000F00000000000F00000000004100A170E2404100A170E240410000F07940410000F079400F00000000000D007E020A000E0010000F000000F03FBD0018000E0012000F00000014400F00000000000F00803BC4401400FD000A000E0015000F00530000007E020A000E0018000F000000F03FBD003C000E001C000F00000000000F00000000000F00000000000F00000000000F00000000000F000000F03F0F000000F03F0F00000000000F000000000024007E020A000F0000000F0000002E40FD000A000F000100400034000000FD000A000F0003000F0051000000FD000A000F0006000F0022000000BD001E000F0007000F00000000000F000000000041000160EB4041000160EB400A0003020E000F000B004100EC51B81E8593824003020E000F000C004100EC51B81E859382407E020A000F000D000F00000000007E020A000F0010000F000000F03FBD0018000F0012000F00000014400F00000000000F00003BC4401400FD000A000F0015000F00530000007E020A000F0018000F000000F03FBD003C000F001C000F00000000000F00000000000F00000000000F00000000000F00000000000F000000F03F0F000000F03F0F00000000000F000000000024007E020A00100000000F0000003040FD000A0010000100400035000000FD000A00100003000F0051000000FD000A00100006000F0022000000BD003000100007000F00000000000F000000000041000140A24041000140A240410000C03B40410000C03B400F00000000000D007E020A00100010000F000000F03FBD001800100012000F00000014400F00000000000F00803AC4401400FD000A00100015000F00530000007E020A00100018000F000000F03FBD003C0010001C000F00000000000F00000000000F00000000000F00000000000F00000000000F000000F03F0F000000F03F0F00000000000F000000000024007E020A00110000000F0000003140FD000A0011000100400036000000FD000A00110003000F0051000000FD000A00110006000F0022000000BD003000110007000F00000000000F00000000004100013AE7404100013AE740410001CBEA40410001CBEA400F00000000000D007E020A00110010000F000000F03FBD001800110012000F00000014400F00000000000F000032C4401400FD000A00110015000F00530000007E020A00110018000F000000F03FBD003C0011001C000F00000000000F00000000000F00000000000F00000000000F00000000000F000000F03F0F000000F03F0F00000000000F000000000024007E020A00120000000F0000003240FD000A0012000100400037000000FD000A00120003000F0051000000FD000A00120006000F0022000000BD001E00120007000F00000000000F0000000000410081DFC840410081DFC8400A0003020E0012000B004100C3F5285C8F4A624003020E0012000C004100C3F5285C8F4A62407E020A0012000D000F00000000007E020A00120010000F000000F03FBD001800120012000F00000014400F00000000000F000031C4401400FD000A00120015000F00530000007E020A00120018000F000000F03FBD003C0012001C000F00000000000F00000000000F00000000000F00000000000F00000000000F000000F03F0F000000F03F0F00000000000F000000000024007E020A00130000000F0000003340FD000A0013000100400038000000FD000A00130003000F0051000000FD000A00130006000F0022000000BD001E00130007000F00000000000F00000000004100C1BADB404100C1BADB400A0003020E0013000B0041003D0AD7A37001744003020E0013000C0041003D0AD7A3700174407E020A0013000D000F00000000007E020A00130010000F000000F03FBD001800130012000F00000014400F00000000000F008031C4401400FD000A00130015000F00530000007E020A00130018000F000000F03FBD003C0013001C000F00000000000F00000000000F00000000000F00000000000F00000000000F000000F03F0F000000F03F0F00000000000F000000000024007E020A00140000000F0000003440FD000A0014000100400039000000FD000A00140003000F0051000000FD000A00140006000F0022000000BD003000140007000F00000000000F0000000000410001C4CD40410001C4CD404100C15AD0404100C15AD0400F00000000000D007E020A00140010000F000000F03FBD001800140012000F00000014400F00000000000F008033C4401400FD000A00140015000F00530000007E020A00140018000F000000F03FBD003C0014001C000F00000000000F00000000000F00000000000F00000000000F00000000000F000000F03F0F000000F03F0F00000000000F000000000024007E020A00150000000F0000003540FD000A001500010040003A000000FD000A00150003000F0051000000FD000A00150006000F0022000000BD003000150007000F00000000000F000000000041008182E24041008182E2404100006078404100006078400F00000000000D007E020A00150010000F000000F03FBD001800150012000F00000014400F00000000000F00802DC4401400FD000A00150015000F00530000007E020A00150018000F000000F03FBD003C0015001C000F00000000000F00000000000F00000000000F00000000000F00000000000F000000F03F0F000000F03F0F00000000000F000000000024007E020A00160000000F0000003640FD000A001600010040003B000000FD000A00160003000F0051000000FD000A00160006000F0022000000BD003000160007000F00000000000F00000000004100009870404100009870404100003071404100003071400F00000000000D007E020A00160010000F000000F03FBD001800160012000F00000014400F00000000000F008032C4401400FD000A00160015000F00530000007E020A00160018000F000000F03FBD003C0016001C000F00000000000F00000000000F00000000000F00000000000F00000000000F000000F03F0F000000F03F0F00000000000F000000000024007E020A00170000000F0000003740FD000A001700010040003C000000FD000A00170003000F0051000000FD000A00170006000F0022000000BD003000170007000F00000000000F000000000041008122D54041008122D5404100813FD7404100813FD7400F00000000000D007E020A00170010000F000000F03FBD001800170012000F00000014400F00000000000F00002DC4401400FD000A00170015000F00530000007E020A00170018000F000000F03FBD003C0017001C000F00000000000F00000000000F00000000000F00000000000F00000000000F000000F03F0F000000F03F0F00000000000F000000000024007E020A00180000000F0000003840FD000A001800010040003D000000FD000A00180003000F0051000000FD000A00180006000F0022000000BD003000180007000F00000000000F0000000000410001B9E240410001B9E2404100E153E6404100E153E6400F00000000000D007E020A00180010000F000000F03FBD001800180012000F00000014400F00000000000F00802EC4401400FD000A00180015000F00530000007E020A00180018000F000000F03FBD003C0018001C000F00000000000F00000000000F00000000000F00000000000F00000000000F000000F03F0F000000F03F0F00000000000F000000000024007E020A00190000000F0000003940FD000A001900010040003E000000FD000A00190003000F0051000000FD000A00190006000F0022000000BD001200190007000F00000000000F0000000000080003020E001900090041009A99999999BB824003020E0019000A0041009A99999999BB824003020E0019000B004100EC51B81E8593824003020E0019000C004100EC51B81E859382407E020A0019000D000F00000000007E020A00190010000F000000F03FBD001800190012000F00000014400F00000000000F00002EC4401400FD000A00190015000F00530000007E020A00190018000F000000F03FBD003C0019001C000F00000000000F00000000000F00000000000F00000000000F00000000000F000000F03F0F000000F03F0F00000000000F000000000024007E020A001A0000000F0000003A40FD000A001A00010040003F000000FD000A001A0003000F0051000000FD000A001A0006000F0022000000BD0030001A0007000F00000000000F000000000041008163C64041008163C6404100819AC8404100819AC8400F00000000000D007E020A001A0010000F000000F03FBD0018001A0012000F00000014400F00000000000F00002FC4401400FD000A001A0015000F00530000007E020A001A0018000F000000F03FBD003C001A001C000F00000000000F00000000000F00000000000F00000000000F00000000000F000000F03F0F000000F03F0F00000000000F000000000024007E020A001B0000000F0000003B40FD000A001B000100400040000000FD000A001B0003000F0051000000FD000A001B0006000F0022000000BD0030001B0007000F00000000000F000000000041004184E64041004184E6404100E153E6404100E153E6400F00000000000D007E020A001B0010000F000000F03FBD0018001B0012000F00000014400F00000000000F00803CC4401400FD000A001B0015000F00530000007E020A001B0018000F000000F03FBD003C001B001C000F00000000000F00000000000F00000000000F00000000000F00000000000F000000F03F0F000000F03F0F00000000000F000000000024007E020A001C0000000F0000003C40FD000A001C000100400041000000FD000A001C0003000F0051000000FD000A001C0006000F0022000000BD0030001C0007000F00000000000F000000000041000184E64041000184E6404100E153E6404100E153E6400F00000000000D007E020A001C0010000F000000F03FBD0018001C0012000F00000014400F00000000000F00003090401400FD000A001C0015000F00530000007E020A001C0018000F000000F03FBD003C001C001C000F00000000000F00000000000F00000000000F00000000000F00000000000F000000F03F0F000000F03F0F00000000000F000000000024007E020A001D0000000F0000003D40FD000A001D000100400042000000FD000A001D0003000F0051000000FD000A001D0006000F0022000000BD0030001D0007000F00000000000F0000000000410000E07540410000E07540410021E8E540410021E8E5400F00000000000D007E020A001D0010000F000000F03FBD0018001D0012000F00000014400F00000000000F000033C4401400FD000A001D0015000F00530000007E020A001D0018000F000000F03FBD003C001D001C000F00000000000F00000000000F00000000000F00000000000F00000000000F000000F03F0F000000F03F0F00000000000F000000000024007E020A001E0000000F0000003E40FD000A001E000100400043000000FD000A001E0003000F0051000000FD000A001E0006000F0022000000BD0030001E0007000F00000000000F0000000000410041DED840410041DED84041000179DD4041000179DD400F00000000000D007E020A001E0010000F000000F03FBD0018001E0012000F00000014400F00000000000F00802BC4401400FD000A001E0015000F00530000007E020A001E0018000F000000F03FBD003C001E001C000F00000000000F00000000000F00000000000F00000000000F00000000000F000000F03F0F000000F03F0F00000000000F000000000024007E020A001F0000000F0000003F40FD000A001F000100400044000000FD000A001F0003000F0051000000FD000A001F0006000F0022000000BD0030001F0007000F00000000000F00000000004100C152D2404100C152D2404100C138D4404100C138D4400F00000000000D007E020A001F0010000F000000F03FBD0018001F0012000F00000014400F00000000000F008035C4401400FD000A001F0015000F00530000007E020A001F0018000F000000F03FBD003C001F001C000F00000000000F00000000000F00000000000F00000000000F00000000000F000000F03F0F000000F03F0F00000000000F00000000002400D7004400BE2200006C021402F200F200F2001401F200F200F200F2001401F200F200F200F200F2001201F200F20012011201F200F200F200F200F2002A01F200F200F200F200F20008021000200000002500FF000000000000010F0008021000210000002500FF000000000000010F0008021000220000002500FF000000000000010F0008021000230000002500FF000000000000010F0008021000240000002500FF000000000000010F0008021000250000002500FF000000000000010F0008021000260000002500FF000000000000010F0008021000270000002500FF000000000000010F0008021000280000002500FF000000000000010F0008021000290000002500FF000000000000010F00080210002A0000002500FF000000000000010F00080210002B0000002500FF000000000000010F007E020A00200000000F0000004040FD000A0020000100400045000000FD000A00200003000F0051000000FD000A00200006000F0022000000BD001200200007000F00000000000F0000000000080003020E002000090041009A99999999C9704003020E0020000A0041009A99999999C97040BD00180020000B00410041D3DC40410041D3DC400F00000000000D007E020A00200010000F000000F03FBD001800200012000F00000014400F00000000000F000036C4401400FD000A00200015000F00530000007E020A00200018000F000000F03FBD003C0020001C000F00000000000F00000000000F00000000000F00000000000F00000000000F000000F03F0F000000F03F0F00000000000F000000000024007E020A00210000000F0000804040FD000A0021000100400046000000FD000A00210003000F0051000000FD000A00210006000F0022000000BD003000210007000F00000000000F00000000004100011FD3404100011FD340410081C3D640410081C3D6400F00000000000D007E020A00210010000F000000F03FBD001800210012000F00000014400F00000000000F008036C4401400FD000A00210015000F00530000007E020A00210018000F000000F03FBD003C0021001C000F00000000000F00000000000F00000000000F00000000000F00000000000F000000F03F0F000000F03F0F00000000000F000000000024007E020A00220000000F0000004140FD000A0022000100400047000000FD000A00220003000F0051000000FD000A00220006000F0022000000BD003000220007000F00000000000F0000000000410041C5DA40410041C5DA40410001DCDF40410001DCDF400F00000000000D007E020A00220010000F000000F03FBD001800220012000F00000014400F00000000000F000037C4401400FD000A00220015000F00530000007E020A00220018000F000000F03FBD003C0022001C000F00000000000F00000000000F00000000000F00000000000F00000000000F000000F03F0F000000F03F0F00000000000F000000000024007E020A00230000000F0000804140FD000A0023000100400048000000FD000A00230003000F0051000000FD000A00230006000F0022000000BD003000230007000F00000000000F0000000000410000207840410000207840410000807B40410000807B400F00000000000D007E020A00230010000F000000F03FBD001800230012000F00000014400F00000000000F008037C4401400FD000A00230015000F00530000007E020A00230018000F000000F03FBD003C0023001C000F00000000000F00000000000F00000000000F00000000000F00000000000F000000F03F0F000000F03F0F00000000000F000000000024007E020A00240000000F0000004240FD000A0024000100400049000000FD000A00240003000F0051000000FD000A00240006000F0022000000BD001200240007000F00000000000F0000000000080003020E00240009004100713D0AD7A36C814003020E0024000A004100713D0AD7A36C8140BD00180024000B004100009884404100009884400F00000000000D007E020A00240010000F000000F03FBD001800240012000F00000014400F00000000000F000038C4401400FD000A00240015000F00530000007E020A00240018000F000000F03FBD003C0024001C000F00000000000F00000000000F00000000000F00000000000F00000000000F000000F03F0F000000F03F0F00000000000F000000000024007E020A00250000000F0000804240FD000A002500010040004A000000FD000A00250003000F0051000000FD000A00250006000F0022000000BD003000250007000F00000000000F00000000004100011FC1404100011FC140410081D0C240410081D0C2400F00000000000D007E020A00250010000F000000F03FBD001800250012000F00000014400F00000000000F000034C4401400FD000A00250015000F00530000007E020A00250018000F000000F03FBD003C0025001C000F00000000000F00000000000F00000000000F00000000000F00000000000F000000F03F0F000000F03F0F00000000000F000000000024007E020A00260000000F0000004340FD000A002600010040004B000000FD000A00260003000F0051000000FD000A00260006000F0022000000BD003000260007000F00000000000F00000000004100C1D1D3404100C1D1D340410000806D40410000806D400F00000000000D007E020A00260010000F000000F03FBD001800260012000F00000014400F00000000000F008038C4401400FD000A00260015000F00530000007E020A00260018000F000000F03FBD003C0026001C000F00000000000F00000000000F00000000000F00000000000F00000000000F000000F03F0F000000F03F0F00000000000F000000000024007E020A00270000000F0000804340FD000A002700010040004C000000FD000A00270003000F0051000000FD000A00270006000F0022000000BD003000270007000F00000000000F0000000000410021A9E140410021A9E140410000B07840410000B078400F00000000000D007E020A00270010000F000000F03FBD001800270012000F00000014400F00000000000F000039C4401400FD000A00270015000F00530000007E020A00270018000F000000F03FBD003C0027001C000F00000000000F00000000000F00000000000F00000000000F00000000000F000000F03F0F000000F03F0F00000000000F000000000024007E020A00280000000F0000004440FD000A002800010040004D000000FD000A00280003000F0051000000FD000A00280006000F0022000000BD003000280007000F00000000000F000000000041000180E64041000180E640410000407F40410000407F400F00000000000D007E020A00280010000F000000F03FBD001800280012000F00000014400F00000000000F008039C4401400FD000A00280015000F00530000007E020A00280018000F000000F03FBD003C0028001C000F00000000000F00000000000F00000000000F00000000000F00000000000F000000F03F0F000000F03F0F00000000000F000000000024007E020A00290000000F0000804440FD000A002900010040004E000000FD000A00290003000F0051000000FD000A00290006000F0022000000BD003000290007000F00000000000F00000000004100C17ED0404100C17ED0404100C1DCD1404100C1DCD1400F00000000000D007E020A00290010000F000000F03FBD001800290012000F00000014400F00000000000F00003AC4401400FD000A00290015000F00530000007E020A00290018000F000000F03FBD003C0029001C000F00000000000F00000000000F00000000000F00000000000F00000000000F000000F03F0F000000F03F0F00000000000F000000000024007E020A002A0000000F0000004540FD000A002A00010040004F000000FD000A002A0003000F0051000000FD000A002A0006000F0022000000BD0030002A0007000F00000000000F000000000041000167D74041000167D7404100C1A6D9404100C1A6D9400F00000000000D007E020A002A0010000F000000F03FBD0018002A0012000F00000014400F00000000000F00002CC4401400FD000A002A0015000F00530000007E020A002A0018000F000000F03FBD003C002A001C000F00000000000F00000000000F00000000000F00000000000F00000000000F000000F03F0F000000F03F0F00000000000F000000000024007E020A002B0000000F0000804540FD000A002B000100400050000000FD000A002B0003000F0051000000FD000A002B0006000F0022000000BD0030002B0007000F00000000000F00000000004100E1B8E2404100E1B8E2404100E153E6404100E153E6400F00000000000D007E020A002B0010000F000000F03FBD0018002B0012000F00000014400F00000000000F000035C4401400FD000A002B0015000F00530000007E020A002B0018000F000000F03FBD003C002B001C000F00000000000F00000000000F00000000000F00000000000F00000000000F000000F03F0F000000F03F0F00000000000F00000000002400D7001C008C0C0000DC001401F200F200F2001401F200F200F200F200F200F2003E021200B6060000000040000000000055000F0000008B0810008B080000000000000000000000000A00A0000400110014001D000F00030100000000000100010001000000E5000200000067081700670800000000000000000000020001FFFFFFFF034400000A0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FEFF0000060202000000000000000000000000000000000001000000E0859FF2F94F6810AB9108002B27B3D9300000005000000004000000010000002800000008000000300000000D0000003C000000130000004800000002000000E40400001E000000040000006D617300400000000009B91C31C3D50103000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FEFF000006020200000000000000000000000000000000000100000002D5CDD59C2E1B10939708002B2CF9AE30000000E800000008000000010000004800000017000000500000000B000000580000001000000060000000130000006800000016000000700000000D000000780000000C000000A800000002000000E40400000300000000000E000B000000000000000B000000000000000B000000000000000B000000000000001E100000020000001000000050726F64756374734D616E61676572001000000050726F64756374734D616E61676572000C100000040000001E0000000B000000576F726B7368656574730003000000010000001E0000000D0000004E616D65642052616E6765730003000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A0000000B0000000C0000000D0000000E0000000F000000100000001100000012000000130000001400000015000000160000001700000018000000190000001A0000001B0000001C0000001D0000001E0000001F000000200000002100000022000000230000002400000025000000260000002700000028000000290000002A0000002B0000002C0000002D0000002E0000002F000000300000003100000032000000330000003400000035000000360000003700000038000000390000003A0000003B0000003C0000003D0000003E0000003F000000FEFFFFFF41000000420000004300000044000000450000004600000047000000FEFFFFFF490000004A0000004B0000004C0000004D0000004E0000004F000000FEFFFFFFFDFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52006F006F007400200045006E00740072007900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016000501FFFFFFFFFFFFFFFF020000002008020000000000C00000000000004600000000000000000000000030A8EBFE40D4D501FEFFFFFF000000000000000057006F0072006B0062006F006F006B0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000012000201FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000000000002D7E0000000000000500530075006D006D0061007200790049006E0066006F0072006D006100740069006F006E000000000000000000000000000000000000000000000000000000280002010100000003000000FFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000400000000010000000000000050044006F00630075006D0065006E007400530075006D006D0061007200790049006E0066006F0072006D006100740069006F006E000000000000000000000038000201FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000480000000010000000000000, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SampleFiles] ([Code], [Name], [FileDetail], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ID], [BranchCode]) VALUES (3, N'Categories', 0xD0CF11E0A1B11AE1000000000000000000000000000000003E000300FEFF0900060000000000000000000000010000002B0000000000000000100000FEFFFFFF00000000FEFFFFFF000000002A000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF09081000000605006632CD07C980010006060000E1000200B004C10002000000E20000005C0070000300006D61732020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202042000200B004610102000000C00100003D01020001009C0002001100190002000000120002000000130002000000AF0102000000BC01020000003D00120068014B00F03C4E2A380000000000010058024000020000008D00020000002200020000000E0002000100B70102000000DA000200000031002A00C8000000FF7F90010000000000000D014D0053002000530061006E00730020005300650072006900660031002A00C8000100FF7FBC020000000000000D014D0053002000530061006E00730020005300650072006900660031002A00C8000200FF7F90010000000000000D014D0053002000530061006E00730020005300650072006900660031002A00C8000300FF7FBC020000000000000D014D0053002000530061006E00730020005300650072006900660031002A00C8000000FF7F90010000000200000D014D0053002000530061006E00730020005300650072006900660031002A00C80004000C0090010000010200000D014D0053002000530061006E00730020005300650072006900660031002A00C80004000E0090010000010200000D014D0053002000530061006E00730020005300650072006900660031001E00DC000000080090010000000200000701430061006C00690062007200690031001E00DC000000090090010000000200000701430061006C00690062007200690031001E00DC000000140090010000000200000701430061006C00690062007200690031001E00DC0001003400BC020000000200000701430061006C00690062007200690031001E00DC0001000900BC020000000200000701430061006C00690062007200690031001E00DC000200170090010000000200000701430061006C00690062007200690031001E00DC000000110090010000000200000701430061006C00690062007200690031001E002C0101003800BC020000000200000701430061006C00690062007200690031001E00040101003800BC020000000200000701430061006C00690062007200690031001E00DC0001003800BC020000000200000701430061006C00690062007200690031001E00DC0000003E0090010000000200000701430061006C00690062007200690031001E00DC000000340090010000000200000701430061006C00690062007200690031001E00DC0000003C0090010000000200000701430061006C00690062007200690031001E00DC0001003F00BC020000000200000701430061006C00690062007200690031001E00680101003800BC020000000200000701430061006D00620072006900610031001E00DC0001000800BC020000000200000701430061006C00690062007200690031001E00DC0000000A0090010000000200000701430061006C0069006200720069001E041C000500170000222422232C2323305F293B5C28222422232C2323305C291E04210006001C0000222422232C2323305F293B5B5265645D5C28222422232C2323305C291E04220007001D0000222422232C2323302E30305F293B5C28222422232C2323302E30305C291E0427000800220000222422232C2323302E30305F293B5B5265645D5C28222422232C2323302E30305C291E0437002A003200005F282224222A20232C2323305F293B5F282224222A205C28232C2323305C293B5F282224222A20222D225F293B5F28405F291E042E0029002900005F282A20232C2323305F293B5F282A205C28232C2323305C293B5F282A20222D225F293B5F28405F291E043F002C003A00005F282224222A20232C2323302E30305F293B5F282224222A205C28232C2323302E30305C293B5F282224222A20222D223F3F5F293B5F28405F291E0436002B003100005F282A20232C2323302E30305F293B5F282A205C28232C2323302E30305C293B5F282A20222D223F3F5F293B5F28405F291E041C00A4001700002241454422232C2323303B5C2D2241454422232C2323301E042100A5001C00002241454422232C2323303B5B5265645D5C2D2241454422232C2323301E042200A6001D00002241454422232C2323302E30303B5C2D2241454422232C2323302E30301E042700A7002200002241454422232C2323302E30303B5B5265645D5C2D2241454422232C2323302E30301E043B00A8003600005F2D22414544222A20232C2323305F2D3B5C2D22414544222A20232C2323305F2D3B5F2D22414544222A20222D225F2D3B5F2D405F2D1E042C00A9002700005F2D2A20232C2323305F2D3B5C2D2A20232C2323305F2D3B5F2D2A20222D225F2D3B5F2D405F2D1E044300AA003E00005F2D22414544222A20232C2323302E30305F2D3B5C2D22414544222A20232C2323302E30305F2D3B5F2D22414544222A20222D223F3F5F2D3B5F2D405F2D1E043400AB002F00005F2D2A20232C2323302E30305F2D3B5C2D2A20232C2323302E30305F2D3B5F2D2A20222D223F3F5F2D3B5F2D405F2DE000140000000000F5FF200000000000000000000000C020E000140001000000F5FF200000F40000000000000000C020E000140001000000F5FF200000F40000000000000000C020E000140002000000F5FF200000F40000000000000000C020E000140002000000F5FF200000F40000000000000000C020E000140000000000F5FF200000F40000000000000000C020E000140000000000F5FF200000F40000000000000000C020E000140000000000F5FF200000F40000000000000000C020E000140000000000F5FF200000F40000000000000000C020E000140000000000F5FF200000F40000000000000000C020E000140000000000F5FF200000F40000000000000000C020E000140000000000F5FF200000F40000000000000000C020E000140000000000F5FF200000F40000000000000000C020E000140000000000F5FF200000F40000000000000000C020E000140000000000F5FF200000F40000000000000000C020E0001400000000000100200000000000000000000000C020E000140008000000F5FF200000B400000000000000049F20E000140008000000F5FF200000B40000000000000004AD20E000140008000000F5FF200000B40000000000000004AA20E000140008000000F5FF200000B40000000000000004AE20E000140008000000F5FF200000B400000000000000049B20E000140008000000F5FF200000B40000000000000004AF20E000140008000000F5FF200000B40000000000000004AC20E000140008000000F5FF200000B400000000000000049D20E000140008000000F5FF200000B400000000000000048B20E000140008000000F5FF200000B40000000000000004AE20E000140008000000F5FF200000B40000000000000004AC20E000140008000000F5FF200000B40000000000000004B320E000140009000000F5FF200000B400000000000000049E20E000140009000000F5FF200000B400000000000000049D20E000140009000000F5FF200000B400000000000000048B20E000140009000000F5FF200000B40000000000000004A420E000140009000000F5FF200000B40000000000000004B120E000140009000000F5FF200000B40000000000000004B420E000140009000000F5FF200000B40000000000000004BE20E000140009000000F5FF200000B400000000000000048A20E000140009000000F5FF200000B40000000000000004B920E000140009000000F5FF200000B40000000000000004A420E000140009000000F5FF200000B40000000000000004B120E000140009000000F5FF200000B40000000000000004B520E00014000A000000F5FF200000B40000000000000004AD20E00014000B000000F5FF200000941111970B970B00049620E00014000C000000F5FF200000946666BF1FBF1F0004B720E000140005002B00F5FF200000F80000000000000000C020E000140005002900F5FF200000F80000000000000000C020E000140005002C00F5FF200000F80000000000000000C020E000140005002A00F5FF200000F80000000000000000C020E00014000D000000F5FF200000F40000000000000000C020E000140007000000F5FF200000F40000000000000000C020E00014000E000000F5FF200000B40000000000000004AA20E00014000F000000F5FF200000D400500000001F0000C020E000140010000000F5FF200000D400500000000B0000C020E000140011000000F5FF200000D400200000000F0000C020E000140011000000F5FF200000F40000000000000000C020E000140006000000F5FF200000F40000000000000000C020E000140012000000F5FF200000941111970B970B0004AF20E000140013000000F5FF200000D400600000001A0000C020E000140014000000F5FF200000B40000000000000004AB20E000140008000000F5FF200000000000000000000000C020E000140005000000F5FF2000009C1111160B160B00049A20E000140015000000F5FF200000941111BF1FBF1F00049620E000140005000900F5FF200000F80000000000000000C020E000140016000000F5FF200000F40000000000000000C020E000140017000000F5FF200000D4006100003E1F0000C020E000140018000000F5FF200000F40000000000000000C020E00014000500000009002000000C0000000000000000C0207C0814007C08000000000000000000000000420018DE91AC7D0841007D080000000000000000000000001000000003000D00140003000000010000005F2D3B5F2D2A20220E000500020400140003006566040000003F3F5F2D3B5F2D407D0841007D080000000000000000000000001100000003000D00140003000000010000005F2D3B5F2D2A20220E000500020400140003006566050000003F3F5F2D3B5F2D407D0841007D080000000000000000000000001200000003000D00140003000000010000005F2D3B5F2D2A20220E000500020400140003006566060000003F3F5F2D3B5F2D407D0841007D080000000000000000000000001300000003000D00140003000000010000005F2D3B5F2D2A20220E000500020400140003006566070000003F3F5F2D3B5F2D407D0841007D080000000000000000000000001400000003000D00140003000000010000005F2D3B5F2D2A20220E000500020400140003006566080000003F3F5F2D3B5F2D407D0841007D080000000000000000000000001500000003000D00140003000000010000005F2D3B5F2D2A20220E000500020400140003006566090000003F3F5F2D3B5F2D407D0841007D080000000000000000000000001600000003000D00140003000000010000005F2D3B5F2D2A20220E00050002040014000300CC4C040000003F3F5F2D3B5F2D407D0841007D080000000000000000000000001700000003000D00140003000000010000005F2D3B5F2D2A20220E00050002040014000300CC4C050000003F3F5F2D3B5F2D407D0841007D080000000000000000000000001800000003000D00140003000000010000005F2D3B5F2D2A20220E00050002040014000300CC4C060000003F3F5F2D3B5F2D407D0841007D080000000000000000000000001900000003000D00140003000000010000005F2D3B5F2D2A20220E00050002040014000300CC4C070000003F3F5F2D3B5F2D407D0841007D080000000000000000000000001A00000003000D00140003000000010000005F2D3B5F2D2A20220E00050002040014000300CC4C080000003F3F5F2D3B5F2D407D0841007D080000000000000000000000001B00000003000D00140003000000010000005F2D3B5F2D2A20220E00050002040014000300CC4C090000003F3F5F2D3B5F2D407D0841007D080000000000000000000000001C00000003000D00140003000000000000005F2D3B5F2D2A20220E000500020400140003003233040000003F3F5F2D3B5F2D407D0841007D080000000000000000000000001D00000003000D00140003000000000000005F2D3B5F2D2A20220E000500020400140003003233050000003F3F5F2D3B5F2D407D0841007D080000000000000000000000001E00000003000D00140003000000000000005F2D3B5F2D2A20220E000500020400140003003233060000003F3F5F2D3B5F2D407D0841007D080000000000000000000000001F00000003000D00140003000000000000005F2D3B5F2D2A20220E000500020400140003003233070000003F3F5F2D3B5F2D407D0841007D080000000000000000000000002000000003000D00140003000000000000005F2D3B5F2D2A20220E000500020400140003003233080000003F3F5F2D3B5F2D407D0841007D080000000000000000000000002100000003000D00140003000000000000005F2D3B5F2D2A20220E000500020400140003003233090000003F3F5F2D3B5F2D407D0841007D080000000000000000000000002200000003000D00140003000000000000005F2D3B5F2D2A20220E000500020400140003000000040000003F3F5F2D3B5F2D407D0841007D080000000000000000000000002300000003000D00140003000000000000005F2D3B5F2D2A20220E000500020400140003000000050000003F3F5F2D3B5F2D407D0841007D080000000000000000000000002400000003000D00140003000000000000005F2D3B5F2D2A20220E000500020400140003000000060000003F3F5F2D3B5F2D407D0841007D080000000000000000000000002500000003000D00140003000000000000005F2D3B5F2D2A20220E000500020400140003000000070000003F3F5F2D3B5F2D407D0841007D080000000000000000000000002600000003000D00140003000000000000005F2D3B5F2D2A20220E000500020400140003000000080000003F3F5F2D3B5F2D407D0841007D080000000000000000000000002700000003000D00140003000000000000005F2D3B5F2D2A20220E000500020400140003000000090000003F3F5F2D3B5F2D407D0841007D080000000000000000000000002800000003000D001400020000009C0006FF5F2D3B5F2D2A20220E000500020400140002000000FFC7CEFF3F3F5F2D3B5F2D407D0891007D080000000000000000000000002900000007000D00140002000000FA7D00FF5F2D3B5F2D2A20220E000500020400140002000000F2F2F2FF3F3F5F2D3B5F2D4007001400020000007F7F7FFF202020202020202008001400020000007F7F7FFF202020202020202009001400020000007F7F7FFF00000000000000000A001400020000007F7F7FFF00000000000000007D0891007D080000000000000000000000002A00000007000D00140003000000000000005F2D3B5F2D2A20220E000500020400140002000000A5A5A5FF3F3F5F2D3B5F2D4007001400020000003F3F3FFF202020202020202008001400020000003F3F3FFF202020202020202009001400020000003F3F3FFF00000000000000000A001400020000003F3F3FFF00000000000000007D082D007D080000000000000000000000002F00000002000D001400020000007F7F7FFF5F2D3B5F2D2A20220E000500027D0841007D080000000000000000000000003100000003000D00140002000000006100FF5F2D3B5F2D2A20220E000500020400140002000000C6EFCEFF3F3F5F2D3B5F2D407D0841007D080000000000000000000000003200000003000D00140003000000030000005F2D3B5F2D2A20220E000500020800140003000000040000003F3F5F2D3B5F2D407D0841007D080000000000000000000000003300000003000D00140003000000030000005F2D3B5F2D2A20220E00050002080014000300FF3F040000003F3F5F2D3B5F2D407D0841007D080000000000000000000000003400000003000D00140003000000030000005F2D3B5F2D2A20220E000500020800140003003233040000003F3F5F2D3B5F2D407D082D007D080000000000000000000000003500000002000D00140003000000030000005F2D3B5F2D2A20220E000500027D0891007D080000000000000000000000003700000007000D001400020000003F3F76FF5F2D3B5F2D2A20220E000500020400140002000000FFCC99FF3F3F5F2D3B5F2D4007001400020000007F7F7FFF202020202020202008001400020000007F7F7FFF202020202020202009001400020000007F7F7FFF00000000000000000A001400020000007F7F7FFF00000000000000007D0841007D080000000000000000000000003800000003000D00140002000000FA7D00FF5F2D3B5F2D2A20220E000500020800140002000000FF8001FF3F3F5F2D3B5F2D407D0841007D080000000000000000000000003900000003000D001400020000009C6500FF5F2D3B5F2D2A20220E000500020400140002000000FFEB9CFF3F3F5F2D3B5F2D407D082D007D080000000000000000000000003A00000002000D00140003000000010000005F2D3B5F2D2A20220E000500027D0878007D080000000000000000000000003B00000005000400140002000000FFFFCCFF5F2D3B5F2D2A20220700140002000000B2B2B2FF00FFEB9CFF3F3F5F0800140002000000B2B2B2FF007F7F7FFF2020200900140002000000B2B2B2FF007F7F7FFF2020200A00140002000000B2B2B2FF007F7F7FFF0000007D0891007D080000000000000000000000003C00000007000D001400020000003F3F3FFF5F2D3B5F2D2A20220E000500020400140002000000F2F2F2FF3F3F5F080014000207001400020000003F3F3FFF202020090014000208001400020000003F3F3FFF2020200A0014000209001400020000003F3F3FFF00000000000000000A001400020000003F3F3FFF00000000000000007D082D007D080000000000000000000000003E00000002000D00140003000000030000005F2D3B5F2D2A20220E000500017D0855007D080000000000000000000000003F00000004000D00140003000000010000005F2D3B5F2D2A20220E000500020700140003000000040000003F3F5F080014000208001400030000000400000020202009001400027D082D007D080000000000000000000000004000000002000D00140002000000FF0000FF5F2D3B5F2D2A20220E000500029302120010000D0000323025202D20416363656E743192084D0092080000000000000000000001041EFF0D0032003000250020002D00200041006300630065006E00740031000000030001000C0007046566DCE6F1FF05000C0007010000000000FF25000500029302120011000D0000323025202D20416363656E743292084D00920800000000000000000000010422FF0D0032003000250020002D00200041006300630065006E00740032000000030001000C0007056566F2DCDBFF05000C0007010000000000FF25000500029302120012000D0000323025202D20416363656E743392084D00920800000000000000000000010426FF0D0032003000250020002D00200041006300630065006E00740033000000030001000C0007066566EBF1DEFF05000C0007010000000000FF25000500029302120013000D0000323025202D20416363656E743492084D0092080000000000000000000001042AFF0D0032003000250020002D00200041006300630065006E00740034000000030001000C0007076566E4DFECFF05000C0007010000000000FF25000500029302120014000D0000323025202D20416363656E743592084D0092080000000000000000000001042EFF0D0032003000250020002D00200041006300630065006E00740035000000030001000C0007086566DAEEF3FF05000C0007010000000000FF25000500029302120015000D0000323025202D20416363656E743692084D00920800000000000000000000010432FF0D0032003000250020002D00200041006300630065006E00740036000000030001000C0007096566FDE9D9FF05000C0007010000000000FF25000500029302120016000D0000343025202D20416363656E743192084D0092080000000000000000000001041FFF0D0034003000250020002D00200041006300630065006E00740031000000030001000C000704CC4CB8CCE4FF05000C0007010000000000FF25000500029302120017000D0000343025202D20416363656E743292084D00920800000000000000000000010423FF0D0034003000250020002D00200041006300630065006E00740032000000030001000C000705CC4CE6B8B7FF05000C0007010000000000FF25000500029302120018000D0000343025202D20416363656E743392084D00920800000000000000000000010427FF0D0034003000250020002D00200041006300630065006E00740033000000030001000C000706CC4CD8E4BCFF05000C0007010000000000FF25000500029302120019000D0000343025202D20416363656E743492084D0092080000000000000000000001042BFF0D0034003000250020002D00200041006300630065006E00740034000000030001000C000707CC4CCCC0DAFF05000C0007010000000000FF2500050002930212001A000D0000343025202D20416363656E743592084D0092080000000000000000000001042FFF0D0034003000250020002D00200041006300630065006E00740035000000030001000C000708CC4CB7DEE8FF05000C0007010000000000FF2500050002930212001B000D0000343025202D20416363656E743692084D00920800000000000000000000010433FF0D0034003000250020002D00200041006300630065006E00740036000000030001000C000709CC4CFCD5B4FF05000C0007010000000000FF2500050002930212001C000D0000363025202D20416363656E743192084D00920800000000000000000000010420FF0D0036003000250020002D00200041006300630065006E00740031000000030001000C000704323395B3D7FF05000C0007000000FFFFFFFF2500050002930212001D000D0000363025202D20416363656E743292084D00920800000000000000000000010424FF0D0036003000250020002D00200041006300630065006E00740032000000030001000C0007053233DA9694FF05000C0007000000FFFFFFFF2500050002930212001E000D0000363025202D20416363656E743392084D00920800000000000000000000010428FF0D0036003000250020002D00200041006300630065006E00740033000000030001000C0007063233C4D79BFF05000C0007000000FFFFFFFF2500050002930212001F000D0000363025202D20416363656E743492084D0092080000000000000000000001042CFF0D0036003000250020002D00200041006300630065006E00740034000000030001000C0007073233B1A0C7FF05000C0007000000FFFFFFFF25000500029302120020000D0000363025202D20416363656E743592084D00920800000000000000000000010430FF0D0036003000250020002D00200041006300630065006E00740035000000030001000C000708323392CDDCFF05000C0007000000FFFFFFFF25000500029302120021000D0000363025202D20416363656E743692084D00920800000000000000000000010434FF0D0036003000250020002D00200041006300630065006E00740036000000030001000C0007093233FABF8FFF05000C0007000000FFFFFFFF250005000293020C002200070000416363656E74319208410092080000000000000000000001041DFF070041006300630065006E00740031000000030001000C00070400004F81BDFF05000C0007000000FFFFFFFF250005000293020C002300070000416363656E743292084100920800000000000000000000010421FF070041006300630065006E00740032000000030001000C0007050000C0504DFF05000C0007000000FFFFFFFF250005000293020C002400070000416363656E743392084100920800000000000000000000010425FF070041006300630065006E00740033000000030001000C00070600009BBB59FF05000C0007000000FFFFFFFF250005000293020C002500070000416363656E743492084100920800000000000000000000010429FF070041006300630065006E00740034000000030001000C00070700008064A2FF05000C0007000000FFFFFFFF250005000293020C002600070000416363656E74359208410092080000000000000000000001042DFF070041006300630065006E00740035000000030001000C00070800004BACC6FF05000C0007000000FFFFFFFF250005000293020C002700070000416363656E743692084100920800000000000000000000010431FF070041006300630065006E00740036000000030001000C0007090000F79646FF05000C0007000000FFFFFFFF25000500029302080028000300004261649208390092080000000000000000000001011BFF03004200610064000000030001000C0005FF0000FFC7CEFF05000C0005FF00009C0006FF25000500029302100029000B000043616C63756C6174696F6E92088100920800000000000000000000010216FF0B00430061006C00630075006C006100740069006F006E000000070001000C0005FF0000F2F2F2FF05000C0005FF0000FA7D00FF250005000206000E0005FF00007F7F7FFF010007000E0005FF00007F7F7FFF010008000E0005FF00007F7F7FFF010009000E0005FF00007F7F7FFF010093020F002A000A0000436865636B2043656C6C92087F00920800000000000000000000010217FF0A0043006800650063006B002000430065006C006C000000070001000C0005FF0000A5A5A5FF05000C0007000000FFFFFFFF250005000206000E0005FF00003F3F3FFF060007000E0005FF00003F3F3FFF060008000E0005FF00003F3F3FFF060009000E0005FF00003F3F3FFF0600930204002B8003FF92082000920800000000000000000000010503FF050043006F006D006D00610000000000930204002C8006FF92082800920800000000000000000000010506FF090043006F006D006D00610020005B0030005D0000000000930204002D8004FF92082600920800000000000000000000010504FF0800430075007200720065006E006300790000000000930204002E8007FF92082E00920800000000000000000000010507FF0C00430075007200720065006E006300790020005B0030005D0000000000930215002F001000004578706C616E61746F7279205465787492084700920800000000000000000000010235FF10004500780070006C0061006E00610074006F0072007900200054006500780074000000020005000C0005FF00007F7F7FFF250005000293020400308009FF92083A00920800000000000000000000010209FF120046006F006C006C006F007700650064002000480079007000650072006C0069006E006B0000000000930209003100040000476F6F6492083B0092080000000000000000000001011AFF040047006F006F0064000000030001000C0005FF0000C6EFCEFF05000C0005FF0000006100FF250005000293020E00320009000048656164696E67203192084700920800000000000000000000010310FF0900480065006100640069006E006700200031000000030005000C00070300001F497DFF250005000207000E00070400004F81BDFF050093020E00330009000048656164696E67203292084700920800000000000000000000010311FF0900480065006100640069006E006700200032000000030005000C00070300001F497DFF250005000207000E000704FF3FA7BFDEFF050093020E00340009000048656164696E67203392084700920800000000000000000000010312FF0900480065006100640069006E006700200033000000030005000C00070300001F497DFF250005000207000E000704323395B3D7FF020093020E00350009000048656164696E67203492083900920800000000000000000000010313FF0900480065006100640069006E006700200034000000020005000C00070300001F497DFF250005000293020400368008FF92082800920800000000000000000000010208FF0900480079007000650072006C0069006E006B000000000093020A003700050000496E70757492087500920800000000000000000000010214FF050049006E007000750074000000070001000C0005FF0000FFCC99FF05000C0005FF00003F3F76FF250005000206000E0005FF00007F7F7FFF010007000E0005FF00007F7F7FFF010008000E0005FF00007F7F7FFF010009000E0005FF00007F7F7FFF01009302100038000B00004C696E6B65642043656C6C92084B00920800000000000000000000010218FF0B004C0069006E006B00650064002000430065006C006C000000030005000C0005FF0000FA7D00FF250005000207000E0005FF0000FF8001FF060093020C0039000700004E65757472616C9208410092080000000000000000000001011CFF07004E00650075007400720061006C000000030001000C0005FF0000FFEB9CFF05000C0005FF00009C6500FF250005000293020400008000FF92082200920800000000000000000000010100FF06004E006F0072006D0061006C000000000093020D003A000800004E6F726D616C2032920837009208000000000000000000000000FFFF08004E006F0072006D0061006C00200032000000020005000C0007010000000000FF2500050002930209003B000400004E6F74659208620092080000000000000000000001020AFF04004E006F00740065000000050001000C0005FF0000FFFFCCFF06000E0005FF0000B2B2B2FF010007000E0005FF0000B2B2B2FF010008000E0005FF0000B2B2B2FF010009000E0005FF0000B2B2B2FF010093020B003C000600004F757470757492087700920800000000000000000000010215FF06004F00750074007000750074000000070001000C0005FF0000F2F2F2FF05000C0005FF00003F3F3FFF250005000206000E0005FF00003F3F3FFF010007000E0005FF00003F3F3FFF010008000E0005FF00003F3F3FFF010009000E0005FF00003F3F3FFF0100930204003D8005FF92082400920800000000000000000000010505FF0700500065007200630065006E0074000000000093020A003E000500005469746C659208310092080000000000000000000001030FFF05005400690074006C0065000000020005000C00070300001F497DFF250005000193020A003F00050000546F74616C92084D00920800000000000000000000010319FF050054006F00740061006C000000040005000C0007010000000000FF250005000206000E00070400004F81BDFF010007000E00070400004F81BDFF06009302110040000C00005761726E696E67205465787492083F0092080000000000000000000001020BFF0C005700610072006E0069006E006700200054006500780074000000020005000C0005FF0000FF0000FF25000500028E0858008E080000000000000000000090000000110011005400610062006C0065005300740079006C0065004D0065006400690075006D0032005000690076006F0074005300740079006C0065004C00690067006800740031003600600102000000850012008C2E000000000A0043617465676F726965739A0818009A0800000000000000000000010000000000000004000000A3081000A30800000000000000000000000000008C00040001000100AE01040001000104170008000100000000000000180024000000000A0B0000000000000000000043617465676F726965733B000000000B0000000100C1010800C101000067E60100FC00D300110000001100000003000043494408000043617465676F7279090000496D6167654E616D650A0000496D61676556616C7565060000497353796E630A00004272616E6368436F64650300004242510B0000524546524553484D454E540A00004150504554495A4552530D0000434849434B454E2048414E44490E0000436869636B656E206B61726168690C00004D5554544F4E2048414E44490D00004D7574746F6E206B61726168690600004E4F4F444C45040000524943450D00004348494E45534520475241565907000054414E444F4F52FF001A000800492D00000C0000009D2D0000600000000A2E0000CD00000063081600630800000000000000000000160000000000000002009608100096080000000000000000000042E501009B0810009B0800000000000000000000010000008C0810008C0800000000000000000000000000000A00000009081000000610006632CD07C9800100060600000B02140000000000000000000C000000B12F0000713200000D00020001000C00020064000F000200010011000200000010000800FCA9F1D24D62503F5F00020001002A00020000002B0002000000820002000100800008000000000000000000250204000000FF0081000200C10414000500020000264115000A000700005061676520265083000200000084000200000026000800000000000000E83F27000800000000000000E83F28000800000000000000F03F29000800000000000000F03FA100220000000050010001000100040042E50100000000000000E03F000000000000E03F654E9C0826009C080000000000000000000000000000000000000000000000000000040000000000000000005500020008007D000C000100010024150F00060000007D000C00030003006D0B0F00060000007D000C0005000500B60B0F000600000000020E00000000000C00000000000600000008021000000000000600FF000000000000010F0008021000010000000600FF000000000000010F0008021000020000000600FF000000000000010F0008021000030000000600FF000000000000010F0008021000040000000600FF000000000000010F0008021000050000000600FF000000000000010F0008021000060000000600FF000000000000010F0008021000070000000600FF000000000000010F0008021000080000000600FF000000000000010F0008021000090000000600FF000000000000010F00080210000A0000000600FF000000000000010F00080210000B0000000600FF000000000000010F00FD000A00000000000F0000000000FD000A00000001000F0001000000FD000A00000002000F0002000000FD000A00000003000F0003000000FD000A00000004000F0004000000FD000A00000005000F00050000007E020A00010000000F000000F03FFD000A00010001004100070000007E020A00020000000F0000000040FD000A00020001000F00080000007E020A00030000000F0000000840FD000A00030001000F00060000007E020A00040000000F0000001040FD000A00040001000F00090000007E020A00050000000F0000001440FD000A00050001000F000A0000007E020A00060000000F0000001840FD000A00060001000F000B0000007E020A00070000000F0000001C40FD000A00070001000F000C0000007E020A00080000000F0000002040FD000A00080001000F000D0000007E020A00090000000F0000002240FD000A00090001000F000E0000007E020A000A0000000F0000002440FD000A000A0001000F000F0000007E020A000B0000000F0000002640FD000A000B0001000F0010000000D7001C0078020000DC0054001C001C001C001C001C001C001C001C001C001C003E021200B6060000000040000000000000000B0000008B0810008B080000000000000000000000000A001D000F0003010000000000010001000100000067081700670800000000000000000000020001FFFFFFFF034400000A0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FEFF0000060202000000000000000000000000000000000001000000E0859FF2F94F6810AB9108002B27B3D9300000005000000004000000010000002800000008000000300000000D0000003C000000130000004800000002000000E40400001E000000040000006D61730040000000806329C49F26D50103000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FEFF000006020200000000000000000000000000000000000100000002D5CDD59C2E1B10939708002B2CF9AE30000000E000000008000000010000004800000017000000500000000B000000580000001000000060000000130000006800000016000000700000000D000000780000000C0000009E00000002000000E40400000300000000000E000B000000000000000B000000000000000B000000000000000B000000000000001E100000020000000B00000043617465676F72696573000B00000043617465676F72696573000C100000040000001E0000000B000000576F726B7368656574730003000000010000001E0000000D0000004E616D65642052616E676573000300000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A0000000B0000000C0000000D0000000E0000000F00000010000000110000001200000013000000140000001500000016000000170000001800000019000000FEFFFFFF1B0000001C0000001D0000001E0000001F0000002000000021000000FEFFFFFF23000000240000002500000026000000270000002800000029000000FEFFFFFFFDFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52006F006F007400200045006E00740072007900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016000501FFFFFFFFFFFFFFFF020000002008020000000000C000000000000046000000000000000000000000508F9F1141D4D501FEFFFFFF000000000000000057006F0072006B0062006F006F006B0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000012000201FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000000000000ED320000000000000500530075006D006D0061007200790049006E0066006F0072006D006100740069006F006E000000000000000000000000000000000000000000000000000000280002010100000003000000FFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000001A0000000010000000000000050044006F00630075006D0065006E007400530075006D006D0061007200790049006E0066006F0072006D006100740069006F006E000000000000000000000038000201FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000220000000010000000000000, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SampleFiles] ([Code], [Name], [FileDetail], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ID], [BranchCode]) VALUES (5, N'PurchaseDetail', 0xD0CF11E0A1B11AE1000000000000000000000000000000003E000300FEFF0900060000000000000000000000010000002D0000000000000000100000FEFFFFFF00000000FEFFFFFF000000002C000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF09081000000605006632CD07C980010006060000E1000200B004C10002000000E20000005C0070000300006D61732020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202042000200B004610102000000C00100003D01020001009C0002001100190002000000120002000000130002000000AF0102000000BC01020000003D001200E0016900D3594524380000000000010058024000020000008D00020000002200020000000E0002000100B70102000000DA000200000031001E00DC000000080090010000000200000701430061006C00690062007200690031001E00DC000000080090010000000200000701430061006C00690062007200690031001E00DC000000080090010000000200000701430061006C00690062007200690031001E00DC000000080090010000000200000701430061006C00690062007200690031001E00DC000000080090010000000200000701430061006C00690062007200690031001E00DC000000090090010000000200000701430061006C00690062007200690031001E00DC000000140090010000000200000701430061006C00690062007200690031001E00DC0001003400BC020000000200000701430061006C00690062007200690031001E00DC0001000900BC020000000200000701430061006C00690062007200690031001E00DC000200170090010000000200000701430061006C00690062007200690031001E00DC000000110090010000000200000701430061006C00690062007200690031001E002C0101003800BC020000000200000701430061006C00690062007200690031001E00040101003800BC020000000200000701430061006C00690062007200690031001E00DC0001003800BC020000000200000701430061006C00690062007200690031001E00DC0000003E0090010000000200000701430061006C00690062007200690031001E00DC000000340090010000000200000701430061006C00690062007200690031001E00DC0000003C0090010000000200000701430061006C00690062007200690031001E00DC0001003F00BC020000000200000701430061006C00690062007200690031001E00680101003800BC020000000200000701430061006D00620072006900610031001E00DC0001000800BC020000000200000701430061006C00690062007200690031001E00DC0000000A0090010000000200000701430061006C00690062007200690031001C00B40000000800900100000000000006015400610068006F006D0061001E041C000500170000222422232C2323305F293B5C28222422232C2323305C291E04210006001C0000222422232C2323305F293B5B5265645D5C28222422232C2323305C291E04220007001D0000222422232C2323302E30305F293B5C28222422232C2323302E30305C291E0427000800220000222422232C2323302E30305F293B5B5265645D5C28222422232C2323302E30305C291E0437002A003200005F282224222A20232C2323305F293B5F282224222A205C28232C2323305C293B5F282224222A20222D225F293B5F28405F291E042E0029002900005F282A20232C2323305F293B5F282A205C28232C2323305C293B5F282A20222D225F293B5F28405F291E043F002C003A00005F282224222A20232C2323302E30305F293B5F282224222A205C28232C2323302E30305C293B5F282224222A20222D223F3F5F293B5F28405F291E0436002B003100005F282A20232C2323302E30305F293B5F282A205C28232C2323302E30305C293B5F282A20222D223F3F5F293B5F28405F291E041200A4000D00005B242D31303430395D302E30301E040D00A5000800006D6D6D2F797979791E042000A6001B0000797979792F6D6D2F64645C2068683A6D6D3A73735C20414D2F504DE000140000000000F5FF200000000000000000000000C020E000140005000000F5FF200000F40000000000000000C020E000140005000000F5FF200000F40000000000000000C020E000140005000000F5FF200000F40000000000000000C020E000140005000000F5FF200000F40000000000000000C020E000140005000000F5FF200000F40000000000000000C020E000140005000000F5FF200000F40000000000000000C020E000140005000000F5FF200000F40000000000000000C020E000140005000000F5FF200000F40000000000000000C020E000140005000000F5FF200000F40000000000000000C020E000140005000000F5FF200000F40000000000000000C020E000140005000000F5FF200000F40000000000000000C020E000140005000000F5FF200000F40000000000000000C020E000140005000000F5FF200000F40000000000000000C020E000140005000000F5FF200000F40000000000000000C020E0001400000000000100200000000000000000000002C020E000140005000000F5FF200000B400000000000000049F20E000140005000000F5FF200000B40000000000000004AD20E000140005000000F5FF200000B40000000000000004AA20E000140005000000F5FF200000B40000000000000004AE20E000140005000000F5FF200000B400000000000000049B20E000140005000000F5FF200000B40000000000000004AF20E000140005000000F5FF200000B40000000000000004AC20E000140005000000F5FF200000B400000000000000049D20E000140005000000F5FF200000B400000000000000048B20E000140005000000F5FF200000B40000000000000004AE20E000140005000000F5FF200000B40000000000000004AC20E000140005000000F5FF200000B40000000000000004B320E000140006000000F5FF200000B400000000000000049E20E000140006000000F5FF200000B400000000000000049D20E000140006000000F5FF200000B400000000000000048B20E000140006000000F5FF200000B40000000000000004A420E000140006000000F5FF200000B40000000000000004B120E000140006000000F5FF200000B40000000000000004B420E000140006000000F5FF200000B40000000000000004BE20E000140006000000F5FF200000B400000000000000048A20E000140006000000F5FF200000B40000000000000004B920E000140006000000F5FF200000B40000000000000004A420E000140006000000F5FF200000B40000000000000004B120E000140006000000F5FF200000B40000000000000004B520E000140007000000F5FF200000B40000000000000004AD20E000140008000000F5FF200000941111970B970B00049620E000140009000000F5FF200000946666BF1FBF1F0004B720E000140005002B00F5FF200000F80000000000000000C020E000140005002900F5FF200000F80000000000000000C020E000140005002C00F5FF200000F80000000000000000C020E000140005002A00F5FF200000F80000000000000000C020E00014000A000000F5FF200000F40000000000000000C020E00014000B000000F5FF200000B40000000000000004AA20E00014000C000000F5FF200000D400500000001F0000C020E00014000D000000F5FF200000D400500000000B0000C020E00014000E000000F5FF200000D400200000000F0000C020E00014000E000000F5FF200000F40000000000000000C020E00014000F000000F5FF200000941111970B970B0004AF20E000140010000000F5FF200000D400600000001A0000C020E000140011000000F5FF200000B40000000000000004AB20E000140005000000F5FF2000009C1111160B160B00049A20E000140012000000F5FF200000941111BF1FBF1F00049620E000140005000900F5FF200000F80000000000000000C020E000140013000000F5FF200000F40000000000000000C020E000140014000000F5FF200000D4006100003E1F0000C020E000140015000000F5FF200000F40000000000000000C020E00014001600040001001300407C1111B71BB71B00068920E0001400000001000100200000040000000000000002C0207C0814007C08000000000000000000000000400087BB66677D082D007D080000000000000000000000000000000002000D001400030000000100000030305C293B5F282A0E000500027D082D007D080000000000000000000000000100000002000D001400030000000100000030305C293B5F282A0E000500027D082D007D080000000000000000000000000200000002000D001400030000000100000030305C293B5F282A0E000500027D082D007D080000000000000000000000000300000002000D001400030000000100000030305C293B5F282A0E000500027D082D007D080000000000000000000000000400000002000D001400030000000100000030305C293B5F282A0E000500027D082D007D080000000000000000000000000500000002000D001400030000000100000030305C293B5F282A0E000500027D082D007D080000000000000000000000000600000002000D001400030000000100000030305C293B5F282A0E000500027D082D007D080000000000000000000000000700000002000D001400030000000100000030305C293B5F282A0E000500027D082D007D080000000000000000000000000800000002000D001400030000000100000030305C293B5F282A0E000500027D082D007D080000000000000000000000000900000002000D001400030000000100000030305C293B5F282A0E000500027D082D007D080000000000000000000000000A00000002000D001400030000000100000030305C293B5F282A0E000500027D082D007D080000000000000000000000000B00000002000D001400030000000100000030305C293B5F282A0E000500027D082D007D080000000000000000000000000C00000002000D001400030000000100000030305C293B5F282A0E000500027D082D007D080000000000000000000000000D00000002000D001400030000000100000030305C293B5F282A0E000500027D082D007D080000000000000000000000000E00000002000D001400030000000100000030305C293B5F282A0E000500027D082D007D080000000000000000000000000F00000002000D001400030000000100000030305C293B5F282A0E000500027D0841007D080000000000000000000000001000000003000D001400030000000100000030305C293B5F282A0E000500020400140003006566040000003B5F28405F2920207D0841007D080000000000000000000000001100000003000D001400030000000100000030305C293B5F282A0E000500020400140003006566050000003B5F28405F2920207D0841007D080000000000000000000000001200000003000D001400030000000100000030305C293B5F282A0E000500020400140003006566060000003B5F28405F2920207D0841007D080000000000000000000000001300000003000D001400030000000100000030305C293B5F282A0E000500020400140003006566070000003B5F28405F2920207D0841007D080000000000000000000000001400000003000D001400030000000100000030305C293B5F282A0E000500020400140003006566080000003B5F28405F2920207D0841007D080000000000000000000000001500000003000D001400030000000100000030305C293B5F282A0E000500020400140003006566090000003B5F28405F2920207D0841007D080000000000000000000000001600000003000D001400030000000100000030305C293B5F282A0E00050002040014000300CC4C040000003B5F28405F2920207D0841007D080000000000000000000000001700000003000D001400030000000100000030305C293B5F282A0E00050002040014000300CC4C050000003B5F28405F2920207D0841007D080000000000000000000000001800000003000D001400030000000100000030305C293B5F282A0E00050002040014000300CC4C060000003B5F28405F2920207D0841007D080000000000000000000000001900000003000D001400030000000100000030305C293B5F282A0E00050002040014000300CC4C070000003B5F28405F2920207D0841007D080000000000000000000000001A00000003000D001400030000000100000030305C293B5F282A0E00050002040014000300CC4C080000003B5F28405F2920207D0841007D080000000000000000000000001B00000003000D001400030000000100000030305C293B5F282A0E00050002040014000300CC4C090000003B5F28405F2920207D0841007D080000000000000000000000001C00000003000D001400030000000000000030305C293B5F282A0E000500020400140003003233040000003B5F28405F2920207D0841007D080000000000000000000000001D00000003000D001400030000000000000030305C293B5F282A0E000500020400140003003233050000003B5F28405F2920207D0841007D080000000000000000000000001E00000003000D001400030000000000000030305C293B5F282A0E000500020400140003003233060000003B5F28405F2920207D0841007D080000000000000000000000001F00000003000D001400030000000000000030305C293B5F282A0E000500020400140003003233070000003B5F28405F2920207D0841007D080000000000000000000000002000000003000D001400030000000000000030305C293B5F282A0E000500020400140003003233080000003B5F28405F2920207D0841007D080000000000000000000000002100000003000D001400030000000000000030305C293B5F282A0E000500020400140003003233090000003B5F28405F2920207D0841007D080000000000000000000000002200000003000D001400030000000000000030305C293B5F282A0E000500020400140003000000040000003B5F28405F2920207D0841007D080000000000000000000000002300000003000D001400030000000000000030305C293B5F282A0E000500020400140003000000050000003B5F28405F2920207D0841007D080000000000000000000000002400000003000D001400030000000000000030305C293B5F282A0E000500020400140003000000060000003B5F28405F2920207D0841007D080000000000000000000000002500000003000D001400030000000000000030305C293B5F282A0E000500020400140003000000070000003B5F28405F2920207D0841007D080000000000000000000000002600000003000D001400030000000000000030305C293B5F282A0E000500020400140003000000080000003B5F28405F2920207D0841007D080000000000000000000000002700000003000D001400030000000000000030305C293B5F282A0E000500020400140003000000090000003B5F28405F2920207D0841007D080000000000000000000000002800000003000D001400020000009C0006FF30305C293B5F282A0E000500020400140002000000FFC7CEFF3B5F28405F2920207D0891007D080000000000000000000000002900000007000D00140002000000FA7D00FF30305C293B5F282A0E000500020400140002000000F2F2F2FF3B5F28405F29202007001400020000007F7F7FFF202020202020202008001400020000007F7F7FFF202020202020202009001400020000007F7F7FFF00000000000000000A001400020000007F7F7FFF00000000000000007D0891007D080000000000000000000000002A00000007000D001400030000000000000030305C293B5F282A0E000500020400140002000000A5A5A5FF3B5F28405F29202007001400020000003F3F3FFF202020202020202008001400020000003F3F3FFF202020202020202009001400020000003F3F3FFF00000000000000000A001400020000003F3F3FFF00000000000000007D082D007D080000000000000000000000002B00000002000D001400030000000100000030305C293B5F282A0E000500027D082D007D080000000000000000000000002C00000002000D001400030000000100000030305C293B5F282A0E000500027D082D007D080000000000000000000000002D00000002000D001400030000000100000030305C293B5F282A0E000500027D082D007D080000000000000000000000002E00000002000D001400030000000100000030305C293B5F282A0E000500027D082D007D080000000000000000000000002F00000002000D001400020000007F7F7FFF30305C293B5F282A0E000500027D0841007D080000000000000000000000003000000003000D00140002000000006100FF30305C293B5F282A0E000500020400140002000000C6EFCEFF3B5F28405F2920207D0841007D080000000000000000000000003100000003000D001400030000000300000030305C293B5F282A0E000500020800140003000000040000003B5F28405F2920207D0841007D080000000000000000000000003200000003000D001400030000000300000030305C293B5F282A0E00050002080014000300FF3F040000003B5F28405F2920207D0841007D080000000000000000000000003300000003000D001400030000000300000030305C293B5F282A0E000500020800140003003233040000003B5F28405F2920207D082D007D080000000000000000000000003400000002000D001400030000000300000030305C293B5F282A0E000500027D0891007D080000000000000000000000003500000007000D001400020000003F3F76FF30305C293B5F282A0E000500020400140002000000FFCC99FF3B5F28405F29202007001400020000007F7F7FFF202020202020202008001400020000007F7F7FFF202020202020202009001400020000007F7F7FFF00000000000000000A001400020000007F7F7FFF00000000000000007D0841007D080000000000000000000000003600000003000D00140002000000FA7D00FF30305C293B5F282A0E000500020800140002000000FF8001FF3B5F28405F2920207D0841007D080000000000000000000000003700000003000D001400020000009C6500FF30305C293B5F282A0E000500020400140002000000FFEB9CFF3B5F28405F2920207D0891007D080000000000000000000000003800000007000D001400030000000100000030305C293B5F282A0E000500020400140002000000FFFFCCFF3B5F28405F2920200700140002000000B2B2B2FF20202020202020200800140002000000B2B2B2FF20202020202020200900140002000000B2B2B2FF00000000000000000A00140002000000B2B2B2FF00000000000000007D0891007D080000000000000000000000003900000007000D001400020000003F3F3FFF30305C293B5F282A0E000500020400140002000000F2F2F2FF3B5F28405F29202007001400020000003F3F3FFF202020202020202008001400020000003F3F3FFF202020202020202009001400020000003F3F3FFF00000000000000000A001400020000003F3F3FFF00000000000000007D082D007D080000000000000000000000003A00000002000D001400030000000100000030305C293B5F282A0E000500027D082D007D080000000000000000000000003B00000002000D001400030000000300000030305C293B5F282A0E000500017D0855007D080000000000000000000000003C00000004000D001400030000000100000030305C293B5F282A0E000500020700140003000000040000003B5F28405F29202008001400030000000400000020202020202020207D082D007D080000000000000000000000003D00000002000D00140002000000FF0000FF30305C293B5F282A0E000500027D088C007D080000000000000000000000003E00000006000D00140002000000000000FF30305C293B5F282A0400140002000000FFFFFFFF00040000003B5F280700140002000000A9A9A9FF00040000002020200800140002000000A9A9A9FF003F3F3FFF2020200900140002000000A9A9A9FF003F3F3FFF0000000A00140002000000A9A9A9FF003F3F3FFF0000007D082D007D080000000000000000000000003F00000002000D001400030000000100000030305C293B5F282A0E000500029302120010000D0000323025202D20416363656E743192084D0092080000000000000000000001041EFF0D0032003000250020002D00200041006300630065006E00740031000000030001000C0007046566DCE6F1FF05000C0007010000000000FF25000500029302120011000D0000323025202D20416363656E743292084D00920800000000000000000000010422FF0D0032003000250020002D00200041006300630065006E00740032000000030001000C0007056566F2DCDBFF05000C0007010000000000FF25000500029302120012000D0000323025202D20416363656E743392084D00920800000000000000000000010426FF0D0032003000250020002D00200041006300630065006E00740033000000030001000C0007066566EBF1DEFF05000C0007010000000000FF25000500029302120013000D0000323025202D20416363656E743492084D0092080000000000000000000001042AFF0D0032003000250020002D00200041006300630065006E00740034000000030001000C0007076566E4DFECFF05000C0007010000000000FF25000500029302120014000D0000323025202D20416363656E743592084D0092080000000000000000000001042EFF0D0032003000250020002D00200041006300630065006E00740035000000030001000C0007086566DAEEF3FF05000C0007010000000000FF25000500029302120015000D0000323025202D20416363656E743692084D00920800000000000000000000010432FF0D0032003000250020002D00200041006300630065006E00740036000000030001000C0007096566FDE9D9FF05000C0007010000000000FF25000500029302120016000D0000343025202D20416363656E743192084D0092080000000000000000000001041FFF0D0034003000250020002D00200041006300630065006E00740031000000030001000C000704CC4CB8CCE4FF05000C0007010000000000FF25000500029302120017000D0000343025202D20416363656E743292084D00920800000000000000000000010423FF0D0034003000250020002D00200041006300630065006E00740032000000030001000C000705CC4CE6B8B7FF05000C0007010000000000FF25000500029302120018000D0000343025202D20416363656E743392084D00920800000000000000000000010427FF0D0034003000250020002D00200041006300630065006E00740033000000030001000C000706CC4CD8E4BCFF05000C0007010000000000FF25000500029302120019000D0000343025202D20416363656E743492084D0092080000000000000000000001042BFF0D0034003000250020002D00200041006300630065006E00740034000000030001000C000707CC4CCCC0DAFF05000C0007010000000000FF2500050002930212001A000D0000343025202D20416363656E743592084D0092080000000000000000000001042FFF0D0034003000250020002D00200041006300630065006E00740035000000030001000C000708CC4CB7DEE8FF05000C0007010000000000FF2500050002930212001B000D0000343025202D20416363656E743692084D00920800000000000000000000010433FF0D0034003000250020002D00200041006300630065006E00740036000000030001000C000709CC4CFCD5B4FF05000C0007010000000000FF2500050002930212001C000D0000363025202D20416363656E743192084D00920800000000000000000000010420FF0D0036003000250020002D00200041006300630065006E00740031000000030001000C000704323395B3D7FF05000C0007000000FFFFFFFF2500050002930212001D000D0000363025202D20416363656E743292084D00920800000000000000000000010424FF0D0036003000250020002D00200041006300630065006E00740032000000030001000C0007053233DA9694FF05000C0007000000FFFFFFFF2500050002930212001E000D0000363025202D20416363656E743392084D00920800000000000000000000010428FF0D0036003000250020002D00200041006300630065006E00740033000000030001000C0007063233C4D79BFF05000C0007000000FFFFFFFF2500050002930212001F000D0000363025202D20416363656E743492084D0092080000000000000000000001042CFF0D0036003000250020002D00200041006300630065006E00740034000000030001000C0007073233B1A0C7FF05000C0007000000FFFFFFFF25000500029302120020000D0000363025202D20416363656E743592084D00920800000000000000000000010430FF0D0036003000250020002D00200041006300630065006E00740035000000030001000C000708323392CDDCFF05000C0007000000FFFFFFFF25000500029302120021000D0000363025202D20416363656E743692084D00920800000000000000000000010434FF0D0036003000250020002D00200041006300630065006E00740036000000030001000C0007093233FABF8FFF05000C0007000000FFFFFFFF250005000293020C002200070000416363656E74319208410092080000000000000000000001041DFF070041006300630065006E00740031000000030001000C00070400004F81BDFF05000C0007000000FFFFFFFF250005000293020C002300070000416363656E743292084100920800000000000000000000010421FF070041006300630065006E00740032000000030001000C0007050000C0504DFF05000C0007000000FFFFFFFF250005000293020C002400070000416363656E743392084100920800000000000000000000010425FF070041006300630065006E00740033000000030001000C00070600009BBB59FF05000C0007000000FFFFFFFF250005000293020C002500070000416363656E743492084100920800000000000000000000010429FF070041006300630065006E00740034000000030001000C00070700008064A2FF05000C0007000000FFFFFFFF250005000293020C002600070000416363656E74359208410092080000000000000000000001042DFF070041006300630065006E00740035000000030001000C00070800004BACC6FF05000C0007000000FFFFFFFF250005000293020C002700070000416363656E743692084100920800000000000000000000010431FF070041006300630065006E00740036000000030001000C0007090000F79646FF05000C0007000000FFFFFFFF25000500029302080028000300004261649208390092080000000000000000000001011BFF03004200610064000000030001000C0005FF0000FFC7CEFF05000C0005FF00009C0006FF25000500029302100029000B000043616C63756C6174696F6E92088100920800000000000000000000010216FF0B00430061006C00630075006C006100740069006F006E000000070001000C0005FF0000F2F2F2FF05000C0005FF0000FA7D00FF250005000206000E0005FF00007F7F7FFF010007000E0005FF00007F7F7FFF010008000E0005FF00007F7F7FFF010009000E0005FF00007F7F7FFF010093020F002A000A0000436865636B2043656C6C92087F00920800000000000000000000010217FF0A0043006800650063006B002000430065006C006C000000070001000C0005FF0000A5A5A5FF05000C0007000000FFFFFFFF250005000206000E0005FF00003F3F3FFF060007000E0005FF00003F3F3FFF060008000E0005FF00003F3F3FFF060009000E0005FF00003F3F3FFF0600930204002B8003FF92082000920800000000000000000000010503FF050043006F006D006D00610000000000930204002C8006FF92082800920800000000000000000000010506FF090043006F006D006D00610020005B0030005D0000000000930204002D8004FF92082600920800000000000000000000010504FF0800430075007200720065006E006300790000000000930204002E8007FF92082E00920800000000000000000000010507FF0C00430075007200720065006E006300790020005B0030005D0000000000930215002F001000004578706C616E61746F7279205465787492084700920800000000000000000000010235FF10004500780070006C0061006E00610074006F0072007900200054006500780074000000020005000C0005FF00007F7F7FFF2500050002930209003000040000476F6F6492083B0092080000000000000000000001011AFF040047006F006F0064000000030001000C0005FF0000C6EFCEFF05000C0005FF0000006100FF250005000293020E00310009000048656164696E67203192084700920800000000000000000000010310FF0900480065006100640069006E006700200031000000030005000C00070300001F497DFF250005000207000E00070400004F81BDFF050093020E00320009000048656164696E67203292084700920800000000000000000000010311FF0900480065006100640069006E006700200032000000030005000C00070300001F497DFF250005000207000E000704FF3FA7BFDEFF050093020E00330009000048656164696E67203392084700920800000000000000000000010312FF0900480065006100640069006E006700200033000000030005000C00070300001F497DFF250005000207000E000704323395B3D7FF020093020E00340009000048656164696E67203492083900920800000000000000000000010313FF0900480065006100640069006E006700200034000000020005000C00070300001F497DFF250005000293020A003500050000496E70757492087500920800000000000000000000010214FF050049006E007000750074000000070001000C0005FF0000FFCC99FF05000C0005FF00003F3F76FF250005000206000E0005FF00007F7F7FFF010007000E0005FF00007F7F7FFF010008000E0005FF00007F7F7FFF010009000E0005FF00007F7F7FFF01009302100036000B00004C696E6B65642043656C6C92084B00920800000000000000000000010218FF0B004C0069006E006B00650064002000430065006C006C000000030005000C0005FF0000FA7D00FF250005000207000E0005FF0000FF8001FF060093020C0037000700004E65757472616C9208410092080000000000000000000001011CFF07004E00650075007400720061006C000000030001000C0005FF0000FFEB9CFF05000C0005FF00009C6500FF250005000293020400008000FF92083300920800000000000000000000010100FF06004E006F0072006D0061006C000000020005000C0007010000000000FF25000500029302090038000400004E6F74659208620092080000000000000000000001020AFF04004E006F00740065000000050001000C0005FF0000FFFFCCFF06000E0005FF0000B2B2B2FF010007000E0005FF0000B2B2B2FF010008000E0005FF0000B2B2B2FF010009000E0005FF0000B2B2B2FF010093020B0039000600004F757470757492087700920800000000000000000000010215FF06004F00750074007000750074000000070001000C0005FF0000F2F2F2FF05000C0005FF00003F3F3FFF250005000206000E0005FF00003F3F3FFF010007000E0005FF00003F3F3FFF010008000E0005FF00003F3F3FFF010009000E0005FF00003F3F3FFF0100930204003A8005FF92082400920800000000000000000000010505FF0700500065007200630065006E0074000000000093020A003B000500005469746C659208310092080000000000000000000001030FFF05005400690074006C0065000000020005000C00070300001F497DFF250005000193020A003C00050000546F74616C92084D00920800000000000000000000010319FF050054006F00740061006C000000040005000C0007010000000000FF250005000206000E00070400004F81BDFF010007000E00070400004F81BDFF0600930211003D000C00005761726E696E67205465787492083F0092080000000000000000000001020BFF0C005700610072006E0069006E006700200054006500780074000000020005000C0005FF0000FF0000FF25000500028E0858008E080000000000000000000090000000110011005400610062006C0065005300740079006C0065004D0065006400690075006D0032005000690076006F0074005300740079006C0065004C00690067006800740031003600600102000000850016002630000000000E00507572636861736544657461696C9A0818009A0800000000000000000000010000000000000004000000A3081000A30800000000000000000000000000008C00040001000100AE0104000100010417000800010000000000000018001B00210000010B000000010000000000000D3D00000000000000000000C1010800C10100008D340200FC0084000A0000000A0000000800005175616E74697479080000446973636F756E740D00005075726368617365507269636507000042617463684E6F0A0000457870697279446174650D00004578747261446973636F756E740E000050726F64756374426172436F6465050000426F6E757308000054617852617465310800005461785261746532FF00120008003A2F00000C000000A02F00007200000063081600630800000000000000000000160000000000000002009608100096080000000000000000000042E501009B0810009B0800000000000000000000010000008C0810008C0800000000000000000000000000000A00000009081000000610006632CD07C9800100060600000B0214000000000000000000030000002A350000DE3600000D00020001000C00020064000F000200010011000200000010000800FCA9F1D24D62503F5F00020001002A00020000002B00020000008200020001008000080000000000000000002502040000002C0181000200C104140000001500000083000200000084000200000026000800666666666666E63F27000800666666666666E63F28000800000000000000E83F29000800000000000000E83F4D00EA0300004B00310000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001040306DC000C0343EF800501000100EA0A6F08640001000F00C80002000100C800020001004C00650074007400650072000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000010000000200000001000000FFFFFFFF0000000000000000000000000000000044494E552200B0000C030000C1951CFB000000000000000000000000000000000000000000000000000000000600000001000000000000000200010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000B0000000534D544A000000001000A00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000A1002200010064000100010001000200C800C800333333333333D33F333333333333D33F01009C0826009C0800000000000000000000000000000000000000000000000000003C3300000000000000005500020008007D000C00000000006D110F00020000007D000C0001000100920D0F00060000007D000C0002000200B6080F00060000007D000C0003000300B6080F00020000007D000C00080008006D080F00060000007D000C0009000900920A0F000600000000020E00000000000300000000000A00000008021000000000000A002C010000000000010F0008021000010000000A0021010000000040010F0008021000020000000A002C010000000000010F00FD000A00000000000F0006000000FD000A00000001000F0002000000FD000A00000002000F0000000000FD000A00000003000F0007000000FD000A00000004000F0001000000FD000A00000005000F0005000000FD000A00000006000F0008000000FD000A00000007000F0009000000FD000A00000008000F0003000000FD000A00000009000F0004000000BD003600010000003F008029C4403E0000406F400F0000003E400F00000000000F00000024400F00000034400F0000003E400F00000044400700BD003600020000003F00003BC4400F00008051400F00000049400F00000000000F00000024400F00000000000F00000034400F00000000000700D7000A003C01000028008C003A003E021200B6060000000040000000000000000F0000008B0810008B080000000000000000000000000A001D000F0003020000000000010002000200000067081700670800000000000000000000020001FFFFFFFF034400000A00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FEFF0000060202000000000000000000000000000000000001000000E0859FF2F94F6810AB9108002B27B3D930000000980000000700000001000000400000000400000048000000080000005400000012000000600000000C000000780000000D00000084000000130000009000000002000000E40400001E000000040000004D6173001E000000040000006D6173001E000000100000004D6963726F736F667420457863656C00400000000084FF91AF19D4014000000080ECCD53C060D60103000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FEFF000006020200000000000000000000000000000000000100000002D5CDD59C2E1B10939708002B2CF9AE30000000B800000008000000010000004800000017000000500000000B000000580000001000000060000000130000006800000016000000700000000D000000780000000C0000009300000002000000E40400000300000000000E000B000000000000000B000000000000000B000000000000000B000000000000001E100000010000000F000000507572636861736544657461696C000C100000020000001E0000000B000000576F726B73686565747300030000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A0000000B0000000C0000000D0000000E0000000F000000100000001100000012000000130000001400000015000000160000001700000018000000190000001A0000001B000000FEFFFFFF1D0000001E0000001F00000020000000210000002200000023000000FEFFFFFF25000000260000002700000028000000290000002A0000002B000000FEFFFFFFFDFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52006F006F007400200045006E00740072007900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016000501FFFFFFFFFFFFFFFF020000002008020000000000C0000000000000460000000000000000000000000000000000000000FEFFFFFF000000000000000057006F0072006B0062006F006F006B0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000012000201FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000000000048370000000000000500530075006D006D0061007200790049006E0066006F0072006D006100740069006F006E000000000000000000000000000000000000000000000000000000280002010100000003000000FFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000001C0000000010000000000000050044006F00630075006D0065006E007400530075006D006D0061007200790049006E0066006F0072006D006100740069006F006E000000000000000000000038000201FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000240000000010000000000000, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SampleFiles] ([Code], [Name], [FileDetail], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ID], [BranchCode]) VALUES (6, N'Attendance', 0xD0CF11E0A1B11AE1000000000000000000000000000000003E000300FEFF090006000000000000000000000001000000370000000000000000100000FEFFFFFF00000000FEFFFFFF0000000036000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF09081000000605006632CD07C980010006060000E1000200B004C10002000000E20000005C0070000300006D61732020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202042000200B004610102000000C00100003D01020001009C0002001100190002000000120002000000130002000000AF0102000000BC01020000003D00120068014B009F424E2A380000000000010058024000020000008D00020000002200020000000E0002000100B70102000000DA000200000031002A00C8000000FF7F90010000000000000D014D0053002000530061006E00730020005300650072006900660031002A00C8000100FF7FBC020000000000000D014D0053002000530061006E00730020005300650072006900660031002A00C8000200FF7F90010000000000000D014D0053002000530061006E00730020005300650072006900660031002A00C8000300FF7FBC020000000000000D014D0053002000530061006E00730020005300650072006900660031002A00C8000000FF7F90010000000200000D014D0053002000530061006E00730020005300650072006900660031002A00C80004000C0090010000010200000D014D0053002000530061006E00730020005300650072006900660031002A00C80004000E0090010000010200000D014D0053002000530061006E00730020005300650072006900660031001E00DC000000FF7F90010000000200000701430061006C00690062007200690031002A00C8000000FF7F90010000000200000D014D0053002000530061006E00730020005300650072006900660031001E00DC000000080090010000000200000701430061006C00690062007200690031001E00DC000000090090010000000200000701430061006C00690062007200690031001E00DC000000140090010000000200000701430061006C00690062007200690031001E00DC0001003400BC020000000200000701430061006C00690062007200690031001E00DC0001000900BC020000000200000701430061006C00690062007200690031001E00DC000200170090010000000200000701430061006C00690062007200690031001E00DC000000110090010000000200000701430061006C00690062007200690031001E002C0101003800BC020000000200000701430061006C00690062007200690031001E00040101003800BC020000000200000701430061006C00690062007200690031001E00DC0001003800BC020000000200000701430061006C00690062007200690031001E00DC0000003E0090010000000200000701430061006C00690062007200690031001E00DC000000340090010000000200000701430061006C00690062007200690031001E00DC0000003C0090010000000200000701430061006C00690062007200690031001E00DC0001003F00BC020000000200000701430061006C00690062007200690031001E00680101003800BC020000000200000701430061006D00620072006900610031001E00DC0001000800BC020000000200000701430061006C00690062007200690031001E00DC0000000A0090010000000200000701430061006C0069006200720069001E041C000500170000222422232C2323305F293B5C28222422232C2323305C291E04210006001C0000222422232C2323305F293B5B5265645D5C28222422232C2323305C291E04220007001D0000222422232C2323302E30305F293B5C28222422232C2323302E30305C291E0427000800220000222422232C2323302E30305F293B5B5265645D5C28222422232C2323302E30305C291E0437002A003200005F282224222A20232C2323305F293B5F282224222A205C28232C2323305C293B5F282224222A20222D225F293B5F28405F291E042E0029002900005F282A20232C2323305F293B5F282A205C28232C2323305C293B5F282A20222D225F293B5F28405F291E043F002C003A00005F282224222A20232C2323302E30305F293B5F282224222A205C28232C2323302E30305C293B5F282224222A20222D223F3F5F293B5F28405F291E0436002B003100005F282A20232C2323302E30305F293B5F282A205C28232C2323302E30305C293B5F282A20222D223F3F5F293B5F28405F291E041500A40010000022596573223B22596573223B224E6F221E041A00A5001500002254727565223B2254727565223B2246616C7365221E041400A6000F0000224F6E223B224F6E223B224F6666221E045D00A7002C00015B002400AC202D0032005D005C00200023002C002300230030002E00300030005F0029003B005B005200650064005D005C0028005B002400AC202D0032005D005C00200023002C002300230030002E00300030005C002900E000140000000000F5FF200000000000000000000000C020E000140001000000F5FF200000F40000000000000000C020E000140001000000F5FF200000F40000000000000000C020E000140002000000F5FF200000F40000000000000000C020E000140002000000F5FF200000F40000000000000000C020E000140000000000F5FF200000F40000000000000000C020E000140000000000F5FF200000F40000000000000000C020E000140000000000F5FF200000F40000000000000000C020E000140000000000F5FF200000F40000000000000000C020E000140000000000F5FF200000F40000000000000000C020E000140000000000F5FF200000F40000000000000000C020E000140000000000F5FF200000F40000000000000000C020E000140000000000F5FF200000F40000000000000000C020E000140000000000F5FF200000F40000000000000000C020E000140000000000F5FF200000F40000000000000000C020E0001400000000000100200000000000000000000000C020E00014000A000000F5FF200000B400000000000000049F20E00014000A000000F5FF200000B40000000000000004AD20E00014000A000000F5FF200000B40000000000000004AA20E00014000A000000F5FF200000B40000000000000004AE20E00014000A000000F5FF200000B400000000000000049B20E00014000A000000F5FF200000B40000000000000004AF20E00014000A000000F5FF200000B40000000000000004AC20E00014000A000000F5FF200000B400000000000000049D20E00014000A000000F5FF200000B400000000000000048B20E00014000A000000F5FF200000B40000000000000004AE20E00014000A000000F5FF200000B40000000000000004AC20E00014000A000000F5FF200000B40000000000000004B320E00014000B000000F5FF200000B400000000000000049E20E00014000B000000F5FF200000B400000000000000049D20E00014000B000000F5FF200000B400000000000000048B20E00014000B000000F5FF200000B40000000000000004A420E00014000B000000F5FF200000B40000000000000004B120E00014000B000000F5FF200000B40000000000000004B420E00014000B000000F5FF200000B40000000000000004BE20E00014000B000000F5FF200000B400000000000000048A20E00014000B000000F5FF200000B40000000000000004B920E00014000B000000F5FF200000B40000000000000004A420E00014000B000000F5FF200000B40000000000000004B120E00014000B000000F5FF200000B40000000000000004B520E00014000C000000F5FF200000B40000000000000004AD20E00014000D000000F5FF200000941111970B970B00049620E00014000E000000F5FF200000946666BF1FBF1F0004B720E000140005002B00F5FF200000F80000000000000000C020E000140005002900F5FF200000F80000000000000000C020E000140005002C00F5FF200000F80000000000000000C020E000140005002A00F5FF200000F80000000000000000C020E00014000F000000F5FF200000F40000000000000000C020E000140007000000F5FF200000F40000000000000000C020E000140010000000F5FF200000B40000000000000004AA20E000140011000000F5FF200000D400500000001F0000C020E000140012000000F5FF200000D400500000000B0000C020E000140013000000F5FF200000D400200000000F0000C020E000140013000000F5FF200000F40000000000000000C020E000140006000000F5FF200000F40000000000000000C020E000140014000000F5FF200000941111970B970B0004AF20E000140015000000F5FF200000D400600000001A0000C020E000140016000000F5FF200000B40000000000000004AB20E000140005000000F5FF2000009C1111160B160B00049A20E000140017000000F5FF200000941111BF1FBF1F00049620E000140005000900F5FF200000F80000000000000000C020E000140018000000F5FF200000F40000000000000000C020E000140019000000F5FF200000D4006100003E1F0000C020E00014001A000000F5FF200000F40000000000000000C020E0001400080000000100200000080000000000000000C020E0001400090000000100200000080000000000000000C0207C0814007C0800000000000000000000000042004B8BCEDC7D0841007D080000000000000000000000001000000003000D001400030000000100000000300030005F00290E000500020400140003006566040000005B002400AC202D007D0841007D080000000000000000000000001100000003000D001400030000000100000000300030005F00290E000500020400140003006566050000005B002400AC202D007D0841007D080000000000000000000000001200000003000D001400030000000100000000300030005F00290E000500020400140003006566060000005B002400AC202D007D0841007D080000000000000000000000001300000003000D001400030000000100000000300030005F00290E000500020400140003006566070000005B002400AC202D007D0841007D080000000000000000000000001400000003000D001400030000000100000000300030005F00290E000500020400140003006566080000005B002400AC202D007D0841007D080000000000000000000000001500000003000D001400030000000100000000300030005F00290E000500020400140003006566090000005B002400AC202D007D0841007D080000000000000000000000001600000003000D001400030000000100000000300030005F00290E00050002040014000300CC4C040000005B002400AC202D007D0841007D080000000000000000000000001700000003000D001400030000000100000000300030005F00290E00050002040014000300CC4C050000005B002400AC202D007D0841007D080000000000000000000000001800000003000D001400030000000100000000300030005F00290E00050002040014000300CC4C060000005B002400AC202D007D0841007D080000000000000000000000001900000003000D001400030000000100000000300030005F00290E00050002040014000300CC4C070000005B002400AC202D007D0841007D080000000000000000000000001A00000003000D001400030000000100000000300030005F00290E00050002040014000300CC4C080000005B002400AC202D007D0841007D080000000000000000000000001B00000003000D001400030000000100000000300030005F00290E00050002040014000300CC4C090000005B002400AC202D007D0841007D080000000000000000000000001C00000003000D001400030000000000000000300030005F00290E000500020400140003003233040000005B002400AC202D007D0841007D080000000000000000000000001D00000003000D001400030000000000000000300030005F00290E000500020400140003003233050000005B002400AC202D007D0841007D080000000000000000000000001E00000003000D001400030000000000000000300030005F00290E000500020400140003003233060000005B002400AC202D007D0841007D080000000000000000000000001F00000003000D001400030000000000000000300030005F00290E000500020400140003003233070000005B002400AC202D007D0841007D080000000000000000000000002000000003000D001400030000000000000000300030005F00290E000500020400140003003233080000005B002400AC202D007D0841007D080000000000000000000000002100000003000D001400030000000000000000300030005F00290E000500020400140003003233090000005B002400AC202D007D0841007D080000000000000000000000002200000003000D001400030000000000000000300030005F00290E000500020400140003000000040000005B002400AC202D007D0841007D080000000000000000000000002300000003000D001400030000000000000000300030005F00290E000500020400140003000000050000005B002400AC202D007D0841007D080000000000000000000000002400000003000D001400030000000000000000300030005F00290E000500020400140003000000060000005B002400AC202D007D0841007D080000000000000000000000002500000003000D001400030000000000000000300030005F00290E000500020400140003000000070000005B002400AC202D007D0841007D080000000000000000000000002600000003000D001400030000000000000000300030005F00290E000500020400140003000000080000005B002400AC202D007D0841007D080000000000000000000000002700000003000D001400030000000000000000300030005F00290E000500020400140003000000090000005B002400AC202D007D0841007D080000000000000000000000002800000003000D001400020000009C0006FF00300030005F00290E000500020400140002000000FFC7CEFF5B002400AC202D007D0891007D080000000000000000000000002900000007000D00140002000000FA7D00FF00300030005F00290E000500020400140002000000F2F2F2FF5B002400AC202D0007001400020000007F7F7FFF2300230030002E0008001400020000007F7F7FFF202020202020202009001400020000007F7F7FFF00000000000000000A001400020000007F7F7FFF00000000000000007D0891007D080000000000000000000000002A00000007000D001400030000000000000000300030005F00290E000500020400140002000000A5A5A5FF5B002400AC202D0007001400020000003F3F3FFF2300230030002E0008001400020000003F3F3FFF202020202020202009001400020000003F3F3FFF00000000000000000A001400020000003F3F3FFF00000000000000007D082D007D080000000000000000000000002F00000002000D001400020000007F7F7FFF00300030005F00290E000500027D0841007D080000000000000000000000003100000003000D00140002000000006100FF00300030005F00290E000500020400140002000000C6EFCEFF5B002400AC202D007D0841007D080000000000000000000000003200000003000D001400030000000300000000300030005F00290E000500020800140003000000040000005B002400AC202D007D0841007D080000000000000000000000003300000003000D001400030000000300000000300030005F00290E00050002080014000300FF3F040000005B002400AC202D007D0841007D080000000000000000000000003400000003000D001400030000000300000000300030005F00290E000500020800140003003233040000005B002400AC202D007D082D007D080000000000000000000000003500000002000D001400030000000300000000300030005F00290E000500027D0891007D080000000000000000000000003700000007000D001400020000003F3F76FF00300030005F00290E000500020400140002000000FFCC99FF5B002400AC202D0007001400020000007F7F7FFF2300230030002E0008001400020000007F7F7FFF202020202020202009001400020000007F7F7FFF00000000000000000A001400020000007F7F7FFF00000000000000007D0841007D080000000000000000000000003800000003000D00140002000000FA7D00FF00300030005F00290E000500020800140002000000FF8001FF5B002400AC202D007D0841007D080000000000000000000000003900000003000D001400020000009C6500FF00300030005F00290E000500020400140002000000FFEB9CFF5B002400AC202D007D0878007D080000000000000000000000003A00000005000400140002000000FFFFCCFF00300030005F00290700140002000000B2B2B2FF00FFEB9CFF5B00240800140002000000B2B2B2FF007F7F7FFF2300230900140002000000B2B2B2FF007F7F7FFF2020200A00140002000000B2B2B2FF007F7F7FFF0000007D0891007D080000000000000000000000003B00000007000D001400020000003F3F3FFF00300030005F00290E000500020400140002000000F2F2F2FF5B0024080014000207001400020000003F3F3FFF230023090014000208001400020000003F3F3FFF2020200A0014000209001400020000003F3F3FFF00000000000000000A001400020000003F3F3FFF00000000000000007D082D007D080000000000000000000000003D00000002000D001400030000000300000000300030005F00290E000500017D0855007D080000000000000000000000003E00000004000D001400030000000100000000300030005F00290E000500020700140003000000040000005B0024080014000208001400030000000400000023002309001400027D082D007D080000000000000000000000003F00000002000D00140002000000FF0000FF00300030005F00290E000500029302120010000D0000323025202D20416363656E743192084D0092080000000000000000000001041EFF0D0032003000250020002D00200041006300630065006E00740031000000030001000C0007046566DCE6F1FF05000C0007010000000000FF25000500029302120011000D0000323025202D20416363656E743292084D00920800000000000000000000010422FF0D0032003000250020002D00200041006300630065006E00740032000000030001000C0007056566F2DCDBFF05000C0007010000000000FF25000500029302120012000D0000323025202D20416363656E743392084D00920800000000000000000000010426FF0D0032003000250020002D00200041006300630065006E00740033000000030001000C0007066566EBF1DEFF05000C0007010000000000FF25000500029302120013000D0000323025202D20416363656E743492084D0092080000000000000000000001042AFF0D0032003000250020002D00200041006300630065006E00740034000000030001000C0007076566E4DFECFF05000C0007010000000000FF25000500029302120014000D0000323025202D20416363656E743592084D0092080000000000000000000001042EFF0D0032003000250020002D00200041006300630065006E00740035000000030001000C0007086566DAEEF3FF05000C0007010000000000FF25000500029302120015000D0000323025202D20416363656E743692084D00920800000000000000000000010432FF0D0032003000250020002D00200041006300630065006E00740036000000030001000C0007096566FDE9D9FF05000C0007010000000000FF25000500029302120016000D0000343025202D20416363656E743192084D0092080000000000000000000001041FFF0D0034003000250020002D00200041006300630065006E00740031000000030001000C000704CC4CB8CCE4FF05000C0007010000000000FF25000500029302120017000D0000343025202D20416363656E743292084D00920800000000000000000000010423FF0D0034003000250020002D00200041006300630065006E00740032000000030001000C000705CC4CE6B8B7FF05000C0007010000000000FF25000500029302120018000D0000343025202D20416363656E743392084D00920800000000000000000000010427FF0D0034003000250020002D00200041006300630065006E00740033000000030001000C000706CC4CD8E4BCFF05000C0007010000000000FF25000500029302120019000D0000343025202D20416363656E743492084D0092080000000000000000000001042BFF0D0034003000250020002D00200041006300630065006E00740034000000030001000C000707CC4CCCC0DAFF05000C0007010000000000FF2500050002930212001A000D0000343025202D20416363656E743592084D0092080000000000000000000001042FFF0D0034003000250020002D00200041006300630065006E00740035000000030001000C000708CC4CB7DEE8FF05000C0007010000000000FF2500050002930212001B000D0000343025202D20416363656E743692084D00920800000000000000000000010433FF0D0034003000250020002D00200041006300630065006E00740036000000030001000C000709CC4CFCD5B4FF05000C0007010000000000FF2500050002930212001C000D0000363025202D20416363656E743192084D00920800000000000000000000010420FF0D0036003000250020002D00200041006300630065006E00740031000000030001000C000704323395B3D7FF05000C0007000000FFFFFFFF2500050002930212001D000D0000363025202D20416363656E743292084D00920800000000000000000000010424FF0D0036003000250020002D00200041006300630065006E00740032000000030001000C0007053233DA9694FF05000C0007000000FFFFFFFF2500050002930212001E000D0000363025202D20416363656E743392084D00920800000000000000000000010428FF0D0036003000250020002D00200041006300630065006E00740033000000030001000C0007063233C4D79BFF05000C0007000000FFFFFFFF2500050002930212001F000D0000363025202D20416363656E743492084D0092080000000000000000000001042CFF0D0036003000250020002D00200041006300630065006E00740034000000030001000C0007073233B1A0C7FF05000C0007000000FFFFFFFF25000500029302120020000D0000363025202D20416363656E743592084D00920800000000000000000000010430FF0D0036003000250020002D00200041006300630065006E00740035000000030001000C000708323392CDDCFF05000C0007000000FFFFFFFF25000500029302120021000D0000363025202D20416363656E743692084D00920800000000000000000000010434FF0D0036003000250020002D00200041006300630065006E00740036000000030001000C0007093233FABF8FFF05000C0007000000FFFFFFFF250005000293020C002200070000416363656E74319208410092080000000000000000000001041DFF070041006300630065006E00740031000000030001000C00070400004F81BDFF05000C0007000000FFFFFFFF250005000293020C002300070000416363656E743292084100920800000000000000000000010421FF070041006300630065006E00740032000000030001000C0007050000C0504DFF05000C0007000000FFFFFFFF250005000293020C002400070000416363656E743392084100920800000000000000000000010425FF070041006300630065006E00740033000000030001000C00070600009BBB59FF05000C0007000000FFFFFFFF250005000293020C002500070000416363656E743492084100920800000000000000000000010429FF070041006300630065006E00740034000000030001000C00070700008064A2FF05000C0007000000FFFFFFFF250005000293020C002600070000416363656E74359208410092080000000000000000000001042DFF070041006300630065006E00740035000000030001000C00070800004BACC6FF05000C0007000000FFFFFFFF250005000293020C002700070000416363656E743692084100920800000000000000000000010431FF070041006300630065006E00740036000000030001000C0007090000F79646FF05000C0007000000FFFFFFFF25000500029302080028000300004261649208390092080000000000000000000001011BFF03004200610064000000030001000C0005FF0000FFC7CEFF05000C0005FF00009C0006FF25000500029302100029000B000043616C63756C6174696F6E92088100920800000000000000000000010216FF0B00430061006C00630075006C006100740069006F006E000000070001000C0005FF0000F2F2F2FF05000C0005FF0000FA7D00FF250005000206000E0005FF00007F7F7FFF010007000E0005FF00007F7F7FFF010008000E0005FF00007F7F7FFF010009000E0005FF00007F7F7FFF010093020F002A000A0000436865636B2043656C6C92087F00920800000000000000000000010217FF0A0043006800650063006B002000430065006C006C000000070001000C0005FF0000A5A5A5FF05000C0007000000FFFFFFFF250005000206000E0005FF00003F3F3FFF060007000E0005FF00003F3F3FFF060008000E0005FF00003F3F3FFF060009000E0005FF00003F3F3FFF0600930204002B8003FF92082000920800000000000000000000010503FF050043006F006D006D00610000000000930204002C8006FF92082800920800000000000000000000010506FF090043006F006D006D00610020005B0030005D0000000000930204002D8004FF92082600920800000000000000000000010504FF0800430075007200720065006E006300790000000000930204002E8007FF92082E00920800000000000000000000010507FF0C00430075007200720065006E006300790020005B0030005D0000000000930215002F001000004578706C616E61746F7279205465787492084700920800000000000000000000010235FF10004500780070006C0061006E00610074006F0072007900200054006500780074000000020005000C0005FF00007F7F7FFF250005000293020400308009FF92083A00920800000000000000000000010209FF120046006F006C006C006F007700650064002000480079007000650072006C0069006E006B0000000000930209003100040000476F6F6492083B0092080000000000000000000001011AFF040047006F006F0064000000030001000C0005FF0000C6EFCEFF05000C0005FF0000006100FF250005000293020E00320009000048656164696E67203192084700920800000000000000000000010310FF0900480065006100640069006E006700200031000000030005000C00070300001F497DFF250005000207000E00070400004F81BDFF050093020E00330009000048656164696E67203292084700920800000000000000000000010311FF0900480065006100640069006E006700200032000000030005000C00070300001F497DFF250005000207000E000704FF3FA7BFDEFF050093020E00340009000048656164696E67203392084700920800000000000000000000010312FF0900480065006100640069006E006700200033000000030005000C00070300001F497DFF250005000207000E000704323395B3D7FF020093020E00350009000048656164696E67203492083900920800000000000000000000010313FF0900480065006100640069006E006700200034000000020005000C00070300001F497DFF250005000293020400368008FF92082800920800000000000000000000010208FF0900480079007000650072006C0069006E006B000000000093020A003700050000496E70757492087500920800000000000000000000010214FF050049006E007000750074000000070001000C0005FF0000FFCC99FF05000C0005FF00003F3F76FF250005000206000E0005FF00007F7F7FFF010007000E0005FF00007F7F7FFF010008000E0005FF00007F7F7FFF010009000E0005FF00007F7F7FFF01009302100038000B00004C696E6B65642043656C6C92084B00920800000000000000000000010218FF0B004C0069006E006B00650064002000430065006C006C000000030005000C0005FF0000FA7D00FF250005000207000E0005FF0000FF8001FF060093020C0039000700004E65757472616C9208410092080000000000000000000001011CFF07004E00650075007400720061006C000000030001000C0005FF0000FFEB9CFF05000C0005FF00009C6500FF250005000293020400008000FF92082200920800000000000000000000010100FF06004E006F0072006D0061006C0000000000930209003A000400004E6F74659208620092080000000000000000000001020AFF04004E006F00740065000000050001000C0005FF0000FFFFCCFF06000E0005FF0000B2B2B2FF010007000E0005FF0000B2B2B2FF010008000E0005FF0000B2B2B2FF010009000E0005FF0000B2B2B2FF010093020B003B000600004F757470757492087700920800000000000000000000010215FF06004F00750074007000750074000000070001000C0005FF0000F2F2F2FF05000C0005FF00003F3F3FFF250005000206000E0005FF00003F3F3FFF010007000E0005FF00003F3F3FFF010008000E0005FF00003F3F3FFF010009000E0005FF00003F3F3FFF0100930204003C8005FF92082400920800000000000000000000010505FF0700500065007200630065006E0074000000000093020A003D000500005469746C659208310092080000000000000000000001030FFF05005400690074006C0065000000020005000C00070300001F497DFF250005000193020A003E00050000546F74616C92084D00920800000000000000000000010319FF050054006F00740061006C000000040005000C0007010000000000FF250005000206000E00070400004F81BDFF010007000E00070400004F81BDFF0600930211003F000C00005761726E696E67205465787492083F0092080000000000000000000001020BFF0C005700610072006E0069006E006700200054006500780074000000020005000C0005FF0000FF0000FF25000500028E0858008E080000000000000000000090000000110011005400610062006C0065005300740079006C0065004D0065006400690075006D0032005000690076006F0074005300740079006C0065004C00690067006800740031003600600102000000850012000D30000000000A00417474656E64616E63659A0818009A0800000000000000000000010000000000000004000000A3081000A30800000000000000000000000000008C00040001000100AE0104000100010417000800010000000000000018001B00210000010B000000010000000000000D3D00000000000000000000180029000000000F0B0000000000000000000050726F64756374734D616E616765723D00000000000000000000C1010800C10100008D340200FC00010356010000430000000C0000456D706C6F796565436F6465040000446179310400004461793204000044617933040000446179340400004461793504000044617936040000446179370400004461793804000044617939050000446179313005000044617931310500004461793132050000446179313305000044617931340500004461793135050000446179313605000044617931370500004461793138050000446179313905000044617932300500004461793231050000446179323205000044617932330500004461793234050000446179323505000044617932360500004461793237050000446179323805000044617932390500004461793330050000446179333101000050010000410100004C030000532F4C0C00004461793152656D61726B73200C00004461793252656D61726B73200C00004461793352656D61726B73200C00004461793452656D61726B73200C00004461793552656D61726B73200C00004461793652656D61726B73200C00004461793752656D61726B73200C00004461793852656D61726B73200C00004461793952656D61726B73200E0000446179313052656D61726B7320200D0000446179313152656D61726B73200D0000446179313252656D61726B73200D0000446179313352656D61726B73200D0000446179313452656D61726B73200D0000446179313552656D61726B73200D0000446179313652656D61726B73200D0000446179313752656D61726B73200D0000446179313852656D61726B73200D0000446179313952656D61726B73200D0000446179323052656D61726B73200D0000446179323152656D61726B73200D0000446179323252656D61726B73200D0000446179323352656D61726B73200D0000446179323452656D61726B73200D0000446179323552656D61726B73200D0000446179323652656D61726B73200D0000446179323752656D61726B73200D0000446179323852656D61726B73200E000044617932397252656D61726B73200D0000446179333052656D61726B73200D0000446179333152656D61726B7320FF004A0008006C2C00000C000000AC2C00004C000000EA2C00008A0000002A2D0000CA0000006A2D00000A010000B82D000058010000342E0000D4010000B42E000054020000342F0000D402000063081600630800000000000000000000160000000000000002009608100096080000000000000000000042E501009B0810009B0800000000000000000000010000008C0810008C0800000000000000000000000000000A00000009081000000610006632CD07C9800100060600000B02140000000000000000000A00000020350000524A00000D00020001000C00020064000F000200010011000200000010000800FCA9F1D24D62503F5F00020001002A00020000002B0002000000820002000100800008000000000000000000250204000000FF0081000200C10414000500020000264115000A000700005061676520265083000200000084000200000026000800000000000000E83F27000800000000000000E83F28000800000000000000F03F29000800000000000000F03F4D00EA0300004B00310000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001040306DC000C0343EF800501000100EA0A6F08640001000F00C80002000100C800020001004C00650074007400650072000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000010000000200000001000000FFFFFFFF0000000000000000000000000000000044494E552200B0000C030000C1951CFB000000000000000000000000000000000000000000000000000000000600000001000000000000000200010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000B0000000534D544A000000001000A00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000A1002200010064000100010001000200C800C800000000000000E03F000000000000E03F01009C0826009C080000000000000000000000000000000000000000000000000000040000000000000000005500020008007D000C000000000000160F00020000007D000C000100020024140F00020000007D000C000300040024130F00020000007D000C000500060024100F00020000007D000C000700080000120F00020000007D000C0009000A006D130F00020000007D000C000B000C00B6160F00020000007D000C000D000E0000130F00020000007D000C000F00100024130F00020000007D000C001100120000100F00020000007D000C0014001400000E0F00060000007D000C002C002C00B60C0F00060000007D000C002D002D0092060F00060000007D000C002E002E0092060F00020000007D000C0030003000B60C0F00060000007D000C003100310092060F00060000007D000C003200320092060F00020000007D000C00360036006D0E0F000600000000020E00000000000A00000000003F00000008021000000000003F002C010000000000010F0008021000010000003F00FF000000000000010F0008021000020000003F00FF000000000000010F0008021000030000003F00FF000000000000010F0008021000040000003F00FF000000000000010F0008021000050000003F00FF000000000000010F0008021000060000003F00FF000000000000010F0008021000070000003F00FF000000000000010F0008021000080000003F00FF000000000000010F0008021000090000003F00FF000000000000010F00FD000A00000000000F0000000000FD000A00000001000F0001000000FD000A0000000200400024000000FD000A00000003000F0002000000FD000A0000000400400025000000FD000A00000005000F0003000000FD000A0000000600400026000000FD000A00000007000F0004000000FD000A0000000800400027000000FD000A00000009000F0005000000FD000A0000000A00400028000000FD000A0000000B000F0006000000FD000A0000000C00400029000000FD000A0000000D000F0007000000FD000A0000000E0040002A000000FD000A0000000F000F0008000000FD000A000000100040002B000000FD000A00000011000F0009000000FD000A000000120040002C000000FD000A00000013000F000A000000FD000A000000140040002D000000FD000A00000015000F000B000000FD000A000000160040002E000000FD000A00000017000F000C000000FD000A000000180040002F000000FD000A00000019000F000D000000FD000A0000001A00400030000000FD000A0000001B000F000E000000FD000A0000001C00400031000000FD000A0000001D000F000F000000FD000A0000001E00400032000000FD000A0000001F000F0010000000FD000A0000002000400033000000FD000A00000021000F0011000000FD000A0000002200400034000000FD000A00000023000F0012000000FD000A0000002400400035000000FD000A00000025000F0013000000FD000A0000002600400036000000FD000A00000027000F0014000000FD000A0000002800400037000000FD000A00000029000F0015000000FD000A0000002A00400038000000FD000A0000002B000F0016000000FD000A0000002C00400039000000FD000A0000002D000F0017000000FD000A0000002E0040003A000000FD000A0000002F000F0018000000FD000A000000300040003B000000FD000A00000031000F0019000000FD000A000000320040003C000000FD000A00000033000F001A000000FD000A000000340040003D000000FD000A00000035000F001B000000FD000A000000360040003E000000FD000A00000037000F001C000000FD000A000000380040003F000000FD000A00000039000F001D000000FD000A0000003A00400040000000FD000A0000003B000F001E000000FD000A0000003C00400041000000FD000A0000003D000F001F000000FD000A0000003E004100420000007E020A00010000000F0000002840FD000A00010001000F0020000000FD000A00010003000F0020000000FD000A00010005000F0020000000FD000A00010007000F0020000000FD000A00010009000F0020000000FD000A0001000B000F0020000000FD000A0001000D000F0020000000FD000A0001000F000F0020000000FD000A00010011000F0020000000FD000A00010013000F0020000000FD000A00010015000F0020000000FD000A00010017000F0020000000FD000A00010019000F0020000000FD000A0001001B000F0020000000FD000A0001001D000F0020000000FD000A0001001F000F0020000000FD000A00010021000F0020000000FD000A00010023000F0020000000FD000A00010025000F0020000000FD000A00010027000F0020000000FD000A00010029000F0020000000FD000A0001002B000F0020000000FD000A0001002D000F0020000000FD000A0001002F000F0020000000FD000A00010031000F0020000000FD000A00010033000F0020000000FD000A00010035000F0020000000FD000A00010037000F0020000000FD000A00010039000F0020000000FD000A0001003B000F0020000000FD000A0001003D000F00200000007E020A00020000000F0000002A40FD000A00020001000F0021000000FD000A00020003000F0021000000FD000A00020005000F0021000000FD000A00020007000F0021000000FD000A00020009000F0021000000FD000A0002000B000F0021000000FD000A0002000D000F0021000000FD000A0002000F000F0021000000FD000A00020011000F0021000000FD000A00020013000F0021000000FD000A00020015000F0021000000FD000A00020017000F0021000000FD000A00020019000F0021000000FD000A0002001B000F0021000000FD000A0002001D000F0021000000FD000A0002001F000F0021000000FD000A00020021000F0021000000FD000A00020023000F0021000000FD000A00020025000F0021000000FD000A00020027000F0021000000FD000A00020029000F0021000000FD000A0002002B000F0021000000FD000A0002002D000F0021000000FD000A0002002F000F0021000000FD000A00020031000F0021000000FD000A00020033000F0021000000FD000A00020035000F0021000000FD000A00020037000F0021000000FD000A00020039000F0021000000FD000A0002003B000F0021000000FD000A0002003D000F00210000007E020A00030000000F0000002C40FD000A00030001000F0022000000FD000A00030003000F0022000000FD000A00030005000F0022000000FD000A00030007000F0022000000FD000A00030009000F0022000000FD000A0003000B000F0022000000FD000A0003000D000F0022000000FD000A0003000F000F0022000000FD000A00030011000F0022000000FD000A00030013000F0022000000FD000A00030015000F0022000000FD000A00030017000F0022000000FD000A00030019000F0022000000FD000A0003001B000F0022000000FD000A0003001D000F0022000000FD000A0003001F000F0022000000FD000A00030021000F0022000000FD000A00030023000F0022000000FD000A00030025000F0022000000FD000A00030027000F0022000000FD000A00030029000F0022000000FD000A0003002B000F0022000000FD000A0003002D000F0022000000FD000A0003002F000F0022000000FD000A00030031000F0022000000FD000A00030033000F0022000000FD000A00030035000F0022000000FD000A00030037000F0022000000FD000A00030039000F0022000000FD000A0003003B000F0022000000FD000A0003003D000F00220000007E020A00040000000F0000002E40FD000A00040001000F0023000000FD000A00040003000F0023000000FD000A00040005000F0023000000FD000A00040007000F0023000000FD000A00040009000F0023000000FD000A0004000B000F0023000000FD000A0004000D000F0023000000FD000A0004000F000F0023000000FD000A00040011000F0023000000FD000A00040013000F0023000000FD000A00040015000F0023000000FD000A00040017000F0023000000FD000A00040019000F0023000000FD000A0004001B000F0023000000FD000A0004001D000F0023000000FD000A0004001F000F0023000000FD000A00040021000F0023000000FD000A00040023000F0023000000FD000A00040025000F0023000000FD000A00040027000F0023000000FD000A00040029000F0023000000FD000A0004002B000F0023000000FD000A0004002D000F0023000000FD000A0004002F000F0023000000FD000A00040031000F0023000000FD000A00040033000F0023000000FD000A00040035000F0023000000FD000A00040037000F0023000000FD000A00040039000F0023000000FD000A0004003B000F0023000000FD000A0004003D000F00230000007E020A00050000000F0000003040FD000A00050001000F0020000000FD000A00050003000F0020000000FD000A00050005000F0020000000FD000A00050007000F0020000000FD000A00050009000F0020000000FD000A0005000B000F0020000000FD000A0005000D000F0020000000FD000A0005000F000F0020000000FD000A00050011000F0020000000FD000A00050013000F0020000000FD000A00050015000F0020000000FD000A00050017000F0020000000FD000A00050019000F0020000000FD000A0005001B000F0020000000FD000A0005001D000F0020000000FD000A0005001F000F0020000000FD000A00050021000F0020000000FD000A00050023000F0020000000FD000A00050025000F0020000000FD000A00050027000F0020000000FD000A00050029000F0020000000FD000A0005002B000F0020000000FD000A0005002D000F0020000000FD000A0005002F000F0020000000FD000A00050031000F0020000000FD000A00050033000F0020000000FD000A00050035000F0020000000FD000A00050037000F0020000000FD000A00050039000F0020000000FD000A0005003B000F0020000000FD000A0005003D000F00200000007E020A00060000000F0000003140FD000A00060001000F0021000000FD000A00060003000F0021000000FD000A00060005000F0021000000FD000A00060007000F0021000000FD000A00060009000F0021000000FD000A0006000B000F0021000000FD000A0006000D000F0021000000FD000A0006000F000F0021000000FD000A00060011000F0021000000FD000A00060013000F0021000000FD000A00060015000F0021000000FD000A00060017000F0021000000FD000A00060019000F0021000000FD000A0006001B000F0021000000FD000A0006001D000F0021000000FD000A0006001F000F0021000000FD000A00060021000F0021000000FD000A00060023000F0021000000FD000A00060025000F0021000000FD000A00060027000F0021000000FD000A00060029000F0021000000FD000A0006002B000F0021000000FD000A0006002D000F0021000000FD000A0006002F000F0021000000FD000A00060031000F0021000000FD000A00060033000F0021000000FD000A00060035000F0021000000FD000A00060037000F0021000000FD000A00060039000F0021000000FD000A0006003B000F0021000000FD000A0006003D000F00210000007E020A00070000000F0000003240FD000A00070001000F0022000000FD000A00070003000F0022000000FD000A00070005000F0022000000FD000A00070007000F0022000000FD000A00070009000F0022000000FD000A0007000B000F0022000000FD000A0007000D000F0022000000FD000A0007000F000F0022000000FD000A00070011000F0022000000FD000A00070013000F0022000000FD000A00070015000F0022000000FD000A00070017000F0022000000FD000A00070019000F0022000000FD000A0007001B000F0022000000FD000A0007001D000F0022000000FD000A0007001F000F0022000000FD000A00070021000F0022000000FD000A00070023000F0022000000FD000A00070025000F0022000000FD000A00070027000F0022000000FD000A00070029000F0022000000FD000A0007002B000F0022000000FD000A0007002D000F0022000000FD000A0007002F000F0022000000FD000A00070031000F0022000000FD000A00070033000F0022000000FD000A00070035000F0022000000FD000A00070037000F0022000000FD000A00070039000F0022000000FD000A0007003B000F0022000000FD000A0007003D000F00220000007E020A00080000000F0000003340FD000A00080001000F0023000000FD000A00080003000F0023000000FD000A00080005000F0023000000FD000A00080007000F0023000000FD000A00080009000F0023000000FD000A0008000B000F0023000000FD000A0008000D000F0023000000FD000A0008000F000F0023000000FD000A00080011000F0023000000FD000A00080013000F0023000000FD000A00080015000F0023000000FD000A00080017000F0023000000FD000A00080019000F0023000000FD000A0008001B000F0023000000FD000A0008001D000F0023000000FD000A0008001F000F0023000000FD000A00080021000F0023000000FD000A00080023000F0023000000FD000A00080025000F0023000000FD000A00080027000F0023000000FD000A00080029000F0023000000FD000A0008002B000F0023000000FD000A0008002D000F0023000000FD000A0008002F000F0023000000FD000A00080031000F0023000000FD000A00080033000F0023000000FD000A00080035000F0023000000FD000A00080037000F0023000000FD000A00080039000F0023000000FD000A0008003B000F0023000000FD000A0008003D000F00230000007E020A00090000000F0000003440FD000A00090001000F0020000000FD000A00090003000F0020000000FD000A00090005000F0020000000FD000A00090007000F0020000000FD000A00090009000F0020000000FD000A0009000B000F0020000000FD000A0009000D000F0020000000FD000A0009000F000F0020000000FD000A00090011000F0020000000FD000A00090013000F0020000000FD000A00090015000F0020000000FD000A00090017000F0020000000FD000A00090019000F0020000000FD000A0009001B000F0020000000FD000A0009001D000F0020000000FD000A0009001F000F0020000000FD000A00090021000F0020000000FD000A00090023000F0020000000FD000A00090025000F0020000000FD000A00090027000F0020000000FD000A00090029000F0020000000FD000A0009002B000F0020000000FD000A0009002D000F0020000000FD000A0009002F000F0020000000FD000A00090031000F0020000000FD000A00090033000F0020000000FD000A00090035000F0020000000FD000A00090037000F0020000000FD000A00090039000F0020000000FD000A0009003B000F0020000000FD000A0009003D000F0020000000D7001800FA130000B4007203C001C001C001C001C001C001C001C0013E021200B606000000004000000000000000090000008B0810008B080000000000000000000000000A001D000F0003100003000000010010001000030367081700670800000000000000000000020001FFFFFFFF034400000A00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FEFF0000060202000000000000000000000000000000000001000000E0859FF2F94F6810AB9108002B27B3D930000000780000000600000001000000380000000400000040000000080000004C0000000C000000580000000D00000064000000130000007000000002000000E40400001E000000040000006D6173001E000000040000006D617300400000008008C1E30BCDD40140000000007C12D9BCCDD401030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FEFF000006020200000000000000000000000000000000000100000002D5CDD59C2E1B10939708002B2CF9AE30000000B400000008000000010000004800000017000000500000000B000000580000001000000060000000130000006800000016000000700000000D000000780000000C0000008F00000002000000E40400000300000000000E000B000000000000000B000000000000000B000000000000000B000000000000001E100000010000000B000000417474656E64616E6365000C100000020000001E0000000B000000576F726B7368656574730003000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A0000000B0000000C0000000D0000000E0000000F000000100000001100000012000000130000001400000015000000160000001700000018000000190000001A0000001B0000001C0000001D0000001E0000001F000000200000002100000022000000230000002400000025000000FEFFFFFF2700000028000000290000002A0000002B0000002C0000002D000000FEFFFFFF2F000000300000003100000032000000330000003400000035000000FEFFFFFFFDFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52006F006F007400200045006E00740072007900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016000501FFFFFFFFFFFFFFFF020000002008020000000000C0000000000000460000000000000000000000009055A42441D4D501FEFFFFFF000000000000000057006F0072006B0062006F006F006B0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000012000201FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000000000000CA4A0000000000000500530075006D006D0061007200790049006E0066006F0072006D006100740069006F006E000000000000000000000000000000000000000000000000000000280002010100000003000000FFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000260000000010000000000000050044006F00630075006D0065006E007400530075006D006D0061007200790049006E0066006F0072006D006100740069006F006E000000000000000000000038000201FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000002E0000000010000000000000, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SampleFiles] ([Code], [Name], [FileDetail], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ID], [BranchCode]) VALUES (7, N'Units', 0xD0CF11E0A1B11AE1000000000000000000000000000000003E000300FEFF0900060000000000000000000000010000002F0000000000000000100000FEFFFFFF00000000FEFFFFFF000000002E000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF09081000000605006632CD07C980010006060000E1000200B004C10002000000E20000005C0070000300006D61732020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202042000200B004610102000000C00100003D01020001009C0002001100190002000000120002000000130002000000AF0102000000BC01020000003D00120068014B009F424E2A380000000000010058024000020000008D00020000002200020000000E0002000100B70102000000DA000200000031002A00C8000000FF7F90010000000000000D014D0053002000530061006E00730020005300650072006900660031002A00C8000100FF7FBC020000000000000D014D0053002000530061006E00730020005300650072006900660031002A00C8000200FF7F90010000000000000D014D0053002000530061006E00730020005300650072006900660031002A00C8000300FF7FBC020000000000000D014D0053002000530061006E00730020005300650072006900660031002A00C8000000FF7F90010000000000000D014D0053002000530061006E00730020005300650072006900660031002A00C80004000C0090010000010000000D014D0053002000530061006E00730020005300650072006900660031002A00C80004000E0090010000010000000D014D0053002000530061006E00730020005300650072006900660031001E00DC000000080090010000000200000701430061006C00690062007200690031001E00DC000000090090010000000200000701430061006C00690062007200690031001E00DC000000140090010000000200000701430061006C00690062007200690031001E00DC0001003400BC020000000200000701430061006C00690062007200690031001E00DC0001000900BC020000000200000701430061006C00690062007200690031001E00DC000200170090010000000200000701430061006C00690062007200690031001E00DC000000110090010000000200000701430061006C00690062007200690031001E002C0101003800BC020000000200000701430061006C00690062007200690031001E00040101003800BC020000000200000701430061006C00690062007200690031001E00DC0001003800BC020000000200000701430061006C00690062007200690031001E00DC0000003E0090010000000200000701430061006C00690062007200690031001E00DC000000340090010000000200000701430061006C00690062007200690031001E00DC0000003C0090010000000200000701430061006C00690062007200690031001E00DC0001003F00BC020000000200000701430061006C00690062007200690031001E00680101003800BC020000000200000701430061006D00620072006900610031001E00DC0001000800BC020000000200000701430061006C00690062007200690031001E00DC0000000A0090010000000200000701430061006C0069006200720069001E041C000500170000222422232C2323305F293B5C28222422232C2323305C291E04210006001C0000222422232C2323305F293B5B5265645D5C28222422232C2323305C291E04220007001D0000222422232C2323302E30305F293B5C28222422232C2323302E30305C291E0427000800220000222422232C2323302E30305F293B5B5265645D5C28222422232C2323302E30305C291E0437002A003200005F282224222A20232C2323305F293B5F282224222A205C28232C2323305C293B5F282224222A20222D225F293B5F28405F291E042E0029002900005F282A20232C2323305F293B5F282A205C28232C2323305C293B5F282A20222D225F293B5F28405F291E043F002C003A00005F282224222A20232C2323302E30305F293B5F282224222A205C28232C2323302E30305C293B5F282224222A20222D223F3F5F293B5F28405F291E0436002B003100005F282A20232C2323302E30305F293B5F282A205C28232C2323302E30305C293B5F282A20222D223F3F5F293B5F28405F29E000140000000000F5FF200000000000000000000000C020E000140001000000F5FF200000F40000000000000000C020E000140001000000F5FF200000F40000000000000000C020E000140002000000F5FF200000F40000000000000000C020E000140002000000F5FF200000F40000000000000000C020E000140000000000F5FF200000F40000000000000000C020E000140000000000F5FF200000F40000000000000000C020E000140000000000F5FF200000F40000000000000000C020E000140000000000F5FF200000F40000000000000000C020E000140000000000F5FF200000F40000000000000000C020E000140000000000F5FF200000F40000000000000000C020E000140000000000F5FF200000F40000000000000000C020E000140000000000F5FF200000F40000000000000000C020E000140000000000F5FF200000F40000000000000000C020E000140000000000F5FF200000F40000000000000000C020E0001400000000000100200000000000000000000000C020E000140008000000F5FF200000B400000000000000049F20E000140008000000F5FF200000B40000000000000004AD20E000140008000000F5FF200000B40000000000000004AA20E000140008000000F5FF200000B40000000000000004AE20E000140008000000F5FF200000B400000000000000049B20E000140008000000F5FF200000B40000000000000004AF20E000140008000000F5FF200000B40000000000000004AC20E000140008000000F5FF200000B400000000000000049D20E000140008000000F5FF200000B400000000000000048B20E000140008000000F5FF200000B40000000000000004AE20E000140008000000F5FF200000B40000000000000004AC20E000140008000000F5FF200000B40000000000000004B320E000140009000000F5FF200000B400000000000000049E20E000140009000000F5FF200000B400000000000000049D20E000140009000000F5FF200000B400000000000000048B20E000140009000000F5FF200000B40000000000000004A420E000140009000000F5FF200000B40000000000000004B120E000140009000000F5FF200000B40000000000000004B420E000140009000000F5FF200000B40000000000000004BE20E000140009000000F5FF200000B400000000000000048A20E000140009000000F5FF200000B40000000000000004B920E000140009000000F5FF200000B40000000000000004A420E000140009000000F5FF200000B40000000000000004B120E000140009000000F5FF200000B40000000000000004B520E00014000A000000F5FF200000B40000000000000004AD20E00014000B000000F5FF200000941111970B970B00049620E00014000C000000F5FF200000946666BF1FBF1F0004B720E000140005002B00F5FF200000F80000000000000000C020E000140005002900F5FF200000F80000000000000000C020E000140005002C00F5FF200000F80000000000000000C020E000140005002A00F5FF200000F80000000000000000C020E00014000D000000F5FF200000F40000000000000000C020E000140007000000F5FF200000F40000000000000000C020E00014000E000000F5FF200000B40000000000000004AA20E00014000F000000F5FF200000D400500000001F0000C020E000140010000000F5FF200000D400500000000B0000C020E000140011000000F5FF200000D400200000000F0000C020E000140011000000F5FF200000F40000000000000000C020E000140006000000F5FF200000F40000000000000000C020E000140012000000F5FF200000941111970B970B0004AF20E000140013000000F5FF200000D400600000001A0000C020E000140014000000F5FF200000B40000000000000004AB20E000140005000000F5FF2000009C1111160B160B00049A20E000140015000000F5FF200000941111BF1FBF1F00049620E000140005000900F5FF200000F80000000000000000C020E000140016000000F5FF200000F40000000000000000C020E000140017000000F5FF200000D4006100003E1F0000C020E000140018000000F5FF200000F40000000000000000C020E0001400000000000900200000040000000000000000C0207C0814007C080000000000000000000000004100722446C67D0841007D080000000000000000000000001000000003000D001400030000000100000030305C293B5F282A0E000500020400140003006566040000003B5F28405F2920207D0841007D080000000000000000000000001100000003000D001400030000000100000030305C293B5F282A0E000500020400140003006566050000003B5F28405F2920207D0841007D080000000000000000000000001200000003000D001400030000000100000030305C293B5F282A0E000500020400140003006566060000003B5F28405F2920207D0841007D080000000000000000000000001300000003000D001400030000000100000030305C293B5F282A0E000500020400140003006566070000003B5F28405F2920207D0841007D080000000000000000000000001400000003000D001400030000000100000030305C293B5F282A0E000500020400140003006566080000003B5F28405F2920207D0841007D080000000000000000000000001500000003000D001400030000000100000030305C293B5F282A0E000500020400140003006566090000003B5F28405F2920207D0841007D080000000000000000000000001600000003000D001400030000000100000030305C293B5F282A0E00050002040014000300CC4C040000003B5F28405F2920207D0841007D080000000000000000000000001700000003000D001400030000000100000030305C293B5F282A0E00050002040014000300CC4C050000003B5F28405F2920207D0841007D080000000000000000000000001800000003000D001400030000000100000030305C293B5F282A0E00050002040014000300CC4C060000003B5F28405F2920207D0841007D080000000000000000000000001900000003000D001400030000000100000030305C293B5F282A0E00050002040014000300CC4C070000003B5F28405F2920207D0841007D080000000000000000000000001A00000003000D001400030000000100000030305C293B5F282A0E00050002040014000300CC4C080000003B5F28405F2920207D0841007D080000000000000000000000001B00000003000D001400030000000100000030305C293B5F282A0E00050002040014000300CC4C090000003B5F28405F2920207D0841007D080000000000000000000000001C00000003000D001400030000000000000030305C293B5F282A0E000500020400140003003233040000003B5F28405F2920207D0841007D080000000000000000000000001D00000003000D001400030000000000000030305C293B5F282A0E000500020400140003003233050000003B5F28405F2920207D0841007D080000000000000000000000001E00000003000D001400030000000000000030305C293B5F282A0E000500020400140003003233060000003B5F28405F2920207D0841007D080000000000000000000000001F00000003000D001400030000000000000030305C293B5F282A0E000500020400140003003233070000003B5F28405F2920207D0841007D080000000000000000000000002000000003000D001400030000000000000030305C293B5F282A0E000500020400140003003233080000003B5F28405F2920207D0841007D080000000000000000000000002100000003000D001400030000000000000030305C293B5F282A0E000500020400140003003233090000003B5F28405F2920207D0841007D080000000000000000000000002200000003000D001400030000000000000030305C293B5F282A0E000500020400140003000000040000003B5F28405F2920207D0841007D080000000000000000000000002300000003000D001400030000000000000030305C293B5F282A0E000500020400140003000000050000003B5F28405F2920207D0841007D080000000000000000000000002400000003000D001400030000000000000030305C293B5F282A0E000500020400140003000000060000003B5F28405F2920207D0841007D080000000000000000000000002500000003000D001400030000000000000030305C293B5F282A0E000500020400140003000000070000003B5F28405F2920207D0841007D080000000000000000000000002600000003000D001400030000000000000030305C293B5F282A0E000500020400140003000000080000003B5F28405F2920207D0841007D080000000000000000000000002700000003000D001400030000000000000030305C293B5F282A0E000500020400140003000000090000003B5F28405F2920207D0841007D080000000000000000000000002800000003000D001400020000009C0006FF30305C293B5F282A0E000500020400140002000000FFC7CEFF3B5F28405F2920207D0891007D080000000000000000000000002900000007000D00140002000000FA7D00FF30305C293B5F282A0E000500020400140002000000F2F2F2FF3B5F28405F29202007001400020000007F7F7FFF202020202020202008001400020000007F7F7FFF202020202020202009001400020000007F7F7FFF00000000000000000A001400020000007F7F7FFF00000000000000007D0891007D080000000000000000000000002A00000007000D001400030000000000000030305C293B5F282A0E000500020400140002000000A5A5A5FF3B5F28405F29202007001400020000003F3F3FFF202020202020202008001400020000003F3F3FFF202020202020202009001400020000003F3F3FFF00000000000000000A001400020000003F3F3FFF00000000000000007D082D007D080000000000000000000000002F00000002000D001400020000007F7F7FFF30305C293B5F282A0E000500027D0841007D080000000000000000000000003100000003000D00140002000000006100FF30305C293B5F282A0E000500020400140002000000C6EFCEFF3B5F28405F2920207D0841007D080000000000000000000000003200000003000D001400030000000300000030305C293B5F282A0E000500020800140003000000040000003B5F28405F2920207D0841007D080000000000000000000000003300000003000D001400030000000300000030305C293B5F282A0E00050002080014000300FF3F040000003B5F28405F2920207D0841007D080000000000000000000000003400000003000D001400030000000300000030305C293B5F282A0E000500020800140003003233040000003B5F28405F2920207D082D007D080000000000000000000000003500000002000D001400030000000300000030305C293B5F282A0E000500027D0891007D080000000000000000000000003700000007000D001400020000003F3F76FF30305C293B5F282A0E000500020400140002000000FFCC99FF3B5F28405F29202007001400020000007F7F7FFF202020202020202008001400020000007F7F7FFF202020202020202009001400020000007F7F7FFF00000000000000000A001400020000007F7F7FFF00000000000000007D0841007D080000000000000000000000003800000003000D00140002000000FA7D00FF30305C293B5F282A0E000500020800140002000000FF8001FF3B5F28405F2920207D0841007D080000000000000000000000003900000003000D001400020000009C6500FF30305C293B5F282A0E000500020400140002000000FFEB9CFF3B5F28405F2920207D0878007D080000000000000000000000003A00000005000400140002000000FFFFCCFF30305C293B5F282A0700140002000000B2B2B2FF00FFEB9CFF3B5F280800140002000000B2B2B2FF007F7F7FFF2020200900140002000000B2B2B2FF007F7F7FFF2020200A00140002000000B2B2B2FF007F7F7FFF0000007D0891007D080000000000000000000000003B00000007000D001400020000003F3F3FFF30305C293B5F282A0E000500020400140002000000F2F2F2FF3B5F28080014000207001400020000003F3F3FFF202020090014000208001400020000003F3F3FFF2020200A0014000209001400020000003F3F3FFF00000000000000000A001400020000003F3F3FFF00000000000000007D082D007D080000000000000000000000003D00000002000D001400030000000300000030305C293B5F282A0E000500017D0855007D080000000000000000000000003E00000004000D001400030000000100000030305C293B5F282A0E000500020700140003000000040000003B5F28080014000208001400030000000400000020202009001400027D082D007D080000000000000000000000003F00000002000D00140002000000FF0000FF30305C293B5F282A0E000500029302120010000D0000323025202D20416363656E743192084D0092080000000000000000000001041EFF0D0032003000250020002D00200041006300630065006E00740031000000030001000C0007046566DCE6F1FF05000C0007010000000000FF25000500029302120011000D0000323025202D20416363656E743292084D00920800000000000000000000010422FF0D0032003000250020002D00200041006300630065006E00740032000000030001000C0007056566F2DCDBFF05000C0007010000000000FF25000500029302120012000D0000323025202D20416363656E743392084D00920800000000000000000000010426FF0D0032003000250020002D00200041006300630065006E00740033000000030001000C0007066566EBF1DEFF05000C0007010000000000FF25000500029302120013000D0000323025202D20416363656E743492084D0092080000000000000000000001042AFF0D0032003000250020002D00200041006300630065006E00740034000000030001000C0007076566E4DFECFF05000C0007010000000000FF25000500029302120014000D0000323025202D20416363656E743592084D0092080000000000000000000001042EFF0D0032003000250020002D00200041006300630065006E00740035000000030001000C0007086566DAEEF3FF05000C0007010000000000FF25000500029302120015000D0000323025202D20416363656E743692084D00920800000000000000000000010432FF0D0032003000250020002D00200041006300630065006E00740036000000030001000C0007096566FDE9D9FF05000C0007010000000000FF25000500029302120016000D0000343025202D20416363656E743192084D0092080000000000000000000001041FFF0D0034003000250020002D00200041006300630065006E00740031000000030001000C000704CC4CB8CCE4FF05000C0007010000000000FF25000500029302120017000D0000343025202D20416363656E743292084D00920800000000000000000000010423FF0D0034003000250020002D00200041006300630065006E00740032000000030001000C000705CC4CE6B8B7FF05000C0007010000000000FF25000500029302120018000D0000343025202D20416363656E743392084D00920800000000000000000000010427FF0D0034003000250020002D00200041006300630065006E00740033000000030001000C000706CC4CD8E4BCFF05000C0007010000000000FF25000500029302120019000D0000343025202D20416363656E743492084D0092080000000000000000000001042BFF0D0034003000250020002D00200041006300630065006E00740034000000030001000C000707CC4CCCC0DAFF05000C0007010000000000FF2500050002930212001A000D0000343025202D20416363656E743592084D0092080000000000000000000001042FFF0D0034003000250020002D00200041006300630065006E00740035000000030001000C000708CC4CB7DEE8FF05000C0007010000000000FF2500050002930212001B000D0000343025202D20416363656E743692084D00920800000000000000000000010433FF0D0034003000250020002D00200041006300630065006E00740036000000030001000C000709CC4CFCD5B4FF05000C0007010000000000FF2500050002930212001C000D0000363025202D20416363656E743192084D00920800000000000000000000010420FF0D0036003000250020002D00200041006300630065006E00740031000000030001000C000704323395B3D7FF05000C0007000000FFFFFFFF2500050002930212001D000D0000363025202D20416363656E743292084D00920800000000000000000000010424FF0D0036003000250020002D00200041006300630065006E00740032000000030001000C0007053233DA9694FF05000C0007000000FFFFFFFF2500050002930212001E000D0000363025202D20416363656E743392084D00920800000000000000000000010428FF0D0036003000250020002D00200041006300630065006E00740033000000030001000C0007063233C4D79BFF05000C0007000000FFFFFFFF2500050002930212001F000D0000363025202D20416363656E743492084D0092080000000000000000000001042CFF0D0036003000250020002D00200041006300630065006E00740034000000030001000C0007073233B1A0C7FF05000C0007000000FFFFFFFF25000500029302120020000D0000363025202D20416363656E743592084D00920800000000000000000000010430FF0D0036003000250020002D00200041006300630065006E00740035000000030001000C000708323392CDDCFF05000C0007000000FFFFFFFF25000500029302120021000D0000363025202D20416363656E743692084D00920800000000000000000000010434FF0D0036003000250020002D00200041006300630065006E00740036000000030001000C0007093233FABF8FFF05000C0007000000FFFFFFFF250005000293020C002200070000416363656E74319208410092080000000000000000000001041DFF070041006300630065006E00740031000000030001000C00070400004F81BDFF05000C0007000000FFFFFFFF250005000293020C002300070000416363656E743292084100920800000000000000000000010421FF070041006300630065006E00740032000000030001000C0007050000C0504DFF05000C0007000000FFFFFFFF250005000293020C002400070000416363656E743392084100920800000000000000000000010425FF070041006300630065006E00740033000000030001000C00070600009BBB59FF05000C0007000000FFFFFFFF250005000293020C002500070000416363656E743492084100920800000000000000000000010429FF070041006300630065006E00740034000000030001000C00070700008064A2FF05000C0007000000FFFFFFFF250005000293020C002600070000416363656E74359208410092080000000000000000000001042DFF070041006300630065006E00740035000000030001000C00070800004BACC6FF05000C0007000000FFFFFFFF250005000293020C002700070000416363656E743692084100920800000000000000000000010431FF070041006300630065006E00740036000000030001000C0007090000F79646FF05000C0007000000FFFFFFFF25000500029302080028000300004261649208390092080000000000000000000001011BFF03004200610064000000030001000C0005FF0000FFC7CEFF05000C0005FF00009C0006FF25000500029302100029000B000043616C63756C6174696F6E92088100920800000000000000000000010216FF0B00430061006C00630075006C006100740069006F006E000000070001000C0005FF0000F2F2F2FF05000C0005FF0000FA7D00FF250005000206000E0005FF00007F7F7FFF010007000E0005FF00007F7F7FFF010008000E0005FF00007F7F7FFF010009000E0005FF00007F7F7FFF010093020F002A000A0000436865636B2043656C6C92087F00920800000000000000000000010217FF0A0043006800650063006B002000430065006C006C000000070001000C0005FF0000A5A5A5FF05000C0007000000FFFFFFFF250005000206000E0005FF00003F3F3FFF060007000E0005FF00003F3F3FFF060008000E0005FF00003F3F3FFF060009000E0005FF00003F3F3FFF0600930204002B8003FF92082000920800000000000000000000010503FF050043006F006D006D00610000000000930204002C8006FF92082800920800000000000000000000010506FF090043006F006D006D00610020005B0030005D0000000000930204002D8004FF92082600920800000000000000000000010504FF0800430075007200720065006E006300790000000000930204002E8007FF92082E00920800000000000000000000010507FF0C00430075007200720065006E006300790020005B0030005D0000000000930215002F001000004578706C616E61746F7279205465787492084700920800000000000000000000010235FF10004500780070006C0061006E00610074006F0072007900200054006500780074000000020005000C0005FF00007F7F7FFF250005000293020400308009FF92083A00920800000000000000000000010209FF120046006F006C006C006F007700650064002000480079007000650072006C0069006E006B0000000000930209003100040000476F6F6492083B0092080000000000000000000001011AFF040047006F006F0064000000030001000C0005FF0000C6EFCEFF05000C0005FF0000006100FF250005000293020E00320009000048656164696E67203192084700920800000000000000000000010310FF0900480065006100640069006E006700200031000000030005000C00070300001F497DFF250005000207000E00070400004F81BDFF050093020E00330009000048656164696E67203292084700920800000000000000000000010311FF0900480065006100640069006E006700200032000000030005000C00070300001F497DFF250005000207000E000704FF3FA7BFDEFF050093020E00340009000048656164696E67203392084700920800000000000000000000010312FF0900480065006100640069006E006700200033000000030005000C00070300001F497DFF250005000207000E000704323395B3D7FF020093020E00350009000048656164696E67203492083900920800000000000000000000010313FF0900480065006100640069006E006700200034000000020005000C00070300001F497DFF250005000293020400368008FF92082800920800000000000000000000010208FF0900480079007000650072006C0069006E006B000000000093020A003700050000496E70757492087500920800000000000000000000010214FF050049006E007000750074000000070001000C0005FF0000FFCC99FF05000C0005FF00003F3F76FF250005000206000E0005FF00007F7F7FFF010007000E0005FF00007F7F7FFF010008000E0005FF00007F7F7FFF010009000E0005FF00007F7F7FFF01009302100038000B00004C696E6B65642043656C6C92084B00920800000000000000000000010218FF0B004C0069006E006B00650064002000430065006C006C000000030005000C0005FF0000FA7D00FF250005000207000E0005FF0000FF8001FF060093020C0039000700004E65757472616C9208410092080000000000000000000001011CFF07004E00650075007400720061006C000000030001000C0005FF0000FFEB9CFF05000C0005FF00009C6500FF250005000293020400008000FF92082200920800000000000000000000010100FF06004E006F0072006D0061006C0000000000930209003A000400004E6F74659208620092080000000000000000000001020AFF04004E006F00740065000000050001000C0005FF0000FFFFCCFF06000E0005FF0000B2B2B2FF010007000E0005FF0000B2B2B2FF010008000E0005FF0000B2B2B2FF010009000E0005FF0000B2B2B2FF010093020B003B000600004F757470757492087700920800000000000000000000010215FF06004F00750074007000750074000000070001000C0005FF0000F2F2F2FF05000C0005FF00003F3F3FFF250005000206000E0005FF00003F3F3FFF010007000E0005FF00003F3F3FFF010008000E0005FF00003F3F3FFF010009000E0005FF00003F3F3FFF0100930204003C8005FF92082400920800000000000000000000010505FF0700500065007200630065006E0074000000000093020A003D000500005469746C659208310092080000000000000000000001030FFF05005400690074006C0065000000020005000C00070300001F497DFF250005000193020A003E00050000546F74616C92084D00920800000000000000000000010319FF050054006F00740061006C000000040005000C0007010000000000FF250005000206000E00070400004F81BDFF010007000E00070400004F81BDFF0600930211003F000C00005761726E696E67205465787492083F0092080000000000000000000001020BFF0C005700610072006E0069006E006700200054006500780074000000020005000C0005FF0000FF0000FF25000500028E0858008E080000000000000000000090000000110011005400610062006C0065005300740079006C0065004D0065006400690075006D0032005000690076006F0074005300740079006C0065004C0069006700680074003100360060010200000085000D007D2D000000000500556E6974739A0818009A0800000000000000000000010000000000000001000000A3081000A30800000000000000000000000000008C00040001000100AE0104000100010417000800010000000000000018001F00000000050B00000000000000000000556E6974733B00000000010000000100C1010800C10100008D340200FC00BF013E0000003E000000040000556E697403000053595003000043415003000054414205000044524F50530400004D494C4B0500005350524159050000435245414D04000044524F50030000532E490300004D2F57030000494E4A03000047454C0500004C4F54494E0500005354524950030000542F50050000535952494E030000534143030000484552030000462F570400004845524203000047454E05000042414E44410400004F4E54490400004F494E540500004F494E54540400005041535404000053414348030000472E490500004F4E5449540500004C495149440400004352454D05000053414348530400004C4951550500005348414D4F030000494E47030000424152050000504C4153540400004C4F544E0500005359524947040000435245410500004C49415544030000426F74050000444556494505000048455242410500005355524743050000484552424C0300004845420300004C4951040000534F4C5504000042414E4404000047454E450500004F4E54494D0300005355520500005354495053040000504F5745050000504153544505000042414E4447050000435241454D0500004C4951554404000043415042030000554944FF0042000800262B00000C0000005E2B000044000000932B000079000000C92B0000AF000000032C0000E90000003D2C000023010000782C00005E010000B02C00009601000063081600630800000000000000000000160000000000000002009608100096080000000000000000000042E501009B0810009B0800000000000000000000010000008C0810008C0800000000000000000000000000000A00000009081000000610006632CD07C9800100060600000B02180000000000000000003D000000A62E0000BE340000763A00000D00020001000C00020064000F000200010011000200000010000800FCA9F1D24D62503F5F00020001002A00020000002B0002000000820002000100800008000000000000000000250204000000FF0081000200C10414000500020000264115000A000700005061676520265083000200000084000200000026000800000000000000E83F27000800000000000000E83F28000800000000000000F03F29000800000000000000F03FA100220000000050010001000100040042E50100000000000000E03F000000000000E03F42059C0826009C0800000000000000000000000000000000000000000000000000000400000000000000000055000200080000020E00000000003D00000000000200000008021000000000000200FF000000000000010F0008021000010000000200FF000000000000010F0008021000020000000200FF000000000000010F0008021000030000000200FF000000000000010F0008021000040000000200FF000000000000010F0008021000050000000200FF000000000000010F0008021000060000000200FF000000000000010F0008021000070000000200FF000000000000010F0008021000080000000200FF000000000000010F0008021000090000000200FF000000000000010F00080210000A0000000200FF000000000000010F00080210000B0000000200FF000000000000010F00080210000C0000000200FF000000000000010F00080210000D0000000200FF000000000000010F00080210000E0000000200FF000000000000010F00080210000F0000000200FF000000000000010F0008021000100000000200FF000000000000010F0008021000110000000200FF000000000000010F0008021000120000000200FF000000000000010F0008021000130000000200FF000000000000010F0008021000140000000200FF000000000000010F0008021000150000000200FF000000000000010F0008021000160000000200FF000000000000010F0008021000170000000200FF000000000000010F0008021000180000000200FF000000000000010F0008021000190000000200FF000000000000010F00080210001A0000000200FF000000000000010F00080210001B0000000200FF000000000000010F00080210001C0000000200FF000000000000010F00080210001D0000000200FF000000000000010F00080210001E0000000200FF000000000000010F00080210001F0000000200FF000000000000010F00FD000A000000000040003D000000FD000A00000001004000000000007E020A00010000000F000000F03FFD000A00010001000F00010000007E020A00020000000F0000000040FD000A00020001000F00020000007E020A00030000000F0000000840FD000A00030001000F00030000007E020A00040000000F0000001040FD000A00040001000F00040000007E020A00050000000F0000001440FD000A00050001000F00050000007E020A00060000000F0000001840FD000A00060001000F00060000007E020A00070000000F0000001C40FD000A00070001000F00070000007E020A00080000000F0000002040FD000A00080001000F00080000007E020A00090000000F0000002240FD000A00090001000F00090000007E020A000A0000000F0000002440FD000A000A0001000F000A0000007E020A000B0000000F0000002640FD000A000B0001000F000B0000007E020A000C0000000F0000002840FD000A000C0001000F000C0000007E020A000D0000000F0000002A40FD000A000D0001000F000D0000007E020A000E0000000F0000002C40FD000A000E0001000F000E0000007E020A000F0000000F0000002E40FD000A000F0001000F000F0000007E020A00100000000F0000003040FD000A00100001000F00100000007E020A00110000000F0000003140FD000A00110001000F00110000007E020A00120000000F0000003240FD000A00120001000F00120000007E020A00130000000F0000003340FD000A00130001000F00130000007E020A00140000000F0000003440FD000A00140001000F00140000007E020A00150000000F0000003540FD000A00150001000F00150000007E020A00160000000F0000003640FD000A00160001000F00160000007E020A00170000000F0000003740FD000A00170001000F00170000007E020A00180000000F0000003840FD000A00180001000F00180000007E020A00190000000F0000003940FD000A00190001000F00190000007E020A001A0000000F0000003A40FD000A001A0001000F001A0000007E020A001B0000000F0000003B40FD000A001B0001000F001B0000007E020A001C0000000F0000003C40FD000A001C0001000F001C0000007E020A001D0000000F0000003D40FD000A001D0001000F001D0000007E020A001E0000000F0000003E40FD000A001E0001000F001E0000007E020A001F0000000F0000003F40FD000A001F0001000F001F000000D7004400000600006C021C001C001C001C001C001C001C001C001C001C001C001C001C001C001C001C001C001C001C001C001C001C001C001C001C001C001C001C001C001C001C0008021000200000000200FF000000000000010F0008021000210000000200FF000000000000010F0008021000220000000200FF000000000000010F0008021000230000000200FF000000000000010F0008021000240000000200FF000000000000010F0008021000250000000200FF000000000000010F0008021000260000000200FF000000000000010F0008021000270000000200FF000000000000010F0008021000280000000200FF000000000000010F0008021000290000000200FF000000000000010F00080210002A0000000200FF000000000000010F00080210002B0000000200FF000000000000010F00080210002C0000000200FF000000000000010F00080210002D0000000200FF000000000000010F00080210002E0000000200FF000000000000010F00080210002F0000000200FF000000000000010F0008021000300000000200FF000000000000010F0008021000310000000200FF000000000000010F0008021000320000000200FF000000000000010F0008021000330000000200FF000000000000010F0008021000340000000200FF000000000000010F0008021000350000000200FF000000000000010F0008021000360000000200FF000000000000010F0008021000370000000200FF000000000000010F0008021000380000000200FF000000000000010F0008021000390000000200FF000000000000010F00080210003A0000000200FF000000000000010F00080210003B0000000200FF000000000000010F00080210003C0000000200FF000000000000010F007E020A00200000000F0000004040FD000A00200001000F00200000007E020A00210000000F0000804040FD000A00210001000F00210000007E020A00220000000F0000004140FD000A00220001000F00220000007E020A00230000000F0000804140FD000A00230001000F00230000007E020A00240000000F0000004240FD000A00240001000F00240000007E020A00250000000F0000804240FD000A00250001000F00250000007E020A00260000000F0000004340FD000A00260001000F00260000007E020A00270000000F0000804340FD000A00270001000F00270000007E020A00280000000F0000004440FD000A00280001000F00280000007E020A00290000000F0000804440FD000A00290001000F00290000007E020A002A0000000F0000004540FD000A002A0001000F002A0000007E020A002B0000000F0000804540FD000A002B0001000F002B0000007E020A002C0000000F0000004640FD000A002C0001000F002C0000007E020A002D0000000F0000804640FD000A002D0001000F002D0000007E020A002E0000000F0000004740FD000A002E0001000F002E0000007E020A002F0000000F0000804740FD000A002F0001000F002F0000007E020A00300000000F0000004840FD000A00300001000F00300000007E020A00310000000F0000804840FD000A00310001000F00310000007E020A00320000000F0000004940FD000A00320001000F00320000007E020A00330000000F0000804940FD000A00330001000F00330000007E020A00340000000F0000004A40FD000A00340001000F00340000007E020A00350000000F0000804A40FD000A00350001000F00350000007E020A00360000000F0000004B40FD000A00360001000F00360000007E020A00370000000F0000804B40FD000A00370001000F00370000007E020A00380000000F0000004C40FD000A00380001000F00380000007E020A00390000000F0000804C40FD000A00390001000F00390000007E020A003A0000000F0000004D40FD000A003A0001000F003A0000007E020A003B0000000F0000804D40FD000A003B0001000F003B0000007E020A003C0000000F0000004E40FD000A003C0001000F003C000000D7003E007005000030021C001C001C001C001C001C001C001C001C001C001C001C001C001C001C001C001C001C001C001C001C001C001C001C001C001C001C001C003E021200B6060000000040000000000000003C0000008B0810008B080000000000000000000000003A001D000F000300000200000001000000FF3F020267081700670800000000000000000000020001FFFFFFFF034400000A0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FEFF0000060202000000000000000000000000000000000001000000E0859FF2F94F6810AB9108002B27B3D9300000005000000004000000010000002800000008000000300000000D0000003C000000130000004800000002000000E40400001E000000040000006D6173004000000000AFE590BF60D60103000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FEFF000006020200000000000000000000000000000000000100000002D5CDD59C2E1B10939708002B2CF9AE30000000D400000008000000010000004800000017000000500000000B000000580000001000000060000000130000006800000016000000700000000D000000780000000C0000009400000002000000E40400000300000000000E000B000000000000000B000000000000000B000000000000000B000000000000001E1000000200000006000000556E6974730006000000556E697473000C100000040000001E0000000B000000576F726B7368656574730003000000010000001E0000000D0000004E616D65642052616E67657300030000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A0000000B0000000C0000000D0000000E0000000F000000100000001100000012000000130000001400000015000000160000001700000018000000190000001A0000001B0000001C0000001D000000FEFFFFFF1F000000200000002100000022000000230000002400000025000000FEFFFFFF2700000028000000290000002A0000002B0000002C0000002D000000FEFFFFFFFDFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52006F006F007400200045006E00740072007900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016000501FFFFFFFFFFFFFFFF020000002008020000000000C0000000000000460000000000000000000000000000000000000000FEFFFFFF000000000000000057006F0072006B0062006F006F006B0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000012000201FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000000000000143B0000000000000500530075006D006D0061007200790049006E0066006F0072006D006100740069006F006E000000000000000000000000000000000000000000000000000000280002010100000003000000FFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000001E0000000010000000000000050044006F00630075006D0065006E007400530075006D006D0061007200790049006E0066006F0072006D006100740069006F006E000000000000000000000038000201FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000260000000010000000000000, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SampleFiles] ([Code], [Name], [FileDetail], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ID], [BranchCode]) VALUES (8, N'StockCount', 0xD0CF11E0A1B11AE1000000000000000000000000000000003E000300FEFF0900060000000000000000000000010000002F0000000000000000100000FEFFFFFF00000000FEFFFFFF000000002E000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF09081000000605006632CD07C980010006060000E1000200B004C10002000000E20000005C0070000300006D61732020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202042000200B004610102000000C00100003D01020001009C0002001100190002000000120002000000130002000000AF0102000000BC01020000003D001200E0016900D3594524380000000000010058024000020000008D00020000002200020000000E0002000100B70102000000DA000200000031001E00DC000000080090010000000200000701430061006C00690062007200690031001E00DC000000080090010000000200000701430061006C00690062007200690031001E00DC000000080090010000000200000701430061006C00690062007200690031001E00DC000000080090010000000200000701430061006C00690062007200690031001E00DC000000080090010000000200000701430061006C00690062007200690031001E00DC000000090090010000000200000701430061006C00690062007200690031001E00DC000000140090010000000200000701430061006C00690062007200690031001E00DC0001003400BC020000000200000701430061006C00690062007200690031001E00DC0001000900BC020000000200000701430061006C00690062007200690031001E00DC000200170090010000000200000701430061006C00690062007200690031001E00DC000000110090010000000200000701430061006C00690062007200690031001E002C0101003800BC020000000200000701430061006C00690062007200690031001E00040101003800BC020000000200000701430061006C00690062007200690031001E00DC0001003800BC020000000200000701430061006C00690062007200690031001E00DC0000003E0090010000000200000701430061006C00690062007200690031001E00DC000000340090010000000200000701430061006C00690062007200690031001E00DC0000003C0090010000000200000701430061006C00690062007200690031001E00DC0001003F00BC020000000200000701430061006C00690062007200690031001E00680101003800BC020000000200000701430061006D00620072006900610031001E00DC0001000800BC020000000200000701430061006C00690062007200690031001E00DC0000000A0090010000000200000701430061006C0069006200720069001E041C000500170000222422232C2323305F293B5C28222422232C2323305C291E04210006001C0000222422232C2323305F293B5B5265645D5C28222422232C2323305C291E04220007001D0000222422232C2323302E30305F293B5C28222422232C2323302E30305C291E0427000800220000222422232C2323302E30305F293B5B5265645D5C28222422232C2323302E30305C291E0437002A003200005F282224222A20232C2323305F293B5F282224222A205C28232C2323305C293B5F282224222A20222D225F293B5F28405F291E042E0029002900005F282A20232C2323305F293B5F282A205C28232C2323305C293B5F282A20222D225F293B5F28405F291E043F002C003A00005F282224222A20232C2323302E30305F293B5F282224222A205C28232C2323302E30305C293B5F282224222A20222D223F3F5F293B5F28405F291E0436002B003100005F282A20232C2323302E30305F293B5F282A205C28232C2323302E30305C293B5F282A20222D223F3F5F293B5F28405F291E041200A4000D00005B242D31303430395D302E30301E040D00A5000800006D6D6D2F797979791E042000A6001B0000797979792F6D6D2F64645C2068683A6D6D3A73735C20414D2F504D1E042300A7001E00005B242D3430395D646464645C2C5C206D6D6D6D5C20645C2C5C20797979791E041A00A8001500005B242D3430395D683A6D6D3A73735C20414D2F504DE000140000000000F5FF200000000000000000000000C020E000140005000000F5FF200000F40000000000000000C020E000140005000000F5FF200000F40000000000000000C020E000140005000000F5FF200000F40000000000000000C020E000140005000000F5FF200000F40000000000000000C020E000140005000000F5FF200000F40000000000000000C020E000140005000000F5FF200000F40000000000000000C020E000140005000000F5FF200000F40000000000000000C020E000140005000000F5FF200000F40000000000000000C020E000140005000000F5FF200000F40000000000000000C020E000140005000000F5FF200000F40000000000000000C020E000140005000000F5FF200000F40000000000000000C020E000140005000000F5FF200000F40000000000000000C020E000140005000000F5FF200000F40000000000000000C020E000140005000000F5FF200000F40000000000000000C020E0001400000000000100200000000000000000000002C020E000140005000000F5FF200000B400000000000000049F20E000140005000000F5FF200000B40000000000000004AD20E000140005000000F5FF200000B40000000000000004AA20E000140005000000F5FF200000B40000000000000004AE20E000140005000000F5FF200000B400000000000000049B20E000140005000000F5FF200000B40000000000000004AF20E000140005000000F5FF200000B40000000000000004AC20E000140005000000F5FF200000B400000000000000049D20E000140005000000F5FF200000B400000000000000048B20E000140005000000F5FF200000B40000000000000004AE20E000140005000000F5FF200000B40000000000000004AC20E000140005000000F5FF200000B40000000000000004B320E000140006000000F5FF200000B400000000000000049E20E000140006000000F5FF200000B400000000000000049D20E000140006000000F5FF200000B400000000000000048B20E000140006000000F5FF200000B40000000000000004A420E000140006000000F5FF200000B40000000000000004B120E000140006000000F5FF200000B40000000000000004B420E000140006000000F5FF200000B40000000000000004BE20E000140006000000F5FF200000B400000000000000048A20E000140006000000F5FF200000B40000000000000004B920E000140006000000F5FF200000B40000000000000004A420E000140006000000F5FF200000B40000000000000004B120E000140006000000F5FF200000B40000000000000004B520E000140007000000F5FF200000B40000000000000004AD20E000140008000000F5FF200000941111970B970B00049620E000140009000000F5FF200000946666BF1FBF1F0004B720E000140005002B00F5FF200000F80000000000000000C020E000140005002900F5FF200000F80000000000000000C020E000140005002C00F5FF200000F80000000000000000C020E000140005002A00F5FF200000F80000000000000000C020E00014000A000000F5FF200000F40000000000000000C020E00014000B000000F5FF200000B40000000000000004AA20E00014000C000000F5FF200000D400500000001F0000C020E00014000D000000F5FF200000D400500000000B0000C020E00014000E000000F5FF200000D400200000000F0000C020E00014000E000000F5FF200000F40000000000000000C020E00014000F000000F5FF200000941111970B970B0004AF20E000140010000000F5FF200000D400600000001A0000C020E000140011000000F5FF200000B40000000000000004AB20E000140005000000F5FF2000009C1111160B160B00049A20E000140012000000F5FF200000941111BF1FBF1F00049620E000140005000900F5FF200000F80000000000000000C020E000140013000000F5FF200000F40000000000000000C020E000140014000000F5FF200000D4006100003E1F0000C020E000140015000000F5FF200000F40000000000000000C020E0001400000031000100200000040000000000000002C0207C0814007C080000000000000000000000003F007F9BEDA77D082D007D080000000000000000000000000000000002000D0014000300000001000000797979293B5F282A0E000500027D082D007D080000000000000000000000000100000002000D0014000300000001000000797979293B5F282A0E000500027D082D007D080000000000000000000000000200000002000D0014000300000001000000797979293B5F282A0E000500027D082D007D080000000000000000000000000300000002000D0014000300000001000000797979293B5F282A0E000500027D082D007D080000000000000000000000000400000002000D0014000300000001000000797979293B5F282A0E000500027D082D007D080000000000000000000000000500000002000D0014000300000001000000797979293B5F282A0E000500027D082D007D080000000000000000000000000600000002000D0014000300000001000000797979293B5F282A0E000500027D082D007D080000000000000000000000000700000002000D0014000300000001000000797979293B5F282A0E000500027D082D007D080000000000000000000000000800000002000D0014000300000001000000797979293B5F282A0E000500027D082D007D080000000000000000000000000900000002000D0014000300000001000000797979293B5F282A0E000500027D082D007D080000000000000000000000000A00000002000D0014000300000001000000797979293B5F282A0E000500027D082D007D080000000000000000000000000B00000002000D0014000300000001000000797979293B5F282A0E000500027D082D007D080000000000000000000000000C00000002000D0014000300000001000000797979293B5F282A0E000500027D082D007D080000000000000000000000000D00000002000D0014000300000001000000797979293B5F282A0E000500027D082D007D080000000000000000000000000E00000002000D0014000300000001000000797979293B5F282A0E000500027D082D007D080000000000000000000000000F00000002000D0014000300000001000000797979293B5F282A0E000500027D0841007D080000000000000000000000001000000003000D0014000300000001000000797979293B5F282A0E000500020400140003006566040000003B5F28405F2920207D0841007D080000000000000000000000001100000003000D0014000300000001000000797979293B5F282A0E000500020400140003006566050000003B5F28405F2920207D0841007D080000000000000000000000001200000003000D0014000300000001000000797979293B5F282A0E000500020400140003006566060000003B5F28405F2920207D0841007D080000000000000000000000001300000003000D0014000300000001000000797979293B5F282A0E000500020400140003006566070000003B5F28405F2920207D0841007D080000000000000000000000001400000003000D0014000300000001000000797979293B5F282A0E000500020400140003006566080000003B5F28405F2920207D0841007D080000000000000000000000001500000003000D0014000300000001000000797979293B5F282A0E000500020400140003006566090000003B5F28405F2920207D0841007D080000000000000000000000001600000003000D0014000300000001000000797979293B5F282A0E00050002040014000300CC4C040000003B5F28405F2920207D0841007D080000000000000000000000001700000003000D0014000300000001000000797979293B5F282A0E00050002040014000300CC4C050000003B5F28405F2920207D0841007D080000000000000000000000001800000003000D0014000300000001000000797979293B5F282A0E00050002040014000300CC4C060000003B5F28405F2920207D0841007D080000000000000000000000001900000003000D0014000300000001000000797979293B5F282A0E00050002040014000300CC4C070000003B5F28405F2920207D0841007D080000000000000000000000001A00000003000D0014000300000001000000797979293B5F282A0E00050002040014000300CC4C080000003B5F28405F2920207D0841007D080000000000000000000000001B00000003000D0014000300000001000000797979293B5F282A0E00050002040014000300CC4C090000003B5F28405F2920207D0841007D080000000000000000000000001C00000003000D0014000300000000000000797979293B5F282A0E000500020400140003003233040000003B5F28405F2920207D0841007D080000000000000000000000001D00000003000D0014000300000000000000797979293B5F282A0E000500020400140003003233050000003B5F28405F2920207D0841007D080000000000000000000000001E00000003000D0014000300000000000000797979293B5F282A0E000500020400140003003233060000003B5F28405F2920207D0841007D080000000000000000000000001F00000003000D0014000300000000000000797979293B5F282A0E000500020400140003003233070000003B5F28405F2920207D0841007D080000000000000000000000002000000003000D0014000300000000000000797979293B5F282A0E000500020400140003003233080000003B5F28405F2920207D0841007D080000000000000000000000002100000003000D0014000300000000000000797979293B5F282A0E000500020400140003003233090000003B5F28405F2920207D0841007D080000000000000000000000002200000003000D0014000300000000000000797979293B5F282A0E000500020400140003000000040000003B5F28405F2920207D0841007D080000000000000000000000002300000003000D0014000300000000000000797979293B5F282A0E000500020400140003000000050000003B5F28405F2920207D0841007D080000000000000000000000002400000003000D0014000300000000000000797979293B5F282A0E000500020400140003000000060000003B5F28405F2920207D0841007D080000000000000000000000002500000003000D0014000300000000000000797979293B5F282A0E000500020400140003000000070000003B5F28405F2920207D0841007D080000000000000000000000002600000003000D0014000300000000000000797979293B5F282A0E000500020400140003000000080000003B5F28405F2920207D0841007D080000000000000000000000002700000003000D0014000300000000000000797979293B5F282A0E000500020400140003000000090000003B5F28405F2920207D0841007D080000000000000000000000002800000003000D001400020000009C0006FF797979293B5F282A0E000500020400140002000000FFC7CEFF3B5F28405F2920207D0891007D080000000000000000000000002900000007000D00140002000000FA7D00FF797979293B5F282A0E000500020400140002000000F2F2F2FF3B5F28405F29202007001400020000007F7F7FFF202020202020202008001400020000007F7F7FFF202020202020202009001400020000007F7F7FFF00000000000000000A001400020000007F7F7FFF00000000000000007D0891007D080000000000000000000000002A00000007000D0014000300000000000000797979293B5F282A0E000500020400140002000000A5A5A5FF3B5F28405F29202007001400020000003F3F3FFF202020202020202008001400020000003F3F3FFF202020202020202009001400020000003F3F3FFF00000000000000000A001400020000003F3F3FFF00000000000000007D082D007D080000000000000000000000002B00000002000D0014000300000001000000797979293B5F282A0E000500027D082D007D080000000000000000000000002C00000002000D0014000300000001000000797979293B5F282A0E000500027D082D007D080000000000000000000000002D00000002000D0014000300000001000000797979293B5F282A0E000500027D082D007D080000000000000000000000002E00000002000D0014000300000001000000797979293B5F282A0E000500027D082D007D080000000000000000000000002F00000002000D001400020000007F7F7FFF797979293B5F282A0E000500027D0841007D080000000000000000000000003000000003000D00140002000000006100FF797979293B5F282A0E000500020400140002000000C6EFCEFF3B5F28405F2920207D0841007D080000000000000000000000003100000003000D0014000300000003000000797979293B5F282A0E000500020800140003000000040000003B5F28405F2920207D0841007D080000000000000000000000003200000003000D0014000300000003000000797979293B5F282A0E00050002080014000300FF3F040000003B5F28405F2920207D0841007D080000000000000000000000003300000003000D0014000300000003000000797979293B5F282A0E000500020800140003003233040000003B5F28405F2920207D082D007D080000000000000000000000003400000002000D0014000300000003000000797979293B5F282A0E000500027D0891007D080000000000000000000000003500000007000D001400020000003F3F76FF797979293B5F282A0E000500020400140002000000FFCC99FF3B5F28405F29202007001400020000007F7F7FFF202020202020202008001400020000007F7F7FFF202020202020202009001400020000007F7F7FFF00000000000000000A001400020000007F7F7FFF00000000000000007D0841007D080000000000000000000000003600000003000D00140002000000FA7D00FF797979293B5F282A0E000500020800140002000000FF8001FF3B5F28405F2920207D0841007D080000000000000000000000003700000003000D001400020000009C6500FF797979293B5F282A0E000500020400140002000000FFEB9CFF3B5F28405F2920207D0891007D080000000000000000000000003800000007000D0014000300000001000000797979293B5F282A0E000500020400140002000000FFFFCCFF3B5F28405F2920200700140002000000B2B2B2FF20202020202020200800140002000000B2B2B2FF20202020202020200900140002000000B2B2B2FF00000000000000000A00140002000000B2B2B2FF00000000000000007D0891007D080000000000000000000000003900000007000D001400020000003F3F3FFF797979293B5F282A0E000500020400140002000000F2F2F2FF3B5F28405F29202007001400020000003F3F3FFF202020202020202008001400020000003F3F3FFF202020202020202009001400020000003F3F3FFF00000000000000000A001400020000003F3F3FFF00000000000000007D082D007D080000000000000000000000003A00000002000D0014000300000001000000797979293B5F282A0E000500027D082D007D080000000000000000000000003B00000002000D0014000300000003000000797979293B5F282A0E000500017D0855007D080000000000000000000000003C00000004000D0014000300000001000000797979293B5F282A0E000500020700140003000000040000003B5F28405F29202008001400030000000400000020202020202020207D082D007D080000000000000000000000003D00000002000D00140002000000FF0000FF797979293B5F282A0E000500027D082D007D080000000000000000000000003E00000002000D0014000300000001000000797979293B5F282A0E000500029302120010000D0000323025202D20416363656E743192084D0092080000000000000000000001041EFF0D0032003000250020002D00200041006300630065006E00740031000000030001000C0007046566DCE6F1FF05000C0007010000000000FF25000500029302120011000D0000323025202D20416363656E743292084D00920800000000000000000000010422FF0D0032003000250020002D00200041006300630065006E00740032000000030001000C0007056566F2DCDBFF05000C0007010000000000FF25000500029302120012000D0000323025202D20416363656E743392084D00920800000000000000000000010426FF0D0032003000250020002D00200041006300630065006E00740033000000030001000C0007066566EBF1DEFF05000C0007010000000000FF25000500029302120013000D0000323025202D20416363656E743492084D0092080000000000000000000001042AFF0D0032003000250020002D00200041006300630065006E00740034000000030001000C0007076566E4DFECFF05000C0007010000000000FF25000500029302120014000D0000323025202D20416363656E743592084D0092080000000000000000000001042EFF0D0032003000250020002D00200041006300630065006E00740035000000030001000C0007086566DAEEF3FF05000C0007010000000000FF25000500029302120015000D0000323025202D20416363656E743692084D00920800000000000000000000010432FF0D0032003000250020002D00200041006300630065006E00740036000000030001000C0007096566FDE9D9FF05000C0007010000000000FF25000500029302120016000D0000343025202D20416363656E743192084D0092080000000000000000000001041FFF0D0034003000250020002D00200041006300630065006E00740031000000030001000C000704CC4CB8CCE4FF05000C0007010000000000FF25000500029302120017000D0000343025202D20416363656E743292084D00920800000000000000000000010423FF0D0034003000250020002D00200041006300630065006E00740032000000030001000C000705CC4CE6B8B7FF05000C0007010000000000FF25000500029302120018000D0000343025202D20416363656E743392084D00920800000000000000000000010427FF0D0034003000250020002D00200041006300630065006E00740033000000030001000C000706CC4CD8E4BCFF05000C0007010000000000FF25000500029302120019000D0000343025202D20416363656E743492084D0092080000000000000000000001042BFF0D0034003000250020002D00200041006300630065006E00740034000000030001000C000707CC4CCCC0DAFF05000C0007010000000000FF2500050002930212001A000D0000343025202D20416363656E743592084D0092080000000000000000000001042FFF0D0034003000250020002D00200041006300630065006E00740035000000030001000C000708CC4CB7DEE8FF05000C0007010000000000FF2500050002930212001B000D0000343025202D20416363656E743692084D00920800000000000000000000010433FF0D0034003000250020002D00200041006300630065006E00740036000000030001000C000709CC4CFCD5B4FF05000C0007010000000000FF2500050002930212001C000D0000363025202D20416363656E743192084D00920800000000000000000000010420FF0D0036003000250020002D00200041006300630065006E00740031000000030001000C000704323395B3D7FF05000C0007000000FFFFFFFF2500050002930212001D000D0000363025202D20416363656E743292084D00920800000000000000000000010424FF0D0036003000250020002D00200041006300630065006E00740032000000030001000C0007053233DA9694FF05000C0007000000FFFFFFFF2500050002930212001E000D0000363025202D20416363656E743392084D00920800000000000000000000010428FF0D0036003000250020002D00200041006300630065006E00740033000000030001000C0007063233C4D79BFF05000C0007000000FFFFFFFF2500050002930212001F000D0000363025202D20416363656E743492084D0092080000000000000000000001042CFF0D0036003000250020002D00200041006300630065006E00740034000000030001000C0007073233B1A0C7FF05000C0007000000FFFFFFFF25000500029302120020000D0000363025202D20416363656E743592084D00920800000000000000000000010430FF0D0036003000250020002D00200041006300630065006E00740035000000030001000C000708323392CDDCFF05000C0007000000FFFFFFFF25000500029302120021000D0000363025202D20416363656E743692084D00920800000000000000000000010434FF0D0036003000250020002D00200041006300630065006E00740036000000030001000C0007093233FABF8FFF05000C0007000000FFFFFFFF250005000293020C002200070000416363656E74319208410092080000000000000000000001041DFF070041006300630065006E00740031000000030001000C00070400004F81BDFF05000C0007000000FFFFFFFF250005000293020C002300070000416363656E743292084100920800000000000000000000010421FF070041006300630065006E00740032000000030001000C0007050000C0504DFF05000C0007000000FFFFFFFF250005000293020C002400070000416363656E743392084100920800000000000000000000010425FF070041006300630065006E00740033000000030001000C00070600009BBB59FF05000C0007000000FFFFFFFF250005000293020C002500070000416363656E743492084100920800000000000000000000010429FF070041006300630065006E00740034000000030001000C00070700008064A2FF05000C0007000000FFFFFFFF250005000293020C002600070000416363656E74359208410092080000000000000000000001042DFF070041006300630065006E00740035000000030001000C00070800004BACC6FF05000C0007000000FFFFFFFF250005000293020C002700070000416363656E743692084100920800000000000000000000010431FF070041006300630065006E00740036000000030001000C0007090000F79646FF05000C0007000000FFFFFFFF25000500029302080028000300004261649208390092080000000000000000000001011BFF03004200610064000000030001000C0005FF0000FFC7CEFF05000C0005FF00009C0006FF25000500029302100029000B000043616C63756C6174696F6E92088100920800000000000000000000010216FF0B00430061006C00630075006C006100740069006F006E000000070001000C0005FF0000F2F2F2FF05000C0005FF0000FA7D00FF250005000206000E0005FF00007F7F7FFF010007000E0005FF00007F7F7FFF010008000E0005FF00007F7F7FFF010009000E0005FF00007F7F7FFF010093020F002A000A0000436865636B2043656C6C92087F00920800000000000000000000010217FF0A0043006800650063006B002000430065006C006C000000070001000C0005FF0000A5A5A5FF05000C0007000000FFFFFFFF250005000206000E0005FF00003F3F3FFF060007000E0005FF00003F3F3FFF060008000E0005FF00003F3F3FFF060009000E0005FF00003F3F3FFF0600930204002B8003FF92082000920800000000000000000000010503FF050043006F006D006D00610000000000930204002C8006FF92082800920800000000000000000000010506FF090043006F006D006D00610020005B0030005D0000000000930204002D8004FF92082600920800000000000000000000010504FF0800430075007200720065006E006300790000000000930204002E8007FF92082E00920800000000000000000000010507FF0C00430075007200720065006E006300790020005B0030005D0000000000930215002F001000004578706C616E61746F7279205465787492084700920800000000000000000000010235FF10004500780070006C0061006E00610074006F0072007900200054006500780074000000020005000C0005FF00007F7F7FFF2500050002930209003000040000476F6F6492083B0092080000000000000000000001011AFF040047006F006F0064000000030001000C0005FF0000C6EFCEFF05000C0005FF0000006100FF250005000293020E00310009000048656164696E67203192084700920800000000000000000000010310FF0900480065006100640069006E006700200031000000030005000C00070300001F497DFF250005000207000E00070400004F81BDFF050093020E00320009000048656164696E67203292084700920800000000000000000000010311FF0900480065006100640069006E006700200032000000030005000C00070300001F497DFF250005000207000E000704FF3FA7BFDEFF050093020E00330009000048656164696E67203392084700920800000000000000000000010312FF0900480065006100640069006E006700200033000000030005000C00070300001F497DFF250005000207000E000704323395B3D7FF020093020E00340009000048656164696E67203492083900920800000000000000000000010313FF0900480065006100640069006E006700200034000000020005000C00070300001F497DFF250005000293020A003500050000496E70757492087500920800000000000000000000010214FF050049006E007000750074000000070001000C0005FF0000FFCC99FF05000C0005FF00003F3F76FF250005000206000E0005FF00007F7F7FFF010007000E0005FF00007F7F7FFF010008000E0005FF00007F7F7FFF010009000E0005FF00007F7F7FFF01009302100036000B00004C696E6B65642043656C6C92084B00920800000000000000000000010218FF0B004C0069006E006B00650064002000430065006C006C000000030005000C0005FF0000FA7D00FF250005000207000E0005FF0000FF8001FF060093020C0037000700004E65757472616C9208410092080000000000000000000001011CFF07004E00650075007400720061006C000000030001000C0005FF0000FFEB9CFF05000C0005FF00009C6500FF250005000293020400008000FF92083300920800000000000000000000010100FF06004E006F0072006D0061006C000000020005000C0007010000000000FF25000500029302090038000400004E6F74659208620092080000000000000000000001020AFF04004E006F00740065000000050001000C0005FF0000FFFFCCFF06000E0005FF0000B2B2B2FF010007000E0005FF0000B2B2B2FF010008000E0005FF0000B2B2B2FF010009000E0005FF0000B2B2B2FF010093020B0039000600004F757470757492087700920800000000000000000000010215FF06004F00750074007000750074000000070001000C0005FF0000F2F2F2FF05000C0005FF00003F3F3FFF250005000206000E0005FF00003F3F3FFF010007000E0005FF00003F3F3FFF010008000E0005FF00003F3F3FFF010009000E0005FF00003F3F3FFF0100930204003A8005FF92082400920800000000000000000000010505FF0700500065007200630065006E0074000000000093020A003B000500005469746C659208310092080000000000000000000001030FFF05005400690074006C0065000000020005000C00070300001F497DFF250005000193020A003C00050000546F74616C92084D00920800000000000000000000010319FF050054006F00740061006C000000040005000C0007010000000000FF250005000206000E00070400004F81BDFF010007000E00070400004F81BDFF0600930211003D000C00005761726E696E67205465787492083F0092080000000000000000000001020BFF0C005700610072006E0069006E006700200054006500780074000000020005000C0005FF0000FF0000FF25000500028E0858008E080000000000000000000090000000110011005400610062006C0065005300740079006C0065004D0065006400690075006D0032005000690076006F0074005300740079006C0065004C0069006700680074003100360060010200000085001200AB30000000000A0053746F636B436F756E749A0818009A0800000000000000000000010000000000000004000000A3081000A30800000000000000000000000000008C00040001000100AE0104000100010417000800010000000000000018001B00210000010B000000010000000000000D3D00000000000000000000C1010800C10100008D340200FC008001230000001A000000070000426172636F64650C00003032303731343630323031370C00003032303731343435363438310C0000303230373134393136323735070000353033383031380C00003032303731343332343632390C00003032303731343332343631320C00003032303731343639393633350C00003032303731343734333334350C00003032303731343630323032340C00003032303731343734333336390C00003032303731343734333331340C00003032303731343630323030300C00003032303731343535323434320C00003032303731343535323431310C00003032303731343535323430340C00003032303731343536343132340C00003032303731343730303235360C00003032303731343233353831390C00003032303731343134393536370C00003032303731343134393631310C00003032303731343536343131370B00003532393132323332343437070000313132323333350D0000383936343030323334373033320D000038393634303032333437303439FF0022000800B32E00000C000000212F00007A000000992F0000F20000000B3000006401000063081600630800000000000000000000160000000000000002009608100096080000000000000000000042E501009B0810009B0800000000000000000000010000008C0810008C0800000000000000000000000000000A00000009081000000610006632CD07C9800100060600000B021800000000000000000023000000B33500001B3A0000C93A00000D00020001000C00020064000F000200010011000200000010000800FCA9F1D24D62503F5F00020001002A00020000002B00020000008200020001008000080000000000000000002502040000002C0181000200C104140000001500000083000200000084000200000026000800666666666666E63F27000800666666666666E63F28000800000000000000E83F29000800000000000000E83F4D00EA0300004B004F0054000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001040306DC000C0343EF800501000100EA0A6F08640001000F00C80002000100C800020001004C00650074007400650072000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000010000000200000001000000FFFFFFFF0000000000000000000000000000000044494E552200B0000C030000C1951CFB000000000000000000000000000000000000000000000000000000000600000001000000000000000200010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000B0000000534D544A000000001000A00053006E00610067006900740020003100320020005000720069006E007400650072000000496E70757442696E004D414E55414C00524553444C4C00556E69726573444C4C004F7269656E746174696F6E00504F52545241495400506170657253697A65004C4554544552005265736F6C7574696F6E004F7074696F6E3300436F6C6F724D6F646500323462707000000000000000000000000000000000000000A1002200010064000100010001000200C800C800333333333333D33F333333333333D33F01009C0826009C0800000000000000000000000000000000000000000000000000003C3300000000000000005500020008007D000C0000000000B6133E000200000000020E000000000023000000000001000000080210000000000001002C010000000000010F00080210000100000001002C010000000000010F00080210000200000001002C010000000000010F00080210000300000001002C010000000000010F00080210000400000001002C010000000000010F00080210000500000001002C010000000000010F00080210000600000001002C010000000000010F00080210000700000001002C010000000000010F00080210000800000001002C010000000000010F00080210000900000001002C010000000000010F00080210000A00000001002C010000000000010F00080210000B00000001002C010000000000010F00080210000C00000001002C010000000000010F00080210000D00000001002C010000000000010F00080210000E00000001002C010000000000010F00080210000F00000001002C010000000000010F00080210001000000001002C010000000000010F00080210001100000001002C010000000000010F00080210001200000001002C010000000000010F00080210001300000001002C010000000000010F00080210001400000001002C010000000000010F00080210001500000001002C010000000000010F00080210001600000001002C010000000000010F00080210001700000001002C010000000000010F00080210001800000001002C010000000000010F00080210001900000001002C010000000000010F00080210001A00000001002C010000000000010F00080210001B00000001002C010000000000010F00080210001C00000001002C010000000000010F00080210001D00000001002C010000000000010F00080210001E00000001002C010000000000010F00080210001F00000001002C010000000000010F00FD000A00000000003E0000000000FD000A00010000003E0017000000FD000A00020000003E0018000000FD000A00030000003E0019000000FD000A00040000003E0002000000FD000A00050000003E0003000000FD000A00060000003E0004000000FD000A00070000003E0004000000FD000A00080000003E0005000000FD000A00090000003E0006000000FD000A000A0000003E0006000000FD000A000B0000003E0007000000FD000A000C0000003E0007000000FD000A000D0000003E0001000000FD000A000E0000003E0008000000FD000A000F0000003E0009000000FD000A00100000003E000A000000FD000A00110000003E000B000000FD000A00120000003E000C000000FD000A00130000003E000D000000FD000A00140000003E000D000000FD000A00150000003E000E000000FD000A00160000003E000F000000FD000A00170000003E000E000000FD000A00180000003E0010000000FD000A00190000003E0011000000FD000A001A0000003E0010000000FD000A001B0000003E0016000000FD000A001C0000003E0012000000FD000A001D0000003E0012000000FD000A001E0000003E0013000000FD000A001F0000003E0014000000D7004400400400006C020E000E000E000E000E000E000E000E000E000E000E000E000E000E000E000E000E000E000E000E000E000E000E000E000E000E000E000E000E000E000E00080210002000000001002C010000000000010F00080210002100000001002C010000000000010F00080210002200000001002C010000000000010F00FD000A00200000003E0010000000FD000A00210000003E0011000000FD000A00220000003E0015000000D7000A006600000028000E000E003E021200B606000000004000000000000000000000008B0810008B0800000000000000000000000002001D000F0003030000000000010003000300000067081700670800000000000000000000020001FFFFFFFF034400000A00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FEFF0000060202000000000000000000000000000000000001000000E0859FF2F94F6810AB9108002B27B3D930000000980000000700000001000000400000000400000048000000080000005400000012000000600000000C000000780000000D00000084000000130000009000000002000000E40400001E000000040000004D6173001E000000040000006D6173001E000000100000004D6963726F736F667420457863656C00400000000084FF91AF19D4014000000000A5E08BD03BD60103000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FEFF000006020200000000000000000000000000000000000100000002D5CDD59C2E1B10939708002B2CF9AE30000000B400000008000000010000004800000017000000500000000B000000580000001000000060000000130000006800000016000000700000000D000000780000000C0000008F00000002000000E40400000300000000000E000B000000000000000B000000000000000B000000000000000B000000000000001E100000010000000B00000053746F636B436F756E74000C100000020000001E0000000B000000576F726B7368656574730003000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A0000000B0000000C0000000D0000000E0000000F000000100000001100000012000000130000001400000015000000160000001700000018000000190000001A0000001B0000001C0000001D000000FEFFFFFF1F000000200000002100000022000000230000002400000025000000FEFFFFFF2700000028000000290000002A0000002B0000002C0000002D000000FEFFFFFFFDFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52006F006F007400200045006E00740072007900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016000501FFFFFFFFFFFFFFFF020000002008020000000000C0000000000000460000000000000000000000000000000000000000FEFFFFFF000000000000000057006F0072006B0062006F006F006B0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000012000201FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000000000000333B0000000000000500530075006D006D0061007200790049006E0066006F0072006D006100740069006F006E000000000000000000000000000000000000000000000000000000280002010100000003000000FFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000001E0000000010000000000000050044006F00630075006D0065006E007400530075006D006D0061007200790049006E0066006F0072006D006100740069006F006E000000000000000000000038000201FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000260000000010000000000000, NULL, NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[SampleFiles] OFF
GO
SET IDENTITY_INSERT [dbo].[Sizes] ON 
GO
INSERT [dbo].[Sizes] ([Code], [Size], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (1, N'Size', NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Sizes] OFF
GO
SET IDENTITY_INSERT [dbo].[StockByLocation] ON 
GO
INSERT [dbo].[StockByLocation] ([Code], [LocationCode], [ProductCode], [Attributes], [Stock], [CurrentValue], [SKU], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ProductSKU], [Variant], [BranchCode]) VALUES (5, 1, 2, NULL, CAST(-135.000 AS Numeric(18, 3)), CAST(-14400.00 AS Numeric(18, 2)), NULL, NULL, CAST(N'2025-02-02T19:15:56.000' AS DateTime), NULL, NULL, -1, NULL, NULL)
GO
INSERT [dbo].[StockByLocation] ([Code], [LocationCode], [ProductCode], [Attributes], [Stock], [CurrentValue], [SKU], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ProductSKU], [Variant], [BranchCode]) VALUES (6, 1, 1, NULL, CAST(22.000 AS Numeric(18, 3)), CAST(4400.00 AS Numeric(18, 2)), NULL, NULL, CAST(N'2025-02-02T19:54:27.000' AS DateTime), NULL, NULL, -1, NULL, NULL)
GO
INSERT [dbo].[StockByLocation] ([Code], [LocationCode], [ProductCode], [Attributes], [Stock], [CurrentValue], [SKU], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ProductSKU], [Variant], [BranchCode]) VALUES (7, 2, 1, NULL, CAST(6.000 AS Numeric(18, 3)), CAST(2200.00 AS Numeric(18, 2)), NULL, NULL, CAST(N'2025-02-02T19:54:29.000' AS DateTime), NULL, NULL, -1, NULL, NULL)
GO
INSERT [dbo].[StockByLocation] ([Code], [LocationCode], [ProductCode], [Attributes], [Stock], [CurrentValue], [SKU], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ProductSKU], [Variant], [BranchCode]) VALUES (8, 2, 2, NULL, CAST(5.000 AS Numeric(18, 3)), CAST(0.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, -1, NULL, NULL)
GO
INSERT [dbo].[StockByLocation] ([Code], [LocationCode], [ProductCode], [Attributes], [Stock], [CurrentValue], [SKU], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ProductSKU], [Variant], [BranchCode]) VALUES (9, 1, -1, NULL, CAST(-3.000 AS Numeric(18, 3)), CAST(0.00 AS Numeric(18, 2)), NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[StockByLocation] OFF
GO
SET IDENTITY_INSERT [dbo].[StockTransferOrder] ON 
GO
INSERT [dbo].[StockTransferOrder] ([TranID], [TranDate], [FromLocationCode], [ToLocationCode], [SystemDate], [UserName], [ReceivedBy], [Status], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode], [ReferenceNo]) VALUES (1, CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'1', N'2', CAST(N'2025-02-02T18:50:00.000' AS DateTime), N'admin', NULL, N'Draft', NULL, NULL, NULL, NULL, NULL, N'')
GO
INSERT [dbo].[StockTransferOrder] ([TranID], [TranDate], [FromLocationCode], [ToLocationCode], [SystemDate], [UserName], [ReceivedBy], [Status], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode], [ReferenceNo]) VALUES (2, CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'1', N'2', CAST(N'2025-02-02T18:53:07.000' AS DateTime), N'admin', N'admin', N'Completed', NULL, CAST(N'2025-02-02T00:00:00.000' AS DateTime), NULL, NULL, NULL, N'')
GO
INSERT [dbo].[StockTransferOrder] ([TranID], [TranDate], [FromLocationCode], [ToLocationCode], [SystemDate], [UserName], [ReceivedBy], [Status], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode], [ReferenceNo]) VALUES (3, CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'1', N'2', CAST(N'2025-02-02T19:28:44.000' AS DateTime), N'admin', N'admin', N'Completed', NULL, CAST(N'2025-02-02T00:00:00.000' AS DateTime), NULL, NULL, NULL, N'')
GO
SET IDENTITY_INSERT [dbo].[StockTransferOrder] OFF
GO
SET IDENTITY_INSERT [dbo].[StockTransferOrderDetail] ON 
GO
INSERT [dbo].[StockTransferOrderDetail] ([Code], [TranID], [RowID], [ProductCode], [Attributes], [QuantityTransferred], [ReceivedQuantity], [Note], [IsSync], [FromLocation], [ToLocation], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode], [ProductBarcode]) VALUES (1, CAST(1 AS Numeric(18, 0)), 1, 1, N'-1', CAST(10.000 AS Numeric(18, 3)), NULL, NULL, NULL, CAST(1 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), NULL, NULL, NULL, NULL, N'63899662329')
GO
INSERT [dbo].[StockTransferOrderDetail] ([Code], [TranID], [RowID], [ProductCode], [Attributes], [QuantityTransferred], [ReceivedQuantity], [Note], [IsSync], [FromLocation], [ToLocation], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode], [ProductBarcode]) VALUES (2, CAST(2 AS Numeric(18, 0)), 1, 1, N'-1', CAST(6.000 AS Numeric(18, 3)), CAST(5.000 AS Numeric(18, 3)), N'', 3, CAST(1 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), NULL, NULL, NULL, N'63899662329')
GO
INSERT [dbo].[StockTransferOrderDetail] ([Code], [TranID], [RowID], [ProductCode], [Attributes], [QuantityTransferred], [ReceivedQuantity], [Note], [IsSync], [FromLocation], [ToLocation], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode], [ProductBarcode]) VALUES (3, CAST(2 AS Numeric(18, 0)), 2, 2, N'-1', CAST(5.000 AS Numeric(18, 3)), CAST(5.000 AS Numeric(18, 3)), N'', 3, CAST(1 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), NULL, NULL, NULL, N'79933767151')
GO
INSERT [dbo].[StockTransferOrderDetail] ([Code], [TranID], [RowID], [ProductCode], [Attributes], [QuantityTransferred], [ReceivedQuantity], [Note], [IsSync], [FromLocation], [ToLocation], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode], [ProductBarcode]) VALUES (4, CAST(3 AS Numeric(18, 0)), 1, 1, N'-1', CAST(1.000 AS Numeric(18, 3)), CAST(1.000 AS Numeric(18, 3)), N'', 3, CAST(1 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(N'2025-02-02T00:00:00.000' AS DateTime), NULL, NULL, NULL, N'63899662329')
GO
INSERT [dbo].[StockTransferOrderDetail] ([Code], [TranID], [RowID], [ProductCode], [Attributes], [QuantityTransferred], [ReceivedQuantity], [Note], [IsSync], [FromLocation], [ToLocation], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode], [ProductBarcode]) VALUES (5, CAST(3 AS Numeric(18, 0)), 2, 2, N'-1', CAST(1.000 AS Numeric(18, 3)), NULL, NULL, NULL, CAST(1 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), NULL, NULL, NULL, NULL, N'79933767151')
GO
SET IDENTITY_INSERT [dbo].[StockTransferOrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[StockTransfers] ON 
GO
INSERT [dbo].[StockTransfers] ([Code], [ID], [RowID], [TranDate], [FromLocationCode], [ToLocationCode], [ProductCode], [Attributes], [QuantityTransferred], [SystemDate], [UserName], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate]) VALUES (5, 1, 1, CAST(N'2025-02-02T18:06:03.000' AS DateTime), N'Purchase Bill', N'1', 2, N'-1', CAST(20.000 AS Numeric(18, 3)), CAST(N'2025-02-02T18:27:29.000' AS DateTime), N'admin', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL)
GO
INSERT [dbo].[StockTransfers] ([Code], [ID], [RowID], [TranDate], [FromLocationCode], [ToLocationCode], [ProductCode], [Attributes], [QuantityTransferred], [SystemDate], [UserName], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate]) VALUES (6, 1, 2, CAST(N'2025-02-02T18:06:03.000' AS DateTime), N'Purchase Bill', N'1', 1, N'-1', CAST(50.000 AS Numeric(18, 3)), CAST(N'2025-02-02T18:27:29.000' AS DateTime), N'admin', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL)
GO
INSERT [dbo].[StockTransfers] ([Code], [ID], [RowID], [TranDate], [FromLocationCode], [ToLocationCode], [ProductCode], [Attributes], [QuantityTransferred], [SystemDate], [UserName], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate]) VALUES (7, 2, 1, CAST(N'2025-02-02T18:30:04.000' AS DateTime), N'Purchase Return', N'1', 1, N'-1', CAST(20.000 AS Numeric(18, 3)), CAST(N'2025-02-02T18:30:15.000' AS DateTime), N'admin', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL)
GO
INSERT [dbo].[StockTransfers] ([Code], [ID], [RowID], [TranDate], [FromLocationCode], [ToLocationCode], [ProductCode], [Attributes], [QuantityTransferred], [SystemDate], [UserName], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate]) VALUES (8, 2, 1, CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'TransferIn', N'2', 1, N'-1', CAST(5.000 AS Numeric(18, 3)), CAST(N'2025-02-02T18:53:36.000' AS DateTime), N'admin', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL)
GO
INSERT [dbo].[StockTransfers] ([Code], [ID], [RowID], [TranDate], [FromLocationCode], [ToLocationCode], [ProductCode], [Attributes], [QuantityTransferred], [SystemDate], [UserName], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate]) VALUES (9, 2, 2, CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'TransferOut', N'1', 1, N'-1', CAST(5.000 AS Numeric(18, 3)), CAST(N'2025-02-02T18:53:36.000' AS DateTime), N'admin', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL)
GO
INSERT [dbo].[StockTransfers] ([Code], [ID], [RowID], [TranDate], [FromLocationCode], [ToLocationCode], [ProductCode], [Attributes], [QuantityTransferred], [SystemDate], [UserName], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate]) VALUES (10, 2, 2, CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'TransferIn', N'2', 2, N'-1', CAST(5.000 AS Numeric(18, 3)), CAST(N'2025-02-02T18:53:36.000' AS DateTime), N'admin', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL)
GO
INSERT [dbo].[StockTransfers] ([Code], [ID], [RowID], [TranDate], [FromLocationCode], [ToLocationCode], [ProductCode], [Attributes], [QuantityTransferred], [SystemDate], [UserName], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate]) VALUES (11, 2, 3, CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'TransferOut', N'1', 2, N'-1', CAST(5.000 AS Numeric(18, 3)), CAST(N'2025-02-02T18:53:36.000' AS DateTime), N'admin', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL)
GO
INSERT [dbo].[StockTransfers] ([Code], [ID], [RowID], [TranDate], [FromLocationCode], [ToLocationCode], [ProductCode], [Attributes], [QuantityTransferred], [SystemDate], [UserName], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate]) VALUES (12, 3, 1, CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'TransferIn', N'2', 1, N'-1', CAST(1.000 AS Numeric(18, 3)), CAST(N'2025-02-02T19:54:20.000' AS DateTime), N'admin', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL)
GO
INSERT [dbo].[StockTransfers] ([Code], [ID], [RowID], [TranDate], [FromLocationCode], [ToLocationCode], [ProductCode], [Attributes], [QuantityTransferred], [SystemDate], [UserName], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate]) VALUES (13, 3, 2, CAST(N'2025-02-02T00:00:00.000' AS DateTime), N'TransferOut', N'1', 1, N'-1', CAST(1.000 AS Numeric(18, 3)), CAST(N'2025-02-02T19:54:20.000' AS DateTime), N'admin', NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[StockTransfers] OFF
GO
SET IDENTITY_INSERT [dbo].[Suppliers] ON 
GO
INSERT [dbo].[Suppliers] ([Code], [Name], [ArabicName], [ContactPerson1], [ContactPerson2], [Mobile1], [Mobile2], [VAT], [CRNO], [Address], [City], [Country], [Website], [Email], [PaymentTerms], [DeliveryTerms], [Remarks], [Balance], [IsActive], [LastModifiedDate], [CompanyCode], [PayableAccountCode], [TermsCode], [C1], [C2], [C3], [C4], [IsSync], [ContactPerson], [Telephone], [Fax], [Mobile], [TRNNo], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (1, N'Supplier', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', CAST(9500.0000 AS Numeric(18, 4)), 1, CAST(N'2025-02-02T18:37:13.000' AS DateTime), 1, N'002-004-001', NULL, N'', N'', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Suppliers] OFF
GO
SET IDENTITY_INSERT [dbo].[TaxRates] ON 
GO
INSERT [dbo].[TaxRates] ([TaxId], [Name], [Code], [Rate], [Type], [_Default], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (1, N'NoTax', N'', N'0.0', N'Percentage', 0, 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL)
GO
INSERT [dbo].[TaxRates] ([TaxId], [Name], [Code], [Rate], [Type], [_Default], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (2, N'VAT 5%', N'2', N'5.0', N'Percentage', 0, 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL)
GO
INSERT [dbo].[TaxRates] ([TaxId], [Name], [Code], [Rate], [Type], [_Default], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (3, N'GST 12%', N'3', N'12', N'Percentage', 1, 0, CAST(N'2020-08-28T13:40:01.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL)
GO
INSERT [dbo].[TaxRates] ([TaxId], [Name], [Code], [Rate], [Type], [_Default], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (4, N'20% Tax', N'4', N'20', N'Percentage', 0, 0, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL, CAST(N'2020-07-08T14:09:08.000' AS DateTime), NULL)
GO
INSERT [dbo].[TaxRates] ([TaxId], [Name], [Code], [Rate], [Type], [_Default], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (5, N'FBR POS FEE', N'5', N'1', N'Fixed', 0, NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[TaxRates] OFF
GO
SET IDENTITY_INSERT [dbo].[Units] ON 
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (10, N'PCS', NULL, NULL, NULL, NULL, N'pcs', -1, CAST(0.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (15, N'Gram', NULL, NULL, NULL, NULL, N'Gm', -1, CAST(0.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (16, N'Kilo Gram', NULL, NULL, NULL, NULL, N'KG', -1, CAST(0.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (17, N'BORI 50kg', NULL, CAST(N'2024-09-11T04:40:20.000' AS DateTime), NULL, NULL, N'Br 50KG', 16, CAST(50.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (18, N'Carton 16kg', NULL, CAST(N'2024-08-12T21:13:59.000' AS DateTime), NULL, NULL, N'CTN 16Kg', 16, CAST(16.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (19, N'1000 GRAM', NULL, CAST(N'2024-08-12T22:27:03.000' AS DateTime), NULL, NULL, N'1000G', 15, CAST(1000.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (20, N'500 GRAM', NULL, NULL, NULL, NULL, N'500G', 15, CAST(500.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (21, N'250 GRAM', NULL, NULL, NULL, NULL, N'250G', 15, CAST(250.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (22, N'TIN 14 KILO', NULL, CAST(N'2024-08-13T03:33:13.000' AS DateTime), NULL, NULL, N'TIN 14Kg', 15, CAST(14000.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (25, N'PACK 1X16', NULL, NULL, NULL, NULL, N'PCK 1X16', 10, CAST(16.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (26, N'PACK 1X8', NULL, NULL, NULL, NULL, N'PCK 1X8', 10, CAST(8.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (27, N'CARTON 1X144', NULL, NULL, NULL, NULL, N'CTN 1X144', 10, CAST(144.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (28, N'CARTON 1X288', NULL, NULL, NULL, NULL, N'CTN 1X288', 10, CAST(288.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (29, N'CARTON 1X432', NULL, CAST(N'2024-08-15T01:34:26.000' AS DateTime), NULL, NULL, N'CTN 1X432', 10, CAST(432.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (30, N'PACK 1X24', NULL, NULL, NULL, NULL, N'PCK 1X24', 10, CAST(24.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (31, N'CARTON 1X180', NULL, NULL, NULL, NULL, N'CTN 1X180', 10, CAST(180.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (32, N'CARTON 1X240', NULL, NULL, NULL, NULL, N'CTN 1X240', 10, CAST(240.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (33, N'CARTON 1X540', NULL, NULL, NULL, NULL, N'CTN 1X540', 10, CAST(540.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (34, N'PACK 1X10', NULL, NULL, NULL, NULL, N'PCK 1X10', 10, CAST(10.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (35, N'PACK 1X30', NULL, NULL, NULL, NULL, N'PCK 1X30', 10, CAST(30.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (36, N'PACK 1X6', NULL, NULL, NULL, NULL, N'PCK 1X6', 10, CAST(6.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (37, N'PACK 1X100', NULL, NULL, NULL, NULL, N'PCK 1X100', 10, CAST(100.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (38, N'PACK 1X50', NULL, CAST(N'2024-08-27T01:15:00.000' AS DateTime), NULL, NULL, N'PCK 1X50', 10, CAST(50.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (39, N'PACK 1X12', NULL, NULL, NULL, NULL, N'PCK 1X12', 10, CAST(12.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (40, N'PACK 1X36', NULL, NULL, NULL, NULL, N'PCK 1X36', 10, CAST(36.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (41, N'PACK 1X48', NULL, NULL, NULL, NULL, N'PCK 1X48', 10, CAST(48.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (42, N'PACK 1X15', NULL, NULL, NULL, NULL, N'PCK 1X15', 10, CAST(15.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (43, N'PACK 1X70', NULL, NULL, NULL, NULL, N'PCK 1X70', 10, CAST(70.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (44, N'PACK 1X72', NULL, NULL, NULL, NULL, N'PCK 1X72', 10, CAST(72.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (45, N'PACK 1X20', NULL, NULL, NULL, NULL, N'PCK1X20', 10, CAST(20.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (46, N'CARTON 1X216', NULL, NULL, NULL, NULL, N'CTN 1X216', 10, CAST(216.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (47, N'PACK 1X60', NULL, NULL, NULL, NULL, N'PCK 1X60', 10, CAST(60.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (48, N'BORI 50KG', NULL, CAST(N'2024-11-19T20:31:18.000' AS DateTime), NULL, NULL, N'BR 50KG', 15, CAST(50000.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (49, N'BORI 25KG', NULL, NULL, NULL, NULL, N'BR 25KG', 16, CAST(25.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (50, N'250 GRAM', NULL, NULL, NULL, NULL, N'250G', 15, CAST(250.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (51, N'125 GRAM', NULL, NULL, NULL, NULL, N'125G', 15, CAST(125.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (52, N'BORI 25000G', NULL, NULL, NULL, NULL, N'BR 25KG', 15, CAST(25000.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (53, N'BORI 15KG', NULL, NULL, NULL, NULL, N'BR 15KG', 16, CAST(15.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (54, N'CARTON 1X384', NULL, NULL, NULL, NULL, N'CTN 1X384', 10, CAST(384.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (55, N'CARTON 1X32', NULL, NULL, NULL, NULL, N'CTN 1X32', 10, CAST(32.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (56, N'CARTON 1X64', NULL, NULL, NULL, NULL, N'CTN 1X64', 10, CAST(64.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (57, N'25 GRAM', NULL, NULL, NULL, NULL, N'25G', 15, CAST(25.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (58, N'50 GRAM', NULL, NULL, NULL, NULL, N'50G', 15, CAST(50.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (59, N'100 GRAM', NULL, NULL, NULL, NULL, N'100G', 15, CAST(100.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (60, N'CARTON 1X5', NULL, NULL, NULL, NULL, N'CTN 1X5', 10, CAST(5.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (61, N'PACK 1X40', NULL, NULL, NULL, NULL, N'PCK 1X40', 10, CAST(40.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (62, N'CARTON 1X96', NULL, NULL, NULL, NULL, N'CTN 1X96', 10, CAST(96.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (63, N'CARTON 1X18', NULL, NULL, NULL, NULL, N'CTN 1X18', 10, CAST(18.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (64, N'CARTON 1X360', NULL, NULL, NULL, NULL, N'CTN 1X360', 10, CAST(360.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (65, N'CTN 1X500', NULL, NULL, NULL, NULL, N'CTN 1X500', 10, CAST(500.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (66, N'40KG', NULL, NULL, NULL, NULL, N'40KG', 15, CAST(40000.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (67, N'PACK 1X32', NULL, NULL, NULL, NULL, N'PCK 1X32', 10, CAST(32.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (68, N'GATTA 1X1000', NULL, NULL, NULL, NULL, N'CTN 1X1000', 10, CAST(1000.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (69, N'PACK 1X4', NULL, CAST(N'2024-12-06T15:06:11.000' AS DateTime), NULL, NULL, N'PCK 1X4', 10, CAST(4.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (70, N'PACK 1X768', NULL, NULL, NULL, NULL, N'PCK 1X768', 10, CAST(768.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (71, N'BORI 30KG', NULL, NULL, NULL, NULL, N'BR30KG', 15, CAST(30000.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (72, N'CRTN 1X320', NULL, CAST(N'2024-12-31T12:55:40.000' AS DateTime), NULL, NULL, N'CTN1X320', 10, CAST(320.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (73, N'PACK  1X42', NULL, NULL, NULL, NULL, N'PCK 1X42', 10, CAST(42.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (74, N'PACK 1X84', NULL, NULL, NULL, NULL, N'PCK 1X84', 10, CAST(84.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (75, N'CARTON 1X120', NULL, NULL, NULL, NULL, N'CTN 1X120', 10, CAST(120.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (76, N'CRTN 1X336', NULL, NULL, NULL, NULL, N'CTN 1X336', 10, CAST(336.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (77, N'CTN 1X200', NULL, NULL, NULL, NULL, N'CTN 1X200', 10, CAST(200.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (78, N'CTN 1X160', NULL, NULL, NULL, NULL, N'CTN 1X160', 10, CAST(160.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (79, N'CATRON 108', NULL, NULL, NULL, NULL, N'CTN108', 10, CAST(108.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (80, N'CTN 1X480', NULL, NULL, NULL, NULL, N'CTN 1X480', 10, CAST(480.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (81, N'PACK 1X7', NULL, NULL, NULL, NULL, N'PCK 1X7', 10, CAST(7.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (82, N'CTN 1X576', NULL, NULL, NULL, NULL, N'CTN 1X576', 10, CAST(576.0000 AS Decimal(18, 4)), NULL)
GO
INSERT [dbo].[Units] ([UID], [Unit], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [ShortName], [BaseUnitId], [BaseUnitMultiplier], [BranchCode]) VALUES (83, N'Litrer', NULL, NULL, NULL, NULL, N'ltr', -1, CAST(0.0000 AS Decimal(18, 4)), NULL)
GO
SET IDENTITY_INSERT [dbo].[Units] OFF
GO
SET IDENTITY_INSERT [dbo].[VariantGroups] ON 
GO
INSERT [dbo].[VariantGroups] ([Code], [Name], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (1, N'COLOR', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[VariantGroups] ([Code], [Name], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (2, N'SIZE', NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[VariantGroups] OFF
GO
SET IDENTITY_INSERT [dbo].[Variants] ON 
GO
INSERT [dbo].[Variants] ([Code], [Name], [GroupCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (1, N'GREEN', CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Variants] ([Code], [Name], [GroupCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (2, N'GREY', CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Variants] ([Code], [Name], [GroupCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (3, N'SMALL', CAST(2 AS Numeric(18, 0)), NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Variants] ([Code], [Name], [GroupCode], [IsSync], [LastModifiedDate], [IsDeleted], [LastSyncDate], [BranchCode]) VALUES (4, N'LARGE', CAST(2 AS Numeric(18, 0)), NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Variants] OFF
GO
SET IDENTITY_INSERT [dbo].[WholePayments] ON 
GO
INSERT [dbo].[WholePayments] ([ID], [Date], [SaleID], [ReturnID], [PurchaseID], [ReferenceNo], [TransactionID], [PaidBy], [ChequeNo], [CCNo], [CCHolder], [CCMonth], [CCYear], [CCType], [Amount], [Currency], [CreatedBy], [Type], [POSPaid], [POSBalance], [POSTotal], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [CardCharges]) VALUES (1, CAST(N'2025-02-02T18:36:11.000' AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(-1 AS Numeric(18, 0)), CAST(-1 AS Numeric(18, 0)), NULL, NULL, N'Cash', N'', N'', N'', N'', N'', N'', CAST(-1000 AS Numeric(18, 0)), NULL, CAST(4 AS Numeric(18, 0)), N'Supplier Payment Voucher', CAST(-1000.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[WholePayments] ([ID], [Date], [SaleID], [ReturnID], [PurchaseID], [ReferenceNo], [TransactionID], [PaidBy], [ChequeNo], [CCNo], [CCHolder], [CCMonth], [CCYear], [CCType], [Amount], [Currency], [CreatedBy], [Type], [POSPaid], [POSBalance], [POSTotal], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [CardCharges]) VALUES (2, CAST(N'2025-02-02T18:36:24.000' AS DateTime), CAST(2 AS Numeric(18, 0)), CAST(-1 AS Numeric(18, 0)), CAST(-1 AS Numeric(18, 0)), NULL, NULL, N'Cash', N'', N'', N'', N'', N'', N'', CAST(-1000 AS Numeric(18, 0)), NULL, CAST(4 AS Numeric(18, 0)), N'Supplier Payment Voucher', CAST(-1000.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), NULL, CAST(2 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[WholePayments] ([ID], [Date], [SaleID], [ReturnID], [PurchaseID], [ReferenceNo], [TransactionID], [PaidBy], [ChequeNo], [CCNo], [CCHolder], [CCMonth], [CCYear], [CCType], [Amount], [Currency], [CreatedBy], [Type], [POSPaid], [POSBalance], [POSTotal], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [CardCharges]) VALUES (3, CAST(N'2025-02-02T18:37:13.000' AS DateTime), CAST(3 AS Numeric(18, 0)), CAST(-1 AS Numeric(18, 0)), CAST(-1 AS Numeric(18, 0)), NULL, NULL, N'Cash', N'', N'', N'', N'', N'', N'', CAST(-500 AS Numeric(18, 0)), NULL, CAST(4 AS Numeric(18, 0)), N'Supplier Payment Voucher', CAST(-500.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[WholePayments] ([ID], [Date], [SaleID], [ReturnID], [PurchaseID], [ReferenceNo], [TransactionID], [PaidBy], [ChequeNo], [CCNo], [CCHolder], [CCMonth], [CCYear], [CCType], [Amount], [Currency], [CreatedBy], [Type], [POSPaid], [POSBalance], [POSTotal], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [CardCharges]) VALUES (5, CAST(N'2025-02-02T19:02:55.000' AS DateTime), CAST(1 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), NULL, NULL, N'Cash', N'', N'', N'', N'', N'', N'', CAST(570 AS Numeric(18, 0)), NULL, CAST(4 AS Numeric(18, 0)), N'Sale Invoice', CAST(570.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(570.0000 AS Numeric(18, 4)), NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[WholePayments] ([ID], [Date], [SaleID], [ReturnID], [PurchaseID], [ReferenceNo], [TransactionID], [PaidBy], [ChequeNo], [CCNo], [CCHolder], [CCMonth], [CCYear], [CCType], [Amount], [Currency], [CreatedBy], [Type], [POSPaid], [POSBalance], [POSTotal], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [CardCharges]) VALUES (6, CAST(N'2025-02-02T19:12:15.000' AS DateTime), CAST(2 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), NULL, NULL, N'Cash', N'', N'', N'', N'', N'', N'', CAST(570 AS Numeric(18, 0)), NULL, CAST(4 AS Numeric(18, 0)), N'Sale Invoice', CAST(570.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(570.0000 AS Numeric(18, 4)), NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[WholePayments] ([ID], [Date], [SaleID], [ReturnID], [PurchaseID], [ReferenceNo], [TransactionID], [PaidBy], [ChequeNo], [CCNo], [CCHolder], [CCMonth], [CCYear], [CCType], [Amount], [Currency], [CreatedBy], [Type], [POSPaid], [POSBalance], [POSTotal], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [CardCharges]) VALUES (7, CAST(N'2025-02-02T19:12:53.000' AS DateTime), CAST(3 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), NULL, NULL, N'Cash', N'', N'', N'', N'', N'', N'', CAST(-570 AS Numeric(18, 0)), NULL, CAST(4 AS Numeric(18, 0)), N'Sale Invoice', CAST(-570.0000 AS Numeric(18, 4)), CAST(1140.0000 AS Numeric(18, 4)), CAST(-570.0000 AS Numeric(18, 4)), NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[WholePayments] ([ID], [Date], [SaleID], [ReturnID], [PurchaseID], [ReferenceNo], [TransactionID], [PaidBy], [ChequeNo], [CCNo], [CCHolder], [CCMonth], [CCYear], [CCType], [Amount], [Currency], [CreatedBy], [Type], [POSPaid], [POSBalance], [POSTotal], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [CardCharges]) VALUES (8, CAST(N'2025-02-02T19:15:30.000' AS DateTime), CAST(4 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), NULL, NULL, N'Cash', N'', N'', N'', N'', N'', N'', CAST(285 AS Numeric(18, 0)), NULL, CAST(4 AS Numeric(18, 0)), N'Sale Invoice', CAST(0.0000 AS Numeric(18, 4)), CAST(-285.0000 AS Numeric(18, 4)), CAST(285.0000 AS Numeric(18, 4)), NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[WholePayments] ([ID], [Date], [SaleID], [ReturnID], [PurchaseID], [ReferenceNo], [TransactionID], [PaidBy], [ChequeNo], [CCNo], [CCHolder], [CCMonth], [CCYear], [CCType], [Amount], [Currency], [CreatedBy], [Type], [POSPaid], [POSBalance], [POSTotal], [IsSync], [BranchCode], [LastModifiedDate], [IsDeleted], [LastSyncDate], [CardCharges]) VALUES (9, CAST(N'2025-02-02T19:15:56.000' AS DateTime), CAST(5 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), NULL, NULL, N'Cash', N'', N'', N'', N'', N'', N'', CAST(6475 AS Numeric(18, 0)), NULL, CAST(4 AS Numeric(18, 0)), N'Sale Invoice', CAST(6475.0000 AS Numeric(18, 4)), CAST(0.0000 AS Numeric(18, 4)), CAST(6475.0000 AS Numeric(18, 4)), NULL, CAST(1 AS Numeric(18, 0)), NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[WholePayments] OFF
GO
ALTER TABLE [dbo].[Categories] ADD  CONSTRAINT [DF_Categories_MyShopsSync]  DEFAULT ((0)) FOR [MyShopsSync]
GO
ALTER TABLE [dbo].[ProductsSKU] ADD  CONSTRAINT [DF__ProductsS__Stock__54EB90A0]  DEFAULT ((0)) FOR [Stock]
GO
ALTER TABLE [dbo].[ProductsSKU] ADD  CONSTRAINT [DF__ProductsS__Bonus__55DFB4D9]  DEFAULT ((0)) FOR [Bonus]
GO
ALTER TABLE [dbo].[ProductsSKU] ADD  CONSTRAINT [DF__ProductsS__Curre__56D3D912]  DEFAULT ((0)) FOR [CurrentValue]
GO
