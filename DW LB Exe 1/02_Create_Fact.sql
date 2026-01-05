CREATE TABLE FactSalesTransaction(
	DateKey int NOT NULL,
	ProductKey int NOT NULL,
	PromotionKey int NOT NULL,
	StoreKey int NOT NULL,
	DollarSales numeric(10, 2) NULL,
	UnitSales numeric(10, 2) NULL,
	DollarCost numeric(10, 2) NULL,
	DollarGrossProfit numeric(10, 2) NULL
);
GO

alter table FactSalesTransaction add constraint FK_FactSalesTransaction_Date
foreign key (DateKey) references DimDate (DateKey);

alter table FactSalesTransaction add constraint FK_FactSalesTransaction_Product
foreign key (ProductKey) references DimProduct (ProductKey);

alter table FactSalesTransaction add constraint FK_FactSalesTransaction_Promotion
foreign key (PromotionKey) references DimPromotion (PromotionKey);

alter table FactSalesTransaction add constraint FK_FactSalesTransaction_Store
foreign key (StoreKey) references DimStore (StoreKey);