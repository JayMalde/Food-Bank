BEGIN TRANSACTION;
CREATE TABLE "Account" (
	id VARCHAR(255) NOT NULL, 
	"Name" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Account" VALUES('Account-1','Sample Account for Entitlements','');
INSERT INTO "Account" VALUES('Account-2','Source Club','');
INSERT INTO "Account" VALUES('Account-3','De Pinna','');
INSERT INTO "Account" VALUES('Account-4','Total Yard Maintenance','');
CREATE TABLE "Delivery_Item__c" (
	id VARCHAR(255) NOT NULL, 
	"Food_Expiration_Date__c" VARCHAR(255), 
	"Food_Storage__c" VARCHAR(255), 
	"Delivery__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery_Item__c" VALUES('Delivery_Item__c-1','2024-07-31','Frozen','Delivery__c-2');
INSERT INTO "Delivery_Item__c" VALUES('Delivery_Item__c-2','2024-07-06','Refrigerated','Delivery__c-1');
INSERT INTO "Delivery_Item__c" VALUES('Delivery_Item__c-3','2024-08-30','Non-refrigerated','Delivery__c-3');
CREATE TABLE "Delivery__c" (
	id VARCHAR(255) NOT NULL, 
	"Scheduled_Date__c" VARCHAR(255), 
	"Status__c" VARCHAR(255), 
	"Supplier__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery__c" VALUES('Delivery__c-1','2024-06-26T06:30:00.000+0000','Scheduled','Account-4');
INSERT INTO "Delivery__c" VALUES('Delivery__c-2','2024-06-25T06:30:00.000+0000','Scheduled','Account-2');
INSERT INTO "Delivery__c" VALUES('Delivery__c-3','2024-06-29T06:30:00.000+0000','Requested','Account-3');
COMMIT;
