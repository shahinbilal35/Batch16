@isTest
public class DepartmentTriggerHandlerTest {
    @istest
    private static void testFuture1() {
        list<Department__c> listDep = new list<Department__c>{
            new Department__c(Name__c = 'Future'),
            new Department__c(Name__c = 'Present'),
            new Department__c(Name__c = 'Past')
        };
        Test.startTest();
        insert listDep;
        Test.stopTest();
        List<Employee__c> allEmps = [Select id, First_Name__c from employee__c];
        assert.areEqual(3, allEmps.size());

    }

}