DROP TABLE IF EXISTS JobRequestProductBackup;
DROP TABLE IF EXISTS UniversalJobMapper;
DROP TABLE IF EXISTS UniversalListFormView;
DROP TABLE IF EXISTS UniversalCheckListView;

CREATE TABLE UniversalCheckListView
(
   taskFormTemplateID INTEGER,
   taskFormAttributeID INTEGER,
   colInvokeField TEXT
);
CREATE TABLE UniversalJobMapper
(
	inspectFormViewID INTEGER,
	inspectFormViewNo INTEGER,
	jobRequestID INTEGER,
	taskCode TEXT,
	isAudit TEXT,
	colsInvokeForPhotoEntryItemDisplay TEXT
);

CREATE TABLE UniversalListFormView
(
	inspectFormViewID INTEGER,
	colNo INTEGER,
	colFomula TEXT,
	colEditable TEXT,
	colHidden TEXT,
	colType INTEGER,
	colTextDisplay TEXT,
	colDefaultValue TEXT,
	colWidth REAL,
	colInvokeField TEXT,
	reasonSentenceCode TEXT,
	taskFormTemplateID INTEGER,
	dateTimeFormate TEXT,
	decimalFormat TEXT
);

CREATE TABLE JobRequestProductBackup
(
	jobNo TEXT,
	resultProductRowId INTEGER,
	productId INTEGER,
	productQty REAL,
	productUnit TEXT,
	productPrice REAL,
	productValue REAL,
	foundFlag TEXT,
	productInfo TEXT,
	clusterControlFlag TEXT,	
	jobRequestID INTEGER,
	productRowId INTEGER,
	itemNo TEXT,
	productGroup TEXT,
	productType TEXT,
	productValueText TEXT,
	cFranchise TEXT,
	cInvoiceDate TEXT,
	cRegisterNumber TEXT,
	cMid TEXT,
	cVin TEXT,
	cEngine TEXT,
	cDescription TEXT,
	cColor TEXT,
	cModel TEXT,
	cYear TEXT,
	cType TEXT,
	tNo TEXT,
	tCode TEXT,
	tSize TEXT,
	tWeight TEXT,
	mContractNo TEXT,
	mFixedAssetNumber TEXT,
	mAssetName TEXT,
	mBrand TEXT,
	mModel TEXT,
	mSerialNo TEXT,
	mChassissNo TEXT,
	mEngineNo TEXT,
	crHire TEXT,
	crOwnerName TEXT,
	crLicense TEXT,
	crBrand TEXT,
	crRenewDate TEXT,
	crContractNo TEXT,
	crContractDate TEXT,
	crPrincipal TEXT,
	crDueNumber TEXT,
	crDueAmount TEXT,
	crLastPayment TEXT
);

ALTER TABLE TaskFormDataSaved ADD COLUMN productRowId INTEGER;


ALTER TABLE JobRequestProductBackup ADD COLUMN cWareHouse INTEGER DEFAULT(0);
ALTER TABLE JobRequestProductBackup ADD COLUMN cOrder INTEGER DEFAULT(0);
ALTER TABLE JobRequestProductBackup ADD COLUMN cSight TEXT DEFAULT('N');
ALTER TABLE JobRequestProductBackup ADD COLUMN cEquipping TEXT DEFAULT('N');
ALTER TABLE JobRequestProductBackup ADD COLUMN cPay TEXT DEFAULT('N');
ALTER TABLE JobRequestProductBackup ADD COLUMN cSold TEXT DEFAULT('N');
ALTER TABLE JobRequestProductBackup ADD COLUMN cDate datetime default('CURRENT_TIMESTAMP');
ALTER TABLE JobRequestProductBackup ADD COLUMN cKms TEXT;
ALTER TABLE JobRequestProductBackup ADD COLUMN cDocument TEXT;
ALTER TABLE JobRequestProductBackup ADD COLUMN cRemark TEXT;
ALTER TABLE JobRequestProductBackup ADD COLUMN cImage TEXT;
ALTER TABLE JobRequestProductBackup ADD COLUMN cReasonId INTEGER;
ALTER TABLE JobRequestProductBackup ADD COLUMN cReasonCode TEXT;
ALTER TABLE JobRequestProductBackup ADD COLUMN photoSetID INTEGER;
ALTER TABLE JobRequestProductBackup ADD COLUMN cErrorType INTEGER DEFAULT(0);
ALTER TABLE JobRequestProductBackup ADD COLUMN cErrorText TEXT;

ALTER TABLE JobRequestProductBackup ADD COLUMN cTeamId INTEGER DEFAULT(0);
ALTER TABLE JobRequestProductBackup ADD COLUMN cJobRowId INTEGER DEFAULT(0);
ALTER TABLE JobRequestProductBackup ADD COLUMN inspectDataObjectID INTEGER DEFAULT(-1);


