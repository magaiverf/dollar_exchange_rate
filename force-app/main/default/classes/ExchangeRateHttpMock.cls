@isTest
global class ExchangeRateHttpMock implements HttpCalloutMock {
    global HTTPResponse respond(HTTPRequest req) {
        HttpResponse response = new HttpResponse();
        response.setHeader('Content-Type', 'application/json');
        response.setBody('{"USDBRL": {"ask": "5.00"}}');
        response.setStatusCode(200);
        return response;
    }
}
