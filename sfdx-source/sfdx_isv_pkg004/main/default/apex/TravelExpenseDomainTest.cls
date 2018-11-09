@isTest (SeeAllData=false)
private class TravelExpenseDomainTest {
    static testMethod void validateGetAll() {
        List<Travel_Expense__c> travelExpenses = new List<Travel_Expense__c>();

        travelExpenses.add(new Travel_Expense__c(
            name        = 'Sample Travel Expense',
            amount__c   = 2325.29,
            approved__c = false
        ));

        INSERT travelExpenses;
        System.debug('-->travelExpenses after INSERT: ' + travelExpenses);

        TravelExpenseDomain txd = new TravelExpenseDomain();

        List<Travel_Expense__c> retrievedTravelExpenses = txd.getAll();

       // Test that the trigger correctly updated the price
       System.assertEquals(1, retrievedTravelExpenses.size());
    }
}

