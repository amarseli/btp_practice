using { CompInvenService } from '../../srv/CompInvenService';

//First Screen with Search Fields and Table Columns
annotate CompInvenService.CompInvens with {
    
};
 
annotate CompInvenService.CompInvenItems with {
     
};


annotate CompInvenService.CompInvens with @(
    UI: {
        SelectionFields  : [
            DOCUMENT_ID,
            BUYER_PART_ID,
            SUPPLIER_PART_ID,
            PLANT,
            STATUS
        ],
        LineItem  : [
            {
                $Type : 'UI.DataField',
                Value : DOCUMENT_ID,
            },
            {
                $Type : 'UI.DataField',
                Value : BUYER_PART_ID,
            }, 
            {
                $Type : 'UI.DataField',
                Value : DESCRIPTION,
            },
            {
                $Type : 'UI.DataField',
                Value : SUPPLIER_PART_ID,
            },
            {
                $Type : 'UI.DataField',
                Value : PLANT,
            },
            {
                $Type : 'UI.DataField',
                Value : COMPONENT_ISSUED,
            },
            {
                $Type : 'UI.DataField',
                Value : SYSTEM_ID,
            },
            {
                $Type : 'UI.DataField',
                Value : ANID,
            },
            {
                $Type : 'UI.DataField',
                Value : STATUS,
                Criticality: Criticality,
                CriticalityRepresentation: #WithIcon
            },
        ],
        HeaderInfo  : {
            $Type : 'UI.HeaderInfoType',
            TypeName : 'Component Inventory',
            TypeNamePlural : 'Component Inventory Data',
            Title: {
                Label : '{i18n>BPTID}',
                Value: BUYER_PART_ID
            },
            Description: {
                Label : '{i18n>DESC}',
                Value: DESCRIPTION
            }, 
            ImageUrl : 'https://i.imgur.com/KQ5myZg.jpg',
        },
        Facets  : [{
            $Type : 'UI.ReferenceFacet',
            Label : 'Review and Update Component Consumption Qty',
            Target: ![@UI.FieldGroup#HeaderGeneralInformation]
        }, 
        ],
        FieldGroup#HeaderGeneralInformation  : {
            $Type : 'UI.FieldGroupType',
            Data: [
                {
                $Type : 'UI.DataField',
                Value : DOCUMENT_ID,
                },
                {
                    $Type : 'UI.DataField',
                    Value : VENDOR_ID,
                },
                {
                    $Type : 'UI.DataField',
                    Value : BUYER_PART_ID,
                }, 
                {
                    $Type : 'UI.DataField',
                    Value : DESCRIPTION,
                },
                {
                    $Type : 'UI.DataField',
                    Value : SUPPLIER_PART_ID,
                },
                {
                    $Type : 'UI.DataField',
                    Value : PLANT,
                },
                {
                    $Type : 'UI.DataField',
                    Value : COMPONENT_ISSUED,
                },
                {
                    $Type : 'UI.DataField',
                    Value : SYSTEM_ID,
                },
                {
                    $Type : 'UI.DataField',
                    Value : ANID,
                },
                {
                    $Type : 'UI.DataField',
                    Value : STATUS,
                    Criticality: Criticality,
                    CriticalityRepresentation: #WithIcon
                },
                {
                    $Type : 'UI.DataField',
                    Value : COMPONENT_CONSUMED,
                },
                {
                    $Type : 'UI.DataField',
                    Value : STOCK_ON_HAND,
                },
                {
                    $Type : 'UI.DataField',
                    Value : COMMENTS,
                },
            ]
        },
    }

); 
 

// );



