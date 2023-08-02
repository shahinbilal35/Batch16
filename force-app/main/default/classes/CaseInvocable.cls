public with sharing class CaseInvocable {
    
    @InvocableMethod(label='Send Email & Save as Activity'
    description='This method sends an email and save the same as activity'
    category='My Case')
    public static void sendEmailAndSaveActivity(List<CaseRequest> requestInputs) {
        List<Messaging.SingleEmailMessage> msgs = new List<Messaging.SingleEmailMessage>();
        for(CaseRequest req : requestInputs) {
            Messaging.SingleEmailMessage msg = new Messaging.SingleEmailMessage();
            msg.setSubject('Case Created: ' + req.caseNumber);
            msg.setPlainTextBody('Hello there, \n'
                + 'A case has been created for your query. Our customer representatives are going to look at it shortly. \n\n'
                + 'Thank you, \n'
                + 'Salesforce'
            );
            msg.setTargetObjectId(req.contactId);
            msg.setSaveAsActivity(true);
            msgs.add(msg);
        }
        //send messages
        try {
            Messaging.sendEmail(msgs);
        } catch(Exception ex) {
            //create a log
            System.debug(ex.getMessage());
        }
    }

    public class CaseRequest {
        @InvocableVariable(label='Case Number' description='Case Number' required=true)
        public String caseNumber;

        @InvocableVariable(label='Contact Id' description='Contact Id' required=true)
        public Id contactId;
    }
}