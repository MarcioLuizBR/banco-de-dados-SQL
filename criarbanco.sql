--criacao das tabelas necessarias

--tabela Person
CREATE TABLE PERSON(
    BusinessEntityID INT PRIMARY KEY,
    PersonType VARCHAR(10) NOT NULL,
    NameStyle VARCHAR(10),
    Title VARCHAR(45),
    FirstName VARCHAR(40) NOT NULL,
    MiddleName VARCHAR(40),
    LastName VARCHAR(40) NOT NULL,
    Suffix VARCHAR(10),
    EmailPromotion VARCHAR(50),
    AdditionalContactInfo VARCHAR(50),
    Demographics TEXT,
    rowguid VARCHAR(50),
    ModifiedDate DATETIME
)

--tabela product
CREATE TABLE PRODUCT(
    ProductID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    ProductNumber CHAR(10) NOT NULL,
    MakeFlag VARCHAR(10) NOT NULL,
    FinishedGoodsFlag VARCHAR(10) NOT NULL,
    Color VARCHAR(20),
    SafetyStockLevel VARCHAR(10),
    ReorderPoint VARCHAR(50),
    StandardCost VARCHAR(50),
    ListPrice VARCHAR(50),
    SIZE VARCHAR(50),
    SizeUnitMeasureCode VARCHAR(50),
    WeightUnitMeasureCode VARCHAR(50),
    Weight FLOAT,
    DaysToManufacture VARCHAR(10),
    ProductLine VARCHAR(10),
    Class VARCHAR(10),
    Style VARCHAR(10),
    ProductSubcategoryID VARCHAR(10),
    ProductModelID VARCHAR(10),
    SellStartDate DATE,
    SellEndDate DATE,
    DiscontinuedDate DATE,
    rowguid VARCHAR(50) NOT NULL,
    ModifiedDate DATETIME
)

--tabela SpecialOfferProduct 
CREATE TABLE SpecialOfferProduct (
    SpecialOfferID INT,
    ProductID INT,
    Rowguid VARCHAR(50) NOT NULL,
    ModifiedDate DATETIME,
    PRIMARY KEY (SpecialOfferID, ProductID),
    FOREIGN KEY (ProductID) REFERENCES PRODUCT(ProductID)
)

--tabela customer
CREATE TABLE CUSTOMER (
    CustomerID INT PRIMARY KEY NOT NULL,
    PersonID INT,
    StoreID INT,
    TerritoryID INT,
    AccountNumber VARCHAR(20) NOT NULL,
    rowguid VARCHAR(50) NOT NULL,
    ModifiedDate DATETIME,
    FOREIGN KEY (PersonID) REFERENCES PERSON(businessEntityID)
)

--tabela salesorderheader
CREATE TABLE SalesOrderHeader (
    SalesOrderID INT PRIMARY KEY NOT NULL,
    RevisionNumber INT NOT NULL,
    OrderDate DATETIME NOT NULL,
    DueDate DATETIME NOT NULL,
    ShipDate DATETIME NOT NULL,
    Status INT not null,
    OnlineOrderFlag VARCHAR(10) NOT NULL,
    SalesOrderNumber VARCHAR(10) NOT NULL,
    PurchaseOrderNumber VARCHAR(20),
    AccountNumber VARCHAR(15) NOT NULL,
    CustomerID INT NOT NULL,
    SalesPersonID INT,
    TerritoryID INT NOT NULL,
    BillToAddressID INT NOT NULL,
    ShipToAddressID INT NOT NULL,
    ShipMethodID INT NOT NULL,
    CreditCardID VARCHAR(16),
    CreditCardApprovalCode VARCHAR(20),
    CurrencyRateID INT,
    SubTotal VARCHAR(30) NOT NULL,
    TaxAmt VARCHAR(30) NOT NULL,
    Freight VARCHAR(30) NOT NULL,
    TotalDue VARCHAR(30) NOT NULL,
    Comment TEXT,
    rowguid VARCHAR(50) NOT NULL,
    ModifiedDate DATETIME,
    FOREIGN KEY (CustomerID) REFERENCES CUSTOMER(CustomerID)
)

--tabela salesorderdetail
CREATE TABLE SalesOrderDetail (
    SalesOrderID INT NOT NULL,
    SalesOrderDetailID INT PRIMARY KEY NOT NULL,
    CarrierTrackingNumber VARCHAR(20),
    OrderQty FLOAT NOT NULL,
    ProductID INT NOT NULL,
    SpecialOfferID INT NOT NULL,
    UnitPrice VARCHAR(20) NOT NULL,
    UnitPriceDiscount VARCHAR(20) NOT NULL,
    LineTotal VARCHAR(30) NOT NULL,
    rowguid VARCHAR(50) NOT NULL,
    ModifiedDate DATETIME,
    FOREIGN KEY (SalesOrderID) REFERENCES salesorderheader(SalesOrderID),
    FOREIGN KEY (SpecialOfferID, ProductID) REFERENCES specialofferproduct(SpecialOfferID, ProductID)
)


--as implantacao das tabelas seguiu a ordem descrita acima, como foi minha primeira vez criando esta tabela, fiz cada coluna separadamente, depois que a migracao dos dados csv para tabela estavam ok, proseguia para a proxima tabela
