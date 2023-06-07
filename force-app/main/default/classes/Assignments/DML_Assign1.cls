public class DML_Assign1 {
    public static void insertRecord() {
        List<Account> lstAccount = new List<Account> ();

        for (integer i = 1; i < 21; i++) {
            Account accRec = new Account();
            accRec.name = 'Test account created '+ i;
            lstAccount.add(accRec);
            
        }
        insert lstAccount;     
    }
    public static void updateRecords() {
        list<account> updRec =[select id, name from account where createddate = today];
        for (Account each20record : updRec) {
            each20record.name = each20record.name + ' updated';
            
        }
        update updRec;

        
    }
}