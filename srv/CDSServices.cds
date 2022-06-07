using { globalscc.compinven.CDSViews } from '../db/CDSViews';
using { globalscc.compinven.transaction  } from '../db/datamodel';


service CDSService@(path:'/CDSService') {

    entity CompWorkList as projection on CDSViews.CompWorkList;
    // entity ProductOrders as projection on CDSViews.ProductViewSub;
    // entity ProductAggregation as projection on CDSViews.CProductValuesView excluding{
    //     ProductId
    // };
   

}