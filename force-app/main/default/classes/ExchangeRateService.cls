public with sharing class ExchangeRateService {

    private static final String END_POINT = 'https://economia.awesomeapi.com.br/last/USD-BRL';
    private static final String KEY_USDBRL = 'USDBRL';
    private static final String KEY_ASK = 'ask';
    
    public static String getCurrentDollarExchange() {
        Http http = new Http();

        HttpRequest request = new HttpRequest();
        request.setEndpoint(END_POINT);
        request.setMethod('GET');

        HttpResponse response = http.send(request);

        if(response.getStatusCode() != 200) {
            return '';
        }

        Map<String,Object> result = (Map<String,Object>) JSON.deserializeUntyped(response.getBody());
        Map<String,Object> exchange = (Map<String,Object>) result.get(KEY_USDBRL);

        return exchange.get(KEY_ASK).toString();
    }
}
