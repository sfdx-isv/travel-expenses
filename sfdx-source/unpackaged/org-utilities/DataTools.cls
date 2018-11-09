public with sharing class DataTools {
    public static void DeleteTravelExpenses() {
        List<Travel_Expense__c> travelExpensesToDelete 
            = [SELECT Id FROM Travel_Expense__c];
        DELETE travelExpensesToDelete;
    }
}
