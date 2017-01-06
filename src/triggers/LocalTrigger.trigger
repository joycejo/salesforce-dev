trigger LocalTrigger on Dish__c (before insert) {
    
   Dish__c[] dishes = Trigger.new;

   MyHelloWorld.applyDiscount(dishes);
    
}