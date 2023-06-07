public class SPTriggerHandler {
    //a method which automates default ticket creation.
    //parameter: List<SP> newly created salesforce project records.
        //If we are insert 50 project, we have to create corresponding 50 tickets. 1 for each Project.
    public static void createDefaultTicket(list<salesforce_project__c> spTriggerNew) {
        //create list of ticket so create bulk records
        List<Salesforce_Ticket__c> listST = new List<Salesforce_Ticket__c>();

        for (Salesforce_Project__c newSP : spTriggerNew) {
            Salesforce_Ticket__c st = new Salesforce_Ticket__c();
            st.Subject__c = 'Default ST';
            st.Salesforce_Project__c = newSP.Id;//relationship field
            listST.add(st);
        }
        insert listST;
    }

    public static void validate1(list<salesforce_project__c> spTriggerNew, list<salesforce_project__c> spTriggerOld, Map<id, salesforce_project__c> spTriggerNewMap,Map<id, salesforce_project__c> spTriggerOldMap) {
        //logic
        
        //assuming we update 10 SP
            //only in 3 projects we are updating status to completed
        
        //create set of id
            //for each loop triggernew
                //old status != new status and new status = completed
                    //add SP ID to set<id>
        set<id> spId = new set<id>();
        for (Salesforce_Project__c newSP : spTriggerNew) {
            //old status != new status and new status = completed
            if (newSP.status__c != spTriggerOldMap.get(newSP.id).Status__c && newSP.Status__c == 'Completed') {
                 //add SP ID to set<id>
                spId.add(newSP.Id);
            }
        }

        //get all the tickets of spid where status is not completed
        List<Salesforce_Ticket__c> listST = [select id, salesforce_project__c, status__c from salesforce_ticket__c where Salesforce_Project__c in :spId and status__c != 'Completed'];

        //for each loop ticket
            //get new project from newMap
                //addError
        for (Salesforce_Ticket__c eachST : listST) {
            //get SP record
            Salesforce_Project__c sp = spTriggerNewMap.get(eachST.Salesforce_Project__c);
            sp.addError('Cannot complete project because all its tickets are NOT completed.');
        }

    }
    @future
    public static void updateDescFuture(set<id> SpIds) {
        List<Salesforce_Project__c> SpList = [select id, description__c from Salesforce_Project__c where id in :SpIds];
        for (Salesforce_Project__c sp : SpList) {
            sp.Description__c = 'Updated from future';
            
        }
        update SpList;
        
    }
}