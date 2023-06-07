public class SoqlAssignment1 {

    public static void topEmployees() {
        list<employee__c> lstEmp = [SElECT id, First_name__c, salary__c FROM employee__c ORDER BY salary__c desc LIMIT 5];
        string topSalary = '';
        for (Employee__c eachEmp : lstEmp) {
        
            System.debug(eachEmp.First_Name__c+'\'s salary: ' + eachEmp.Salary__c);
            
        }
 
    }
    public static void mostPopulated() {
        AggregateResult result = [select count(id), name, country__c from employee__c GROUP BY Country__c ORDER BY country__c desc LIMIT 1];
        System.debug('The most populated countr is ' + result.get('country__c'));
        
        
    }
    

    

}