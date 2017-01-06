@isTest 
public with sharing class LocalTestClass {
	
       static testMethod void validateHelloWorld() {
       Dish__c b = new Dish__c(Dish_Name__c='Chicken Biryani', Price__c=100);
       System.debug('Price before inserting new dish: ' + b.Price__c);

       // Insert dish
       insert b;
    
       // Retrieve the new dish
       b = [SELECT Price__c FROM Dish__c WHERE Id =:b.Id];
       System.debug('Price after trigger fired: ' + b.Price__c);

       // Test that the trigger correctly updated the price
       System.assertEquals(90, b.Price__c);
    }
    
}