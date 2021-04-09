namespace anubhav.db;

using
{
    anubhav.db.master,
    anubhav.db.transaction
}
from './datamodel';

entity magic
{
    key id : Integer;
    name : String(50);
    salary : Decimal(10,2);
    currency : String(4);
}

context CDSViews
{
    view ProductValueHelp as
        select from master.product
        {
            @EndUserText.label : [
            {
                language : 'EN',
                text : 'Product ID'
            }
            ,
            {
                language : 'DE',
                text : 'Prodekt ID'
            }
            ] PRODUCT_ID as ![ProductId],
            @EndUserText.label : [
            {
                language : 'EN',
                text : 'Product Description'
            }
            ,
            {
                language : 'DE',
                text : 'Prodekt Description'
            }
            ] DESCRIPTION as ![Description]
        };

    view ProductViewSub as
        select from master.product as prod
        {
            PRODUCT_ID as ![ProductId],
            texts.DESCRIPTION as ![Description],
            (select from transaction.poitems as a
                {
                    SUM(a.GROSS_AMOUNT) as SUM
                }
                where a.PRODUCT_GUID.NODE_KEY = prod.NODE_KEY) as PO_SUM : Decimal(10,
                2)
        };

    view ProductView as
        select from master.product mixin
        {
            PO_ORDERS : Association [*] to ItemView
                on PO_ORDERS.ProductId =$projection.ProductId
        }
        into
        {
            NODE_KEY as ![ProductId],
            DESCRIPTION,
            CATEGORY as ![Category],
            PRICE as ![Price],
            TYPE_CODE as ![TypeCode],
            SUPPLIER_GUID.BP_ID as ![BPId],
            SUPPLIER_GUID.COMPANY_NAME as ![CompanyName],
            SUPPLIER_GUID.ADDRESS_GUID.CITY as ![City],
            SUPPLIER_GUID.ADDRESS_GUID.COUNTRY as ![Country],
            PO_ORDERS
        };

    view CProductValuesView as
        select from ProductView
        {
            ProductId,
            Country,
            PO_ORDERS.CurrencyCode as ![CurrencyCode],
            sum(PO_ORDERS.GrossAmount) as ![POGrossAmount] : Decimal(10,
                2)
        }
        group by ProductId, Country, PO_ORDERS.CurrencyCode
        };
}
