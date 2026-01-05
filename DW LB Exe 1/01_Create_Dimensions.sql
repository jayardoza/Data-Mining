CREATE TABLE DimDate(
	DateKey int NOT NULL IDENTITY(1,1),
	CalendarDate datetime NOT NULL,
	CalendarDateChar nvarchar(20) NOT NULL,
	MonthNumber int NOT NULL,
	MonthName nvarchar(50) NOT NULL,
	MonthShortName nvarchar(50) NOT NULL,
	MonthYearName nvarchar(50) NOT NULL,
	MonthYearShortName nvarchar(50) NOT NULL,
	MonthYearSort int NOT NULL,
	Quarter int NOT NULL,
	Year int NOT NULL,
	YearQuarter int NOT NULL,
	DayOfWeek int NOT NULL,
	DayOfWeekName nvarchar(50) NOT NULL,
	DayOfWeekShortName nvarchar(50) NOT NULL,
	DayOfMonth int NOT NULL,
	LastDayOfMonthInd int NOT NULL,
	DayOfYear int NOT NULL
);
GO

CREATE TABLE DimProduct(
	ProductKey int NOT NULL IDENTITY(1,1),
	ProductName varchar(30) NULL,
	ProductDescription varchar(50) NULL,
	SKU varchar(15) NOT NULL,
	Brand varchar(30) NULL,
	Category varchar(15) NULL,
	Department varchar(15) NULL,
	ActiveInd smallint NOT NULL DEFAULT 1
);
GO

CREATE TABLE DimPromotion(
	PromotionKey int IDENTITY(1,1) NOT NULL,
	PromotionName varchar(30) NOT NULL,
	PriceReductionType varchar(15) NULL,
	AdType varchar(15) NULL,
	DisplayType varchar(15) NULL,
	CouponType varchar(15) NULL,
	AdMediaType varchar(15) NULL,
	PromotionCost numeric(8, 2) NULL,
	ActiveInd smallint NOT NULL DEFAULT 1
);
GO

CREATE TABLE DimStore(
	StoreKey int NOT NULL,
	StoreName varchar(30) NOT NULL,
	StoreNumber varchar(10) NULL,
	City varchar(30) NULL,
	State varchar(10) NULL,
	SalesRegion varchar(15) NULL,
	ActiveInd smallint NOT NULL DEFAULT 1
);
GO

alter table DimStore add primary key (StoreKey);
alter table DimPromotion add primary key (PromotionKey);
alter table DimDate add primary key (DateKey);
alter table DimProduct add primary key (ProductKey);
GO

