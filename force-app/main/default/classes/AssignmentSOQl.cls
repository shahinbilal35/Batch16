public class AssignmentSOQl {
    public static void childToParent() {
        list<contact> lstContact = [SELECT id, name, account.id, account.name FROM contact];
        for (contact eachContact : lstContact) {
            system.debug('Account id: ' + eachContact.Account.Id + ' Account name: ' + eachContact.account.Name);
            system.debug('------------------');
        }
    }
    public static void parentToChild() {
        list<account> lstAccount = [SELECT id, name, (select id, name from contacts) FROM account];

        for (Account eachAccount : lstAccount) {
            list<contact> listCOnt = eachAccount.Contacts;
            for (contact eachContact : listCont) {
                system.debug('Contact name: ' + eachContact.Name + ' contact id: ' + eachContact.id);
                system.debug('------------------');
            }    
        }   
    }
}