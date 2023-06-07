@istest
public class OppTriggerHandlerTest {
    @TestSetup
    static void makeData(){
        List<Account> acclist = new List<Account>();
        /*for (Integer i = 1; i <=3 ; i++) {
            account acc = new account();
             acc.Name = 'Demo test ' + i;
             acclist.add(acc);
        }*/
        account acc1 = new account();
        acc1.Name = 'Demo test 1';
        acclist.add(acc1);
        account acc2 = new account();
        acc2.Name = 'Demo test 2';
        acclist.add(acc2);
        account acc3 = new account();
        acc3.Name = 'Demo test 3';
        acclist.add(acc3);

        insert accList;

        List<Opportunity> oppList = new List<Opportunity>();
        for (Integer i = 1; i <= 300; i++) {
            Opportunity opp = new Opportunity();
            opp.name = 'Opportunity Test ' + i;
            opp.CloseDate = date.today().addDays(60);
            opp.StageName = 'Prospecting';
            if (i<=100) {
                opp.Amount = 100;
                opp.AccountId = accList[0].id;
            } else if (i<=200) {
                opp.Amount = 200;
                opp.AccountId = accList[1].id;
            } else {
                opp.Amount = 300;
                opp.AccountId = accList[2].id;
            }
            oppList.add(opp);
        }
        //bu insert ayni zamanda insert metodumu da tetikliyor ve test etmis oluyor.
        insert oppList;
    }
    @istest
    private static void insertTest() {
        // acc1 e bagli opportunitylerin amount toplamlari = 10000
        // acc2 e bagli opportunitylerin amount toplamlari = 20000
        // acc3 e bagli opportunitylerin amount toplamlari = 30000
        List<Account> accList = [select id, name, description from account];
        assert.isTrue(accList[0].Description.contains('10000'));
        assert.isTrue(accList[1].Description.contains('20000'));
        assert.isTrue(accList[2].Description.contains('30000'));
    }
    @istest
    private static void updateTest() {
        List<Opportunity> oppList = new List<Opportunity>();
        Opportunity opp1 = [select id, name, amount  from Opportunity where name = 'Opportunity Test 1'];
        opp1.amount += 1;
        oppList.add(opp1);

        Opportunity opp2 = [select id, name, amount  from Opportunity where name = 'Opportunity Test 300'];
        opp2.AccountId = null;
        oppList.add(opp2);

        test.startTest();
        update oppList;
        test.stopTest();


        // acc1 e bagli opportunitylerin amount toplamlari = 10001
        // acc2 e bagli opportunitylerin amount toplamlari = 20000
        // acc3 e bagli opportunitylerin amount toplamlari = 29700
        List<Account> accList = [select id, name, description from account];
        assert.isTrue(accList[0].Description.contains('10001'));
        assert.isTrue(accList[1].Description.contains('20000'));
        assert.isTrue(accList[2].Description.contains('29700'));
    }
    @istest
    private static void deleteTest() {
        Opportunity opp = [select id, name, amount, accountId from Opportunity where name = 'Opportunity Test 150'];
        id accId = opp.AccountId;
        test.startTest();
        delete opp;
        test.stopTest();
        account acc = [select id, description from account where id =: accId];
         // acc2 e bagli opportunitylerin amount toplamlari = 19800
         assert.isTrue(acc.Description.contains('19800'));
    }
}