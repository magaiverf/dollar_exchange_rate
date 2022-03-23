public with sharing class DollarExchangeRateController {
    
    @AuraEnabled(cacheable=true)
    public static String getCurrentDollarExchange() {
        return ExchangeRateService.getCurrentDollarExchange();
    }
}
