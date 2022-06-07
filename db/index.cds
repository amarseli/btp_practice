using { globalscc.compinven.transaction } from './datamodel';


annotate transaction.ComponentInventory with {
        NODE_KEY @title : '{i18n>Node_KEy}';
        DOCUMENT_ID @title: '{i18n>document_id}';
        VENDOR_ID @title: '{i18n>vendor_id}';
        BUYER_PART_ID @title : '{i18n>buyer_part_id}';
        DESCRIPTION @title : '{i18n>description}';
        SUPPLIER_PART_ID @title : '{i18n>supplier_partid}';
        PLANT @title : '{i18n>plant}';
        COMPONENT_ISSUED @title : '{i18n>comp_qty}';
        STOCK_ON_HAND @title : '{i18n>stock_on_hand}';
        COMPONENT_CONSUMED @title : '{i18n>consumed_qty}';
        COMMENTS @title : '{i18n>comments}';
        STATUS @title :  '{i18n>status}';
        SYSTEM_ID @title : '{i18n>system_id}';
        ANID @title : '{i18n>ANID}';
        Items @title : '{i18n>Items}';
};


annotate transaction.ComponentInventoryDetail with {
        NODE_KEY @title : '{i18n>Node_KEy}';  
        PARENT_KEY @title : '{i18n>PARENT_KEY}';
        VENDOR_ID @title: '{i18n>vendor_id}';
        DOCUMENT_ID @title: '{i18n>document_id}';
        BUYER_PART_ID @title : '{i18n>buyer_part_id}';
        DESCRIPTION @title : '{i18n>description}';
        SUPPLIER_PART_ID @title : '{i18n>supplier_partid}';
        PLANT @title : '{i18n>plant}';
        COMPONENT_ISSUED @title : '{i18n>comp_qty}';
        STOCK_ON_HAND @title : '{i18n>stock_on_hand}';
        COMPONENT_CONSUMED @title : '{i18n>consumed_qty}';
        COMMENTS @title : '{i18n>comments}';
        SYSTEM_ID @title : '{i18n>system_id}'; 
};

// annotate master.businesspartner with{
//         NODE_KEY @title :  '{i18n>bp_key}';
//         BP_ROLE @title: '{i18n>bp_role}';
//         COMPANY_NAME @title : '{i18n>company_name}';
//         BP_ID @title : '{i18n>bp_id}';
//         EMAIL_ADDRESS @title : '{i18n>email_addr}';
//         PHONE_NUMBER @title : '{i18n>Phone_Number}';
//         FAX_NUMBER @title : '{i18n>Fax_Number}';
//         WEB_ADDRESS @title :  '{i18n>WEB_ADDRESS}';
//         ADDRESS_GUID @title : '{i18n>Address_Guid}'
//     };


// annotate master.address with{
//   NODE_KEY @title : '{i18n>ap_key1}';
//   CITY @title : '{i18n>City}';
//   POSTAL_CODE @title : '{i18n>Postal_Code}';
//   STREET @title : '{i18n>Street}';
//   BUILDING @title : '{i18n>Building}';
//   COUNTRY @title : '{i18n>Country}';
//   ADDRESS_TYPE @title : '{i18n>Address_Type}';
//   VAL_START_DATE @title : '{i18n>VAL_START_DATE}';
//   VAL_END_DATE @title : '{i18n>VAL_END_DATE}';
//   LATITUDE @title : '{i18n>LATITUDE}';
//   LONGITUDE @title : '{i18n>LONGITUDE}';
//   businesspartner @title : '{i18n>businesspartner}'


// };


// annotate master.prodtext with {
//     NODE_KEY @title : '{i18n>prod_Key}';
//     PARENT_KEY @title : '{i18n>Parent_Key}';
//     LANGUAGE @title : '{i18n>Language}';
//     TEXT @title : '{i18n>Text}'
// };


// annotate master.product with {
//       NODE_KEY @title : '{i18n>Prod_key1}';
//       PRODUCT_ID @title : '{i18n>Product_Id}';
//       TYPE_CODE @title : '{i18n>Type_Code}';
//       CATEGORY @title : '{i18n>Category}';
//       DESCRIPTION @title : '{i18n>Description}';
//       SUPPLIER_GUID @title : '{i18n>Supplier_Guid}';
//       TAX_TARIF_CODE @title : '{i18n>Tax_Tarif_Code}';
//       MEASURE_UNIT @title : '{i18n>Measure_Unit}';
//       WEIGHT_MEASURE @title : '{i18n>Weight_Measure}';
//       WEIGHT_UNIT @title : '{i18n>Weight_Unit}';
//       CURRENCY_CODE @title : '{i18n>Currency_Code}';
//       PRICE @title : '{i18n>Price}';
//       WIDTH @title : '{i18n>Width}';
//       DEPTH @title : '{i18n>Depth}';
//       HEIGHT @title : '{i18n>Height}';
//       DIM_UNIT @title : '{i18n>Dim_Unit}'
// };


// annotate master.employees with {
//         nameFirst @title : '{i18n>nameFirst}';
//         nameMiddle @title : '{i18n>nameMiddle}';
//         nameLast @title : '{i18n>nameLast}';
//         nameInitials @title : '{i18n>nameInitials}';
//         sex @title : '{i18n>sex}';
//         language @title : '{i18n>language}';
//         phoneNumber @title : '{i18n>phoneNumber}';
//         email @title : '{i18n>email}';
//         loginName @title : '{i18n>loginName}';
//         Currency @title : '{i18n>Currency}';
//         salaryAmount @title : '{i18n>salaryAmount}';
//         accountNumber @title : '{i18n>accountNumber}';
//         bankId @title : '{i18n>bankId}';
//         bankName @title : '{i18n>bankName}'
// };





