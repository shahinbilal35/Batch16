@istest
public with sharing class AccountTiggerTest {
    @isTest
    private static void testAccTrigger1() {
        List<account> listAcc = new list<account>{
            new account(name = 'May', phone = '7775556666', Industry = 'Energy'),
            new account(name = 'June'),
            new account(name = 'Sunday', Industry = 'Energy')
        };
        insert listAcc;
        List<account>  getAccount = [select id, name from Account];
        assert.areEqual(3, getAccount.size());
        
    }

}