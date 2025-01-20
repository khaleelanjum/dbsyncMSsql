USE [RetailProExtended]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[Code] [int] IDENTITY(2,1) NOT NULL,
	[AccountName] [nvarchar](500) NULL,
	[AccountValue] [numeric](18, 2) NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccountTypes]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountTypes](
	[Code] [int] IDENTITY(2,1) NOT NULL,
	[AccountType] [nvarchar](200) NULL,
	[IsDeleted] [tinyint] NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_AccountTypes] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Areas]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Areas](
	[ID] [int] NOT NULL,
	[Area] [nvarchar](100) NULL,
	[CreatedOn] [datetime] NULL,
	[IsSync] [int] NULL,
	[BranchCode] [int] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
 CONSTRAINT [Areas_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Attendance]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendance](
	[Code] [bigint] IDENTITY(2,1) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AttendanceDetail]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttendanceDetail](
	[Code] [int] IDENTITY(5,1) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BankAccounts]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Banks]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BarcodeDesign]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BarcodeDesign](
	[Code] [numeric](18, 0) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Billers]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Billers](
	[ID] [int] NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillOfMaterial_Input]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillOfMaterial_Master]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillOfMaterial_Output]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BinaryOptions]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinaryOptions](
	[Code] [int] IDENTITY(2,1) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CancelledItems]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Card]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Card](
	[ID] [numeric](10, 0) NOT NULL,
	[Code] [nvarchar](200) NULL,
	[Name] [nvarchar](400) NULL,
	[Balance] [numeric](18, 2) NULL,
	[BalanceDate] [datetime] NULL,
	[CardType] [nvarchar](200) NULL,
	[Inactive] [bit] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_Card] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Category] [nvarchar](500) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories_Medicines]    Script Date: 1/20/2025 1:11:16 PM ******/
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
/****** Object:  Table [dbo].[Categories_SuperMarket]    Script Date: 1/20/2025 1:11:16 PM ******/
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
/****** Object:  Table [dbo].[Category]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Auto] [int] IDENTITY(1,1) NOT NULL,
	[CatCode] [nvarchar](50) NOT NULL,
	[Authority] [nvarchar](50) NULL,
	[CatName] [nvarchar](50) NULL,
	[CatUName] [nvarchar](50) NULL,
	[CatDisPer] [decimal](18, 4) NULL,
	[CatTaxPer] [decimal](18, 4) NULL,
	[CatPicture] [image] NULL,
	[CP1] [nvarchar](50) NULL,
	[CP2] [nvarchar](50) NULL,
	[CP3] [nvarchar](50) NULL,
	[CP4] [nvarchar](50) NULL,
	[CP5] [nvarchar](50) NULL,
	[CP6] [nvarchar](50) NULL,
	[CP7] [nvarchar](50) NULL,
	[CP8] [nvarchar](50) NULL,
	[CP9] [nvarchar](50) NULL,
	[CP10] [nvarchar](50) NULL,
	[CP11] [nvarchar](50) NULL,
	[CP12] [nvarchar](50) NULL,
	[CP13] [nvarchar](50) NULL,
	[CP14] [nvarchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CatCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoryList]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryList](
	[Category] [nvarchar](2040) NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChartOfAccounts]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChartOfAccounts](
	[Code] [int] IDENTITY(357,1) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChartOfAccounts_JellyERP]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChartOfAccounts_MultiTechERP]    Script Date: 1/20/2025 1:11:16 PM ******/
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
/****** Object:  Table [dbo].[ChartOfAccounts_Retaila]    Script Date: 1/20/2025 1:11:16 PM ******/
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
/****** Object:  Table [dbo].[Colors]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colors](
	[Code] [int] IDENTITY(5,1) NOT NULL,
	[Color] [nvarchar](300) NULL,
	[IsDeleted] [tinyint] NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_Colors] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ComboItems]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Companies]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Companies](
	[Code] [int] IDENTITY(10,1) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Companies_Medicines]    Script Date: 1/20/2025 1:11:16 PM ******/
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
/****** Object:  Table [dbo].[CompaniesManager]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[Code] [int] IDENTITY(5,1) NOT NULL,
	[Country] [nvarchar](300) NULL,
	[IsDeleted] [tinyint] NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 1/20/2025 1:11:16 PM ******/
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
/****** Object:  Table [dbo].[Currency]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerAddress]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerArea]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerGroups]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerGroups](
	[CGID] [numeric](18, 0) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerPaymentHistory]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Code] [bigint] NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DailyExpenses]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DailyExpenses](
	[ID] [bigint] NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DailyExpenseTypes]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DailyExpenseTypes](
	[ID] [int] NOT NULL,
	[Category] [nvarchar](500) NULL,
	[IsDeleted] [tinyint] NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [DailyExpenseTypes_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeletedItems]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeletedItems](
	[Code] [int] IDENTITY(2,1) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deliveries]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeliveryBoyPayment]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeliveryBoyPayment](
	[ID] [bigint] NULL,
	[PaymentMethod] [nvarchar](100) NULL,
	[DeliveryBoy] [numeric](18, 0) NULL,
	[ChequeNo] [nvarchar](100) NULL,
	[BankName] [nvarchar](100) NULL,
	[BankAccountNumber] [nvarchar](100) NULL,
	[BankAccountName] [nvarchar](100) NULL,
	[ChequeDate] [nvarchar](100) NULL,
	[CreditOrDebitCardNo] [nvarchar](100) NULL,
	[CreditOrDebitCardType] [nvarchar](100) NULL,
	[CardExpiryDate] [nvarchar](100) NULL,
	[Amount] [numeric](18, 3) NULL,
	[Note] [nvarchar](2000) NULL,
	[IsSync] [int] NULL,
	[BranchCode] [int] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeliveryPlates]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeliveryPlates](
	[ID] [numeric](18, 0) NOT NULL,
	[UpdatedAt] [datetime] NULL,
	[SaleID] [numeric](18, 0) NULL,
	[CustomerCode] [numeric](18, 0) NULL,
	[Plates] [numeric](18, 0) NULL,
	[Advance] [float] NULL,
	[Status] [int] NULL,
	[PlateSubmitted] [float] NULL,
	[Paid] [float] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedBy] [int] NULL,
	[IsSync] [int] NULL,
	[BranchCode] [int] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
 CONSTRAINT [DeliveryPlates_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeliveryStatus]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeliveryStatus](
	[ID] [bigint] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[IsSync] [int] NULL,
	[BranchCode] [int] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
 CONSTRAINT [DeliveryStatus_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[Code] [int] IDENTITY(2,1) NOT NULL,
	[Department] [nvarchar](150) NULL,
	[IsDeleted] [tinyint] NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Designation]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Designation](
	[Code] [numeric](18, 0) NOT NULL,
	[Name] [nvarchar](1000) NULL,
	[IsDeleted] [tinyint] NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [Designation_Code] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Designations]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Designations](
	[ID] [int] NOT NULL,
	[Designation] [nvarchar](500) NOT NULL,
	[IsDeleted] [tinyint] NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [Designations_Designation] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiscountGiven]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiscountTaken]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmailDetail]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailDetail](
	[ID] [int] IDENTITY(4,1) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeByLocation]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeByLocation](
	[Code] [int] IDENTITY(2,1) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeExpenseTypes]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeExpenseTypes](
	[ID] [bigint] IDENTITY(7,1) NOT NULL,
	[Category] [nvarchar](500) NULL,
	[IsDeleted] [tinyint] NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [EmployeeExpenseTypes_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeManager]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeManager](
	[EmployeeCode] [bigint] NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeePayments]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeePayments](
	[ID] [bigint] NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeRemarks]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeRemarks](
	[Code] [bigint] IDENTITY(8,1) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EMPLOYEES]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPLOYEES](
	[Auto] [int] IDENTITY(1,1) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeSalary]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeSalary](
	[SCode] [numeric](18, 0) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeSalaryDetail]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeSalaryDetail](
	[Code] [bigint] IDENTITY(3,1) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeesByLocation]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeesByLocation](
	[Code] [int] IDENTITY(3,1) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Examination]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExpiryManager]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExpiryManager](
	[Code] [bigint] IDENTITY(2,1) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GeneralExpense]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupRights]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[history_store]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InventoryAdjustment]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InventoryAdjustmentDetail]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InventoryLedger]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventoryLedger](
	[ID] [bigint] IDENTITY(10245,1) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InvoiceImages]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IssueStock]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemAttributes]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemAttributes](
	[Code] [int] IDENTITY(2,1) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemAttributesCurrentStock]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemAttributesCurrentStock](
	[Code] [int] IDENTITY(41,1) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemAttributesInventoryLedger]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemAttributesInventoryLedger](
	[Code] [int] IDENTITY(2,1) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemAttributesStockDetail]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemAttributesStockDetail](
	[Code] [int] IDENTITY(137,1) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemGroup]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Journal]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Journal](
	[EntryID] [numeric](10, 0) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KitchenGroup]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KitchenGroup](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[IsSync] [int] NULL,
	[BranchCode] [int] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
 CONSTRAINT [KitchenGroup_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kitchens]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kitchens](
	[KID] [numeric](18, 0) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[LeftMargin] [float] NULL,
	[TopMargin] [float] NULL,
	[IsSync] [int] NULL,
	[BranchCode] [int] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
 CONSTRAINT [Kitchens_KID] PRIMARY KEY CLUSTERED 
(
	[KID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KOTCancel]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KOTCancel](
	[ID] [bigint] NOT NULL,
	[SuspendID] [numeric](18, 0) NULL,
	[Username] [nvarchar](100) NULL,
	[ProductID] [numeric](18, 0) NULL,
	[ProductName] [nvarchar](200) NULL,
	[Qty] [numeric](18, 0) NULL,
	[CancelBy] [nvarchar](100) NULL,
	[Operation] [nvarchar](100) NULL,
	[CancelDate] [datetime] NULL,
	[IsSync] [int] NULL,
	[BranchCode] [int] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastSyncDate] [datetime] NULL,
 CONSTRAINT [KOTCancel_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Languages]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Languages](
	[ID] [numeric](18, 0) NOT NULL,
	[Name] [nvarchar](800) NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [Languages_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LinkedAccounts]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LinkedAccounts](
	[ID] [numeric](10, 0) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LinkedAccounts_bak]    Script Date: 1/20/2025 1:11:16 PM ******/
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
/****** Object:  Table [dbo].[LinkedAccounts_JellyERP]    Script Date: 1/20/2025 1:11:16 PM ******/
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
/****** Object:  Table [dbo].[LinkedAccounts_MultiTechERP]    Script Date: 1/20/2025 1:11:16 PM ******/
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
/****** Object:  Table [dbo].[LinkedAccounts_Retaila]    Script Date: 1/20/2025 1:11:16 PM ******/
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
/****** Object:  Table [dbo].[LocationsManager]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MixNMatchGroup]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MixNMatchLineGroup]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MixNMatchLineGroupItems]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ModifierGroup]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ModifierImage]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ModifierOrder]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Modifiers]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonthlyExpenses]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonthlyExpenses](
	[ID] [bigint] NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonthlyExpenseTypes]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonthlyExpenseTypes](
	[ID] [numeric](18, 0) NOT NULL,
	[Category] [nvarchar](500) NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[Code] [int] NOT NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [MonthlyExpenseTypes_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OpenItems]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OpenItems](
	[Code] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Options]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Options](
	[Code] [int] IDENTITY(164,1) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OtherContact]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OtherIncome]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OtherIncome](
	[Code] [int] IDENTITY(2,1) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentMethod]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentMethod](
	[Code] [int] IDENTITY(2,1) NOT NULL,
	[Method] [nvarchar](300) NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_PaymentMethod] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentMethodDetail]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentMethods]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentsDetail]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentsDetail](
	[Code] [int] IDENTITY(11,1) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentVoucherNumber]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permissions]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permissions](
	[ID] [numeric](18, 0) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PermissionsGroup]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermissionsGroup](
	[Code] [numeric](18, 0) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[POSRegister]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[POSRegister](
	[ID] [int] NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PriceGroup]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PriceGroup](
	[Code] [int] NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PriceGroupItems]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PriceGroupItems](
	[Code] [int] IDENTITY(3174,1) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductAttributes]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductAttributes](
	[Code] [bigint] IDENTITY(2,1) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductBarcodes]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductBarcodes](
	[Code] [int] IDENTITY(5,1) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImage]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductsIMEI]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductsIMEI](
	[Code] [int] IDENTITY(1,1) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductsIngridiants]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductsManager]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductsManager](
	[Code] [int] NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productsmanager_backup]    Script Date: 1/20/2025 1:11:16 PM ******/
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
/****** Object:  Table [dbo].[ProductsManager_copy1]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductsManager_Medicines]    Script Date: 1/20/2025 1:11:16 PM ******/
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
/****** Object:  Table [dbo].[ProductsManager_SuperMarket]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductsManager_SuperMarket_]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductsModifier]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductsModifier](
	[ID] [int] NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductsModifierGroup]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductsModifierGroup](
	[ID] [int] NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductsPricing]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductsPricing](
	[Code] [int] IDENTITY(1,1) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductsSKU]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductsSKU](
	[Code] [numeric](18, 0) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductsVariants]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductsVariants](
	[Code] [numeric](18, 0) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseBill]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseBill](
	[POID] [numeric](18, 0) NOT NULL,
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
	[POID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseBillDetail]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseBillDetail](
	[Code] [int] IDENTITY(66,1) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseOrder]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseOrderDetail]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchasePayment]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchasePaymentDetail]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseQuotation]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseQuotationDetail]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseReturn]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseReturn](
	[PRID] [numeric](18, 0) NOT NULL,
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
 CONSTRAINT [PurchaseReturn_PRID] PRIMARY KEY CLUSTERED 
(
	[PRID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseReturnDetail]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseReturnDetail](
	[Code] [int] IDENTITY(4,1) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseSettlementViaPurchases]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseSettlementViaPurchasesDetail]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseSettlementViaRefund]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchasesOrder]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchasesOrder](
	[POID] [numeric](18, 0) NOT NULL,
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
	[POID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchasesOrderDetail]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchasesOrderDetail](
	[Code] [int] IDENTITY(27,1) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReceiptVoucherNumber]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecieveStock]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecieveStock](
	[Code] [int] IDENTITY(2,1) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recovery]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recovery](
	[RVID] [bigint] NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecoveryDetail]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecoveryDetail](
	[Code] [int] IDENTITY(18,1) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reports]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SaleModifiers]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SaleOrder]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SaleOrderDetail]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SaleOrderDetail](
	[Code] [int] IDENTITY(2,1) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SaleQuotation]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SaleQuotationDetail]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SaleReceipt]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SaleReceiptDetail]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SaleReturn]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SaleReturn](
	[Code] [int] IDENTITY(5,1) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SaleReturnDetail]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SaleReturnDetail](
	[Code] [int] IDENTITY(7,1) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sales]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales](
	[SaleID] [numeric](18, 0) NOT NULL,
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
 CONSTRAINT [Sales_SaleID] PRIMARY KEY CLUSTERED 
(
	[SaleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesDetail]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesDetail](
	[Code] [int] IDENTITY(1198,1) NOT NULL,
	[SaleID] [numeric](18, 0) NOT NULL,
	[RowID] [int] NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SaleSettlementViaRefund]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SaleSettlementViaSales]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SaleSettlementViaSalesDetail]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesIngridiants]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesOrder]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesOrder](
	[SaleID] [numeric](18, 0) NOT NULL,
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
	[SaleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesOrderDetail]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesOrderDetail](
	[Code] [int] IDENTITY(17,1) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SaleTaxes]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SaleTaxes](
	[Code] [int] IDENTITY(2,1) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SampleFiles]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[scope_info]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[scope_info](
	[sync_scope_name] [nvarchar](100) NOT NULL,
	[sync_scope_schema] [nvarchar](max) NULL,
	[sync_scope_setup] [nvarchar](max) NULL,
	[sync_scope_version] [nvarchar](10) NULL,
	[sync_scope_last_clean_timestamp] [bigint] NULL,
	[sync_scope_properties] [nvarchar](max) NULL,
 CONSTRAINT [PKey_dbo_scope_info] PRIMARY KEY CLUSTERED 
(
	[sync_scope_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[scope_info_client]    Script Date: 1/20/2025 1:11:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[scope_info_client](
	[sync_scope_id] [uniqueidentifier] NOT NULL,
	[sync_scope_name] [nvarchar](100) NOT NULL,
	[sync_scope_hash] [nvarchar](100) NOT NULL,
	[sync_scope_parameters] [nvarchar](max) NULL,
	[scope_last_sync_timestamp] [bigint] NULL,
	[scope_last_server_sync_timestamp] [bigint] NULL,
	[scope_last_sync_duration] [bigint] NULL,
	[scope_last_sync] [datetime] NULL,
	[sync_scope_errors] [nvarchar](max) NULL,
	[sync_scope_properties] [nvarchar](max) NULL,
 CONSTRAINT [PKey_scope_info_client] PRIMARY KEY CLUSTERED 
(
	[sync_scope_id] ASC,
	[sync_scope_name] ASC,
	[sync_scope_hash] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SecurityGroup]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServicesCatigory]    Script Date: 1/20/2025 1:11:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sizes]    Script Date: 1/20/2025 1:11:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sizes](
	[Code] [int] IDENTITY(5,1) NOT NULL,
	[Size] [nvarchar](300) NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_Sizes] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SMSDetail]    Script Date: 1/20/2025 1:11:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SMSDetail](
	[ID] [bigint] IDENTITY(3,1) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SMSTemplets]    Script Date: 1/20/2025 1:11:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SMSTemplets](
	[ID] [int] IDENTITY(11,1) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StockAdjustments]    Script Date: 1/20/2025 1:11:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StockAdjustments](
	[Code] [int] IDENTITY(2,1) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StockByLocation]    Script Date: 1/20/2025 1:11:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StockByLocation](
	[Code] [int] IDENTITY(1093,1) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StockBySaleMan]    Script Date: 1/20/2025 1:11:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StockBySaleMan](
	[Code] [int] IDENTITY(2,1) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StockCount]    Script Date: 1/20/2025 1:11:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StockCount](
	[Code] [numeric](18, 0) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StockCountDetail]    Script Date: 1/20/2025 1:11:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StockCountDetail](
	[Code] [int] IDENTITY(2,1) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StockTransferOrder]    Script Date: 1/20/2025 1:11:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StockTransferOrder](
	[TranID] [numeric](18, 0) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StockTransferOrderDetail]    Script Date: 1/20/2025 1:11:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StockTransferOrderDetail](
	[Code] [int] IDENTITY(2,1) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StockTransfers]    Script Date: 1/20/2025 1:11:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StockTransfers](
	[Code] [int] IDENTITY(1478,1) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubCategories]    Script Date: 1/20/2025 1:11:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubCategories](
	[Code] [numeric](18, 0) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubCategory]    Script Date: 1/20/2025 1:11:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubCategory](
	[Autono] [int] IDENTITY(1,1) NOT NULL,
	[SubCatCode] [nvarchar](50) NOT NULL,
	[SubCatName] [nvarchar](50) NULL,
	[SubCatUName] [nvarchar](50) NULL,
	[CatName] [nvarchar](50) NULL,
	[Authority] [nvarchar](50) NULL,
 CONSTRAINT [PK_SubCategory] PRIMARY KEY CLUSTERED 
(
	[SubCatCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 1/20/2025 1:11:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[Code] [int] NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SupplierStock]    Script Date: 1/20/2025 1:11:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SupplierStock](
	[Code] [int] IDENTITY(2,1) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SuspendDetail]    Script Date: 1/20/2025 1:11:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SuspendDetail](
	[SuspendID] [numeric](18, 0) NOT NULL,
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
/****** Object:  Table [dbo].[Suspends]    Script Date: 1/20/2025 1:11:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suspends](
	[SuspendID] [numeric](18, 0) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SystemPrinters]    Script Date: 1/20/2025 1:11:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemPrinters](
	[Code] [numeric](18, 0) NOT NULL,
	[PrinterName] [nvarchar](200) NULL,
 CONSTRAINT [SystemPrinters_Code] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tables]    Script Date: 1/20/2025 1:11:17 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaxRates]    Script Date: 1/20/2025 1:11:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaxRates](
	[TaxId] [bigint] NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Terms]    Script Date: 1/20/2025 1:11:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Terms](
	[Code] [int] NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Token]    Script Date: 1/20/2025 1:11:17 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transactions]    Script Date: 1/20/2025 1:11:17 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Units]    Script Date: 1/20/2025 1:11:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Units](
	[UID] [bigint] IDENTITY(4,1) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Units_SuperMarket]    Script Date: 1/20/2025 1:11:17 PM ******/
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
/****** Object:  Table [dbo].[UploadedFiles]    Script Date: 1/20/2025 1:11:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UploadedFiles](
	[Code] [bigint] IDENTITY(12,1) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VariantGroups]    Script Date: 1/20/2025 1:11:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VariantGroups](
	[Code] [numeric](18, 0) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[IsSync] [tinyint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsDeleted] [tinyint] NULL,
	[LastSyncDate] [datetime] NULL,
	[BranchCode] [int] NULL,
 CONSTRAINT [PK_VariantGroups] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Variants]    Script Date: 1/20/2025 1:11:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Variants](
	[Code] [numeric](18, 0) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WhatsappMessages]    Script Date: 1/20/2025 1:11:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WhatsappMessages](
	[Code] [int] IDENTITY(1,1) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WholePayments]    Script Date: 1/20/2025 1:11:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WholePayments](
	[ID] [bigint] NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WooProductsManager]    Script Date: 1/20/2025 1:11:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WooProductsManager](
	[Code] [int] IDENTITY(1,1) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WooSalesOrder]    Script Date: 1/20/2025 1:11:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WooSalesOrder](
	[Code] [int] IDENTITY(1,1) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WooSalesOrderDetail]    Script Date: 1/20/2025 1:11:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WooSalesOrderDetail](
	[Code] [int] IDENTITY(1,1) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ProductsSKU] ADD  CONSTRAINT [DF__ProductsS__Stock__54EB90A0]  DEFAULT ((0)) FOR [Stock]
GO
ALTER TABLE [dbo].[ProductsSKU] ADD  CONSTRAINT [DF__ProductsS__Bonus__55DFB4D9]  DEFAULT ((0)) FOR [Bonus]
GO
ALTER TABLE [dbo].[ProductsSKU] ADD  CONSTRAINT [DF__ProductsS__Curre__56D3D912]  DEFAULT ((0)) FOR [CurrentValue]
GO
