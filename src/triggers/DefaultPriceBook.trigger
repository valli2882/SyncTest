trigger DefaultPriceBook on Order (before insert) {
    Id priceBookId= [select id from Pricebook2 where Name='Communication Hub'].Id;
    For(Order Ord : Trigger.New ){
        Ord.PriceBook2Id = priceBookId;
    }
}