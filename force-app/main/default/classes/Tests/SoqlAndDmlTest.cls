@istest
public class SoqlAndDmlTest {
    @istest
    private static void getAccWithOppTest() {
        List<Account> accList = new List<Account>();
        // for (Integer i = 1; i <= 3; i++) {
        //     account acc = new account();
        //     acc.name = 'Demo ' + i;
        //     accList.add(acc);
        // }
        account acc1 = new account();
        acc1.name = 'Demo 1';
        accList.add(acc1);
        account acc2 = new account();
        acc2.name = 'Demo 2';
        accList.add(acc2);
        account acc3 = new account();
        acc3.name = 'Demo 3';
        accList.add(acc3);
        insert accList;

        List<Opportunity> oppList = new List<Opportunity>();
        for (account acc : accList) {
            Opportunity opp = new Opportunity();
            opp.name = acc.name + ' Opportunity';
            opp.CloseDate = date.today().addDays(30);
            opp.StageName = 'prospecting';
            opp.AccountId = acc.id;
            oppList.add(opp);
        }
        insert oppList;

        integer sz = SoqlAndDml.getAccWithOpp();
        assert.areEqual(3, sz);
    }
    @istest
    private static void createAccountTest() {
        SoqlAndDml.createAccount('Softinnovas');
        account acc = [select id, name from account limit 1];
        assert.areEqual('Softinnovas', acc.name);
        List<Contact> conList = [select id from contact];
        assert.isTrue(conList.size()>0);
    }
}