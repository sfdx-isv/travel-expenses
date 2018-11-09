public with sharing class TravelExpenseDomain {

    public TravelExpenseDomain() {
        // This constructor does nothing!
    }

    public List<Travel_Expense__c> getAll() {
        List<Travel_Expense__c> travelExpenses = [SELECT Id, Name, Amount__c FROM Travel_Expense__c LIMIT 100];
        return travelExpenses;
    }

}