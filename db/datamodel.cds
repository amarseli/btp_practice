namespace globalscc.compinven;
using { cuid, managed } from '@sap/cds/common';


type Guid : String(32);

context transaction {
    
     entity ComponentInventory: cuid {  
            DOCUMENT_ID             : String(50) not null;
            VENDOR_ID               : String(20) not null;
            ANID                    : String(25) not null;
            SYSTEM_ID               : String(20) not null;
            BUYER_PART_ID           : String(40) not null;
            DESCRIPTION             : String(50);
            SUPPLIER_PART_ID        : String(40);
            PLANT                   : String(4) not null;
            COMPONENT_ISSUED        : String not null; 
            COMPONENT_CONSUMED      : String; 
            STOCK_ON_HAND           : String;
            COMMENTS                : String(1000); 
            STATUS                  : String(20);
            Items                   : Composition of many ComponentInventoryDetail on Items.PARENT_KEY = $self;
     }

     entity ComponentInventoryDetail: cuid {
            PARENT_KEY: association to ComponentInventory;
            VENDOR_ID               : String(30) not null;
            DOCUMENT_ID             : String(50) not null;
            BUYER_PART_ID           : String(40) not null;
            DESCRIPTION             : String(50);
            SUPPLIER_PART_ID        : String(40);
            PLANT                   : String(4) not null;
            COMPONENT_ISSUED        : String not null; 
            STOCK_ON_HAND           : String(40);
            COMPONENT_CONSUMED      : String(40);
            COMMENTS                : String(1000);
            SYSTEM_ID               : String(20)
     }

}

// context master {
//     entity businesspartner {
//         key NODE_KEY : Guid;
//         BP_ROLE	:String(2);
//         EMAIL_ADDRESS :String(105);
//         PHONE_NUMBER: String(32);
//         FAX_NUMBER: String(32);
//         WEB_ADDRESS:String(44);	
//         ADDRESS_GUID: Association to address;	
//         BP_ID: String(32);	
//         COMPANY_NAME: String(250);
//     }

    

//     entity address {
//         key NODE_KEY: Guid;
//         CITY: String(44);
//         POSTAL_CODE: String(8);
//         STREET: String(44);
//         BUILDING:String(128)  ;
//         COUNTRY: String(44);
//         ADDRESS_TYPE: String(44);
//         VAL_START_DATE: Date;
//         VAL_END_DATE:Date;
//         LATITUDE: Decimal;
//         LONGITUDE: Decimal;
//         businesspartner: Association to one businesspartner on businesspartner.ADDRESS_GUID = $self;
//     }

//     // entity prodtext {
//     //     key NODE_KEY: Guid;
//     //     PARENT_KEY: Guid;
//     //     LANGUAGE:String(2);	
//     //     TEXT: String(256);        
//     // }
    
//     entity product {
//         key NODE_KEY: Guid;
//         PRODUCT_ID: String(28);
//         TYPE_CODE: String(2);
//         CATEGORY: String(32);
//         DESCRIPTION: localized String(255);
//         SUPPLIER_GUID: Association to master.businesspartner;
//         TAX_TARIF_CODE: Integer;
//         MEASURE_UNIT: String(2);
//         WEIGHT_MEASURE	: Decimal;
//         WEIGHT_UNIT: String(2);
//         CURRENCY_CODE:String(4);
//         PRICE: Decimal(15,2);
//         WIDTH:Decimal;	
//         DEPTH:Decimal;	
//         HEIGHT:	Decimal;
//         DIM_UNIT:String(2);

//     }

    
//     entity employees: cuid {
//         nameFirst: String(40);
//         nameMiddle: String(40);	
//         nameLast: String(40);	
//         nameInitials: String(40);	
//         sex	: common.Gender;
//         language: String(1);
//         phoneNumber: common.PhoneNumber;
//         email: common.Email;
//         loginName: String(12);
//         Currency: Currency;
//         salaryAmount: common.AmountT;	
//         accountNumber: String(16);	
//         bankId: String(20);
//         bankName: String(64);
//     }

// }




