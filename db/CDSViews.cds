namespace globalscc.compinven;

using {globalscc.compinven.transaction  } from './datamodel';

context CDSViews {
    
    define view![CompWorkList] as
    select from transaction.ComponentInventory{  
        key DOCUMENT_ID as![document_id],
            VENDOR_ID as ![vendor_id],
            ANID as ![anid],
            BUYER_PART_ID as![buyerpartid],
            DESCRIPTION as ![desc],
            SUPPLIER_PART_ID as ![supplierpartid],
            PLANT as ![plant_loc],
            STATUS as![status],
            COMPONENT_ISSUED as ![comp_qty],
            COMPONENT_CONSUMED as ![consumed_qty],
            STOCK_ON_HAND as ![stock_on_hand],
            COMMENTS as ![comments], 
    };

    define view![CompItemView] as 
    select from transaction.ComponentInventoryDetail{ 
        PARENT_KEY.DOCUMENT_ID as ![document_id_key],
        DOCUMENT_ID as![document_id], 
        BUYER_PART_ID as![buyer_part_id],
        DESCRIPTION as![description],
        SUPPLIER_PART_ID as![supplier_part_id],
        PLANT as![plant_loc],
        COMPONENT_ISSUED as ![issued_qty],
        STOCK_ON_HAND as![stock_on_hand],
        COMPONENT_CONSUMED as![consumed_qty],
        COMMENTS as ![comments],
    };

    //  define view ProductValueHelp as 
    //     select from master.product{
    //         @EndUserText.label:[
    //             {
    //                 language: 'EN',
    //                 text: 'Product ID'
    //             },{
    //                 language: 'DE',
    //                 text: 'Prodekt ID'
    //             }
    //         ]
    //         PRODUCT_ID as ![ProductId],
    //         @EndUserText.label:[
    //             {
    //                 language: 'EN',
    //                 text: 'Product Description'
    //             },{
    //                 language: 'DE',
    //                 text: 'Prodekt Description'
    //             }
    //         ]
    //         DESCRIPTION as ![Description]
    //     };
        
    

    // define view ProductViewSub as 
    // select from master.product as prod{
    //     PRODUCT_ID as![ProductId],
    //     texts.DESCRIPTION as![Description],
    //     (
    //         select from transaction.poitems as a{
    //             round(SUM(a.GROSS_AMOUNT),2) as SUM
    //         }
    //         where a.PRODUCT_GUID.NODE_KEY = prod.NODE_KEY
    //     ) as PO_SUM: Decimal(10, 2)
    // };

    // define view ProductView as select from master.product
    // mixin{
    //     PO_ORDERS: Association[*] to ItemView on
    //                     PO_ORDERS.ProductId = $projection.ProductId
    // }
    // into{
    //     NODE_KEY as![ProductId],
    //     DESCRIPTION,
    //     CATEGORY as![Category],
    //     PRICE as![Price],
    //     TYPE_CODE as![TypeCode],
    //     SUPPLIER_GUID.BP_ID as![BPId],
    //     SUPPLIER_GUID.COMPANY_NAME as![CompanyName],
    //     SUPPLIER_GUID.ADDRESS_GUID.CITY as![City],
    //     SUPPLIER_GUID.ADDRESS_GUID.COUNTRY as![Country],
    //     //Exposed Association, which means when someone read the view
    //     //the data for orders wont be read by default
    //     //until unless someone consume the association
    //     PO_ORDERS
    // };

    // define view CProductValuesView as 
    //     select from ProductView{
    //         ProductId,
    //         Country,
    //         PO_ORDERS.CurrencyCode as![CurrencyCode],
    //         round(sum(PO_ORDERS.GrossAmount),2) as ![POGrossAmount]: Decimal(10, 2)
    //     }
    //     group by ProductId,Country,PO_ORDERS.CurrencyCode

}


