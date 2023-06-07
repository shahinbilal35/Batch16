public with sharing class AccountUpdateHelper {
    @InvocableMethod
    public static void updateAccountWebsite(List<Id> accIds) {
        list<account> accountsUpdate = new list<account>();
        list<account> listAcc = [select id, website from account where id in :accIds];
        for (account eachAcc : listAcc) {
            eachAcc.Website = 'wwww.softinnovasBatch16.com';
            
        }
        update listAcc;
    }
}