public class SfProjectHelper {
    @InvocableMethod
  
    public static void sfTicketCompleted(list<id> sfIds) {
    
        List<Salesforce_Ticket__c> listSfTicket = [select id, status__c from Salesforce_Ticket__c where Salesforce_Project__c  =:sfIds and status__c != 'Completed'];
        
        for (Salesforce_Ticket__c eachTckt : listSfTicket) {

                eachTckt.Status__c = 'Completed';
        
    }
    update listSfTicket;
    }
}