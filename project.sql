SPOOL project.out
SET ECHO ON

CREATE TABLE Customers (
  custEmail VARCHAR(255) PRIMARY KEY,
  cName VARCHAR(255) NOT NULL,
  cAddress VARCHAR(100) NOT NULL,
  cCardNum VARCHAR(16) NOT NULL
);


CREATE TABLE CreditCards (
  cardNumber INTEGER PRIMARY KEY,
  securityCode INTEGER NOT NULL,
  expDate CHAR(7) NOT NULL
);


-- --------------------------------------------------------

--
-- Table structure for table Orders
--

CREATE TABLE Orders (
  oID INTEGER PRIMARY KEY,
  oEmail VARCHAR(255) NOT NULL,
  oShipID INTEGER NOT NULL,
  oDate CHAR(10)
);

-- --------------------------------------------------------

--
-- Table structure for table Product
--

CREATE TABLE Product (
  productID INTEGER PRIMARY KEY,
  pName CHAR(15) NOT NULL,
  price INTEGER NOT NULL,
  onSale CHAR(1) DEFAULT 'N',
  salePrice DECIMAL(10,0) NOT NULL,
  quantity INTEGER NOT NULL,
  description VARCHAR(1000) NOT NULL,
  imgURL VARCHAR(1000) NOT NULL,
  sCompany CHAR(20) NOT NULL
);

-- --------------------------------------------------------

--
-- Table structure for table ProductsInOrder
--

CREATE TABLE ProductsInOrder (
  orderID INTEGER NOT NULL,
  productID INTEGER NOT NULL,
  quantity INTEGER NOT NULL
);

-- --------------------------------------------------------

--
-- Table structure for table Review
--

CREATE TABLE Review (
  custEmail VARCHAR(255),
  pID INTEGER,
  rating CHAR(1) NOT NULL,
  description VARCHAR(1000) NOT NULL,
  rDate CHAR(10),
  PRIMARY KEY(custEmail, pID)
);

-- --------------------------------------------------------

--
-- Table structure for table Seller
--

CREATE TABLE Seller (
  email VARCHAR(255) PRIMARY KEY,
  companyName VARCHAR(20) NOT NULL,
  address VARCHAR(255),
  phoneNum VARCHAR(16) NOT NULL
);

-- --------------------------------------------------------

--
-- Table structure for table Shipping
--

CREATE TABLE Shipping (
  shipID INTEGER PRIMARY KEY,
  type VARCHAR(255) NOT NULL,
  sPrice INTEGER NOT NULL
);

SPOOL OFF