ALTER TABLE JobRequestProductBackup ADD COLUMN remark TEXT;
ALTER TABLE JobRequestProductBackup ADD COLUMN isAudit TEXT DEFAULT('true');
ALTER TABLE JobRequestProductBackup ADD COLUMN jobLocationId INTEGER;
ALTER TABLE JobRequestProductBackup ADD COLUMN productGroupID INTEGER;
ALTER TABLE JobRequestProductBackup ADD COLUMN customerSurveySiteID INTEGER;

ALTER TABLE JobRequestProductBackup ADD COLUMN  char1 TEXT;
ALTER TABLE JobRequestProductBackup ADD COLUMN  char2 TEXT;
ALTER TABLE JobRequestProductBackup ADD COLUMN  char3 TEXT;
ALTER TABLE JobRequestProductBackup ADD COLUMN  char4 TEXT;
ALTER TABLE JobRequestProductBackup ADD COLUMN  char5 TEXT;
ALTER TABLE JobRequestProductBackup ADD COLUMN  num1 INTEGER;
ALTER TABLE JobRequestProductBackup ADD COLUMN  num2 INTEGER;
ALTER TABLE JobRequestProductBackup ADD COLUMN  num3 INTEGER;
ALTER TABLE JobRequestProductBackup ADD COLUMN  num4 INTEGER;
ALTER TABLE JobRequestProductBackup ADD COLUMN  num5 INTEGER;
ALTER TABLE JobRequestProductBackup ADD COLUMN  dec1 REAL;
ALTER TABLE JobRequestProductBackup ADD COLUMN  dec2 REAL;
ALTER TABLE JobRequestProductBackup ADD COLUMN  dec3 REAL;
ALTER TABLE JobRequestProductBackup ADD COLUMN  date1 TEXT;
ALTER TABLE JobRequestProductBackup ADD COLUMN  date2 TEXT;
ALTER TABLE JobRequestProductBackup ADD COLUMN  date3 TEXT;
ALTER TABLE JobRequestProductBackup ADD COLUMN  productName TEXT;
ALTER TABLE JobRequestProductBackup ADD COLUMN  marketPriceID INTEGER;
ALTER TABLE JobRequestProductBackup ADD COLUMN  marketPrice REAL;

ALTER TABLE JobRequestProduct ADD COLUMN remark TEXT;
ALTER TABLE JobRequestProduct ADD COLUMN isAudit TEXT DEFAULT('true');
ALTER TABLE JobRequestProduct ADD COLUMN jobLocationId INTEGER;
ALTER TABLE JobRequestProduct ADD COLUMN productGroupID INTEGER;
ALTER TABLE JobRequestProduct ADD COLUMN customerSurveySiteID INTEGER;
ALTER TABLE JobRequestProduct ADD COLUMN  char1 TEXT;
ALTER TABLE JobRequestProduct ADD COLUMN  char2 TEXT;
ALTER TABLE JobRequestProduct ADD COLUMN  char3 TEXT;
ALTER TABLE JobRequestProduct ADD COLUMN  char4 TEXT;
ALTER TABLE JobRequestProduct ADD COLUMN  char5 TEXT;
ALTER TABLE JobRequestProduct ADD COLUMN  num1 INTEGER;
ALTER TABLE JobRequestProduct ADD COLUMN  num2 INTEGER;
ALTER TABLE JobRequestProduct ADD COLUMN  num3 INTEGER;
ALTER TABLE JobRequestProduct ADD COLUMN  num4 INTEGER;
ALTER TABLE JobRequestProduct ADD COLUMN  num5 INTEGER;
ALTER TABLE JobRequestProduct ADD COLUMN  dec1 REAL;
ALTER TABLE JobRequestProduct ADD COLUMN  dec2 REAL;
ALTER TABLE JobRequestProduct ADD COLUMN  dec3 REAL;
ALTER TABLE JobRequestProduct ADD COLUMN  date1 TEXT;
ALTER TABLE JobRequestProduct ADD COLUMN  date2 TEXT;
ALTER TABLE JobRequestProduct ADD COLUMN  date3 TEXT;
ALTER TABLE JobRequestProduct ADD COLUMN  productName TEXT;
ALTER TABLE JobRequestProduct ADD COLUMN  marketPriceID INTEGER;
ALTER TABLE JobRequestProduct ADD COLUMN  marketPrice REAL;



ALTER TABLE InspectDataObjectSaved ADD COLUMN isCustomMarketPrice TEXT DEFAULT('N');
ALTER TABLE InspectDataObjectSaved ADD COLUMN objectName TEXT;
ALTER TABLE InspectDataObjectSaved ADD COLUMN inspectTypeID INTEGER;

ALTER TABLE  InspectDataItem ADD COLUMN inspectTypeID INTEGER;
ALTER TABLE  InspectDataItem ADD COLUMN isUniversalLayoutDropdown TEXT DEFAULT('false');

ALTER TABLE InspectDataGroupType ADD COLUMN inspectTypeID INTEGER;


ALTER TABLE JobRequestProduct ADD COLUMN inspectDataObjectID INTEGER DEFAULT(-1);


