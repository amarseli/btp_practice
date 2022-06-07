using { globalscc.compinven.transaction } from '../db/datamodel';

//@(requires: 'authenticated-user')

service CompInvenService@(path:'/CompInvenService')
         {

    // @Capabilities : { Insertable,Updatable,Deletable }
    // entity EmployeeSet @(restrict:[
    //     {
    //         grant: ['READ'],
    //         to: 'SupplierViewer',
    //         where: 'anid = $user.ANID'
    //     },
    //     {
    //         grant: ['WRITE'],
    //         to: 'SupplierAdmin'
    //     }
    // ])    
    // as projection on master.employees;
    // entity AddressSet as projection on master.address;
    // entity ProductSet as projection on master.product;
    // @readonly
    // entity BPSet as projection on master.businesspartner;
    

    entity CompInvens @(
        title: '{i18n>compHeader}',
        odata.draft.enabled: true
    ) as projection on transaction.ComponentInventory{
        *,
        // round(COMP_ISSUED,0) as COMP_ISSUED: Integer,
        case STATUS
            when 'N' then 'New'
            when 'S' then 'Submitted'
            when 'A' then 'Accepted'
            when 'R' then 'Rejected'
            when 'B' then 'Blocked'
            end as STATUS: String(20),
        case STATUS
            when 'N' then 0
            when 'S' then 1
            when 'A' then 2
            when 'R' then 3
            when 'B' then 4
            end as Criticality: Integer,
        Items: redirected to CompInvenItems
    }
    // actions{
    //     function largestOrder() returns array of CompInvens;
    //     action boost();
    // }

    // annotate CompInvens with {
    //     COMP_ISSUED @title: '{i18n>COMP_ISSUED}';
    // };
    

    entity CompInvenItems @( title : '{i18n>CompInvenItems}' )
    as projection on transaction.ComponentInventoryDetail{
        *,
        PARENT_KEY: redirected to CompInvens,
        // PRODUCT_GUID: redirected to ProductSet
    }

}