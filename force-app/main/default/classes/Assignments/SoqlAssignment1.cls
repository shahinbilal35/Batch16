public class SoqlAssignment1 {
    public static void topEmployees() {
        list<employee__c> lstEmp = [SElECT id, First_name__c, salary__c FROM employee__c ORDER BY salary__c desc LIMIT 5];
    
        for (Employee__c eachEmp : lstEmp) {
            System.debug(eachEmp.First_Name__c+'\'s salary: ' + eachEmp.Salary__c);
            
        }
    }

}