public class MyHelloWorld {

    public static void applyDiscount(Dish__c[] dishes) {
       for (Dish__c b :dishes){
          b.Price__c *= 0.9;
       }
    }

}