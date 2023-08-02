public with sharing class AccountHotInvocable {
    
    @InvocableMethod(label='Update Opportunities'
    description='By receving an account id, it update all the open opportunities'
    category='Account')
    public static void updateOpportunities(List<Id> accountIds) {
        //Get all the open opportunities
        List<Opportunity> opps = [SELECT Id, description, closeDate FROM Opportunity 
                                WHERE StageName NOT IN ('Closed Won', 'Closed Lost') 
                                AND AccountId IN :accountIds];
        
        if(!opps.isEmpty()) {
            for(Opportunity opp : opps) {
                opp.Description = 'Top Tier Customer';
                opp.CloseDate = Date.today().addDays(2);
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