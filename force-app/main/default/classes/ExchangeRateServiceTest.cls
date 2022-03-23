@isTest
public class ExchangeRateServiceTest {
    
    @isTest
    static void testCallout() {
        Test.setMock(HttpCalloutMock.class, new ExchangeRateHttpMock());

        Test.startTest();

        String result = ExchangeRateService.getCurrentDollarExchange();
        System.assertEquals('5.00', result);

        Test.stopTest();
    }
}
