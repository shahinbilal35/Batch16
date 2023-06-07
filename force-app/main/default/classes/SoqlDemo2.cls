public class SoqlDemo2 {
    public static void projectSOQL1() {
        list<salesforce_project__c> sp = [SELECT id, name, project_name__c, status__c FROM salesforce_project__c WHERE Status__c = 'New'];

        for (Salesforce_Project__c eachSP : sp) {
            system.debug('project name is ' + eachSP.Project_Name__c + 'its status is ' + eachSP.Status__c);
            
        }
        
    }
    public static void projectSOQL1(string status) {
        list<salesforce_project__c> sp = [SELECT id, name, project_name__c, status__c FROM salesforce_project__c WHERE Status__c = :status];

        for (Salesforce_Project__c eachSP : sp) {
            system.debug('project name is ' + eachSP.Project_Name__c + 'its status is ' + eachSP.Status__c);
            
        }
        
    }
    //Opportunities to Accounts
    public static void childToParentSOQL1() {
        List<Opportunity> listOpp = [SELECT id, name, amount, closedate, account.annualrevenue, account.Name FROM Opportunity];
        for (Opportunity eachOpp : listOpp) {
            System.debug('opp name and amount is ' + eachOpp.Name + ' - ' + eachOpp.Amount);
            System.debug(' acc name and its revenue is ' + eachOpp.Account.Name + ' - ' + eachOpp.Account.AnnualRevenue);
            System.debug('---------');

            
        }
        
    }

}