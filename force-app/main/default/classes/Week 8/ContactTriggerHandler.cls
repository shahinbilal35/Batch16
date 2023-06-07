public class ContactTriggerHandler {
    public static void insertContact(List<contact> cTriggerNew, List<contact> cTriggerOld, Map<id, contact> cTriggerNewmap, map<id, contact> cTriggerOldMap) {
        set<id> accIds = new set<id>();
        for (contact con : cTriggerNew) {
            if (con.AccountId != null) {
                accIds.add(con.AccountId);
            } 
        }
        if (!accIds.isEmpty()) {
            numberOfContacts(accIds);
        } 
    }
    public static void updateContact(List<contact> cTriggerNew, List<contact> cTriggerOld, Map<id, contact> cTriggerNewmap, map<id, contact> cTriggerOldMap) {
        set<id> accIds = new set<id>();
        for (contact con : cTriggerNew) {
            if (con.AccountId != cTriggerOldMap.get(con.Id).AccountId) {
                if (con.AccountId != null && cTriggerOldMap.get(con.Id).AccountId !=null) {             
                accIds.add(con.AccountId);
                accIds.add(cTriggerOldMap.get(con.Id).AccountId);
            }
        }      
    }
        if (!accIds.isEmpty()) {
        numberOfContacts(accIds);
    } 
    }
    public static void deleteContact(List<contact> cTriggerNew, List<contact> cTriggerOld, Map<id, contact> cTriggerNewmap, map<id, contact> cTriggerOldMap) {
        set<id> accIds = new set<id>();
        for (contact con : cTriggerOld){
            if (con.AccountId != null) {
                accIds.add(con.AccountId);
            } 
        }
        if (!accIds.isEmpty()) {
            numberOfContacts(accIds);
        } 
    }
    public static void numberOfContacts(set<id> accIds) {
        list<account> accList = [select id, Number_of_Contact__c,(select id from contacts) from account where id in:accIds];
        for (account acc : accList) {
            acc.Number_of_Contact__c = acc.contacts.size();  
        }
        update accList;    
    }
}
    


    // public static void validate1(List<contact> cTriggerNew, List<contact> cTriggerOld, Map<id, contact> cTriggerNewmap, map<id, contact> cTriggerOldMap) {

        
         //validate.
         //if leadsource is ALREADY partner referral, then DON't ALLOW user to update record.
 
         //addError method to add validation or throw error in trigger.
             //we can use addError method in ONE record of trigger.new or trigger.newMap
             //we cannot use addError method on trigger.old or trigger.oldMap
         
    //      for (Contact newContact : cTriggerNew) {
    //          //if old leadsource is partner referral.
    //          Contact oldContact = cTriggerOldMap.get(newContact.Id);
    //          if (oldContact.leadsource == 'Partner Referral') {
    //              newContact.addError('Cannot update contact if lead source is partner referral');
    //          }
 
    //      }
    // }
    // Public static void validate2(List<contact> cTriggerNew, List<contact> cTriggerOld, Map<id, contact> cTriggerNewmap, map<id, contact> cTriggerOldMap) {
    //     for (contact newContact : cTriggerNew) {
    //         if (newContact.LeadSource != cTriggerOldMap.get(newContact.id).LeadSource) {
    //             newContact.LeadSource.addError('cannot update lead source! Please user.Behave! ');
                
    //         }
            
    //     }

    // }
 