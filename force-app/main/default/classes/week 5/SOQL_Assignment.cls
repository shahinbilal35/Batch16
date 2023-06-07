public class SOQL_Assignment {
    public static void soql_WhereClause() {
        list<contact> lstContact = [SELECT id, name FROM contact WHERE name like 'A%'];
        system.debug('list of Contact ' + lstContact );
        integer sizeOfList = lstContact.size();
        system.debug('the size of lstContact: ' + sizeOfList);
    }
    public static void soql_FromMethod() {
        list<contact> lstContact = [SELECT id, Lastname,  phone FROM contact];
        system.debug('last name and phone number of contact list ' + lstContact);
        for (contact eachcontact : lstContact) {
            system.debug('lastname of each record is ' + eachcontact.LastName );
            system.debug('phone number of each record is ' + eachcontact.Phone );

            
        }

        
    }

}