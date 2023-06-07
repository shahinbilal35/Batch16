public class AccountTriggerHandler2 {
//     Whenever a New Account Record is created, an associated Contact Record must be created
// automatically. Contact record fields as below:
// - Account name as Contact last name
// - Account phone as contact phone

    public static void newAccCont(List<account> accTriggerNew, List<account> accTriggerOld, Map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldmap) {
        list<contact> newContact = new List<Contact>();

        for (Account newAcc : accTriggerNew) {
            Contact cont = new contact();
            cont.LastName = newAcc.name;
            cont.phone = newAcc.phone;
            cont.AccountId =  newAcc.id;
            newContact.add(cont);


            
        }
        if (!newContact.isEmpty()) {
            insert newContact;
        }
        

        
    }











    // public static void updateRating(List<account> accTriggerNew, List<account> accTriggerOld, Map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldmap) {
    //     Set<Id> accID  = new Set<Id>();
    //         for (account Acc : accTriggerNew) {
    //             if(Acc.rating == 'Hot'){
    //                 accID.add(Acc.Id);
    //             }
    //         }
    //         List<account> accList = [SELECT id, rating, (SELECT id FROM opportunities WHERE isClosed = FALSE) FROM account WHERE id IN : accID];
    //         for (account newAcc : accList) {
    //             if (newAcc.Opportunities.size() < 3) {
    //                 accTriggerNewMap.get(newAcc.id).addError('This account CANNOT be HOT. OKay?');
    //             }
    //         }
    //    }

 
}