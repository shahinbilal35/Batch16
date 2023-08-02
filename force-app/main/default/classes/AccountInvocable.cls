public with sharing class AccountInvocable {
    
    @InvocableMethod(label='Close Open Opportunities'
    description='By receving an account id, it closes all the open opportunities'
    category='Account')
    public static void closeOpportunities(List<Id> accountIds) {
        //Get all the open opportunities
        List<Opportunity> opps = [SELECT Id, StageName FROM Opportunity 
                                WHERE StageName NOT IN ('Closed Won', 'Closed Lost') 
                                AND AccountId IN :accountIds];
        
        if(!opps.isEmpty()) {
            for(Opportunity opp : opps) {
                opp.StageName = 'Closed Lost';
            }
            //update
            try {
                update opps;
            } catch(Exception ex) {
                //create log
                System.debug(ex.getMessage());
            }
        }
    }
}