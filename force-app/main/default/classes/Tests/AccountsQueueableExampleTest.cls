@isTest
public class AccountsQueueableExampleTest {
    @isTest
    private static void testQueueable1() {
        //1. prepare data
        List<Account> accounts = new List<Account>();
        for (Integer i = 0; i < 500; i++) {
            Account acc = new Account(Name = 'Test Account ' + i);
            accounts.add(acc);
        }
        insert accounts;

        test.startTest();
        AccountsQueueableExample aq = new AccountsQueueableExample();
        aq.listAcc = Trigger.new;

        system.enqueueJob(aq);

        test.stopTest();

        //assert
        list<account> listAcc =[select id, name from account where name like '% --SI'];
        assert.areEqual(500, listAcc.size());
        
    }

}