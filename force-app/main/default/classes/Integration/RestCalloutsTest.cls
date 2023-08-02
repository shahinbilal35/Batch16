@isTest
public with sharing class RestCalloutsTest {
    @TestSetup
    private static void makeData() {
        //create a product record
        Ecommerce_Product__c prod = new Ecommerce_Product__c();
        prod.Name = 'iPhone 14 Pro';
        prod.Brand__c = 'Apple';
        prod.Category__c = 'Smartphone';
        prod.Description__c = 'iPhone 14 Pro';
        prod.Discount_Percentage__c = 4.50;
        prod.Price__c = 1500;
        prod.Rating__c = 4.55;
        prod.Stock__c = 10000;
        prod.Thumbnail__c = 'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcTCu0bkCHO0hVtz8aUHvO2PaFQI1Sy6QtqAN7BI4jtk9av001xWEBIqL71p7MfoVOjnQ4XmEpdxvlXRlt8VfzkCr64fp4u_';
        insert prod;
    }

    @isTest
    private static void getAnimalsTest() {
        Test.startTest();
        //1. Set mock
        RestCalloutsMock mock = new RestCalloutsMock();
        Test.setMock(HttpCalloutMock.class, mock);

        //2. Test the callout method
        HttpResponse response = RestCallouts.getAnimals();

        //3. Perform asserts
        Assert.areEqual(200, response.getStatusCode());
        Assert.areEqual('OK', response.getStatus());
        Test.stopTest();
    }

    @isTest
    private static void getProductsTest() {
        Test.startTest();
        //1. Set mock
        RestCalloutsMock mock = new RestCalloutsMock();
        Test.setMock(HttpCalloutMock.class, mock);

        //2. Test the callout method
        HttpResponse response = RestCallouts.getProducts();

        //3. Perform asserts
        Assert.areEqual(200, response.getStatusCode());
        Assert.areEqual('OK', response.getStatus());
        Test.stopTest();
    }

    // @isTest
    // private static void getAirlinesTest() {
    //     Test.startTest();
    //     //1. Set mock
    //     RestCalloutsMock mock = new RestCalloutsMock();
    //     Test.setMock(HttpCalloutMock.class, mock);

    //     //2. Test the callout method
    //     HttpResponse response = RestCallouts.getAirlines(1);

    //     //3. Perform asserts
    //     Assert.areEqual(200, response.getStatusCode());
    //     Assert.areEqual('OK', response.getStatus());
    //     Test.stopTest();
    // }
    @isTest
    private static void postProductTest() {
        Test.startTest();
        //1. Set mock
        RestCalloutsMock mock = new RestCalloutsMock();
        Test.setMock(HttpCalloutMock.class, mock);

        //2. Test the callout method
        Ecommerce_Product__c prod =[SELECT id FROM Ecommerce_Product__c LIMIT 1];
        HttpResponse response = RestCallouts.postProduct(prod.id);

        //3. Perform asserts
        Assert.areEqual(200, response.getStatusCode());
        Assert.areEqual('OK', response.getStatus());
        Test.stopTest();
    }
    @isTest
    private static void postToDoTest() {
        Test.startTest();
        //1. Set mock
        RestCalloutsMock mock = new RestCalloutsMock();
        Test.setMock(HttpCalloutMock.class, mock);

        //2. Test the callout method
        ToDo__c todo = new ToDo__c();
        todo.Name = 'Test Todo';
        todo.Completed__c = false;
        todo.ToDo_Id__c = 151;
        todo.User_ID__c = 12;
        insert todo;

        //3. Perform asserts
        Test.stopTest();
        ToDo__c todo1 = [SELECT ToDo_Id__c FROM ToDo__c LIMIT 1];
        Assert.areEqual(151, todo1.ToDo_Id__c);
    }
    @isTest
    private static void getCaseTest() {
        Test.startTest();
        //1. Set mock
        RestCalloutsMock mock = new RestCalloutsMock();
        Test.setMock(HttpCalloutMock.class, mock);
        //2. Test the callout method
       HttpResponse response = RestCallouts.getCase();
        //3. Perform asserts
        Assert.areEqual(200, response.getStatusCode());
        Assert.areEqual('OK', response.getStatus());


        Test.stopTest();
        
    }
}