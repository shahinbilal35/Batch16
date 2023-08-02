public class EmployeeTriggerHandler {
    public static void checkDepartment(list<employee__c> triggernew) {
        for (employee__c eachEmp : triggernew) {
            if (eachEmp.Department__c == null) {
                eachEmp.Department__c.addError('Department can not be empty');
                
            }
            
        } 
    }
    public static void countEmployee(list<Employee__c> triggernew) {
        set<id> depIds = new set<id>();
        for (employee__c eachEmp : triggernew) {
            if (eachEmp.Department__c !=null) {
                depIds.add(eachEmp.Department__c);
                
            }
            
        }
        list<department__c> depLst =[select id, name__c, employee_count__c, (select id from employees__r) from Department__c where id in :depIds];
        for (department__c eachDep : depLst) {
            eachDep.employee_count__c = eachDep.Employees__r.size();
            
        }
        update depLst;
         
    }
    public static void deleteInActive(list<Employee__c> triggernew) {
        set<id> inActiveIds = new set<id>();
        for (Employee__c EachDeleteEmp : triggernew) {
            if (EachDeleteEmp.isActive__c ==false) {
                inActiveIds.add(EachDeleteEmp.id);
                
            }

            
        }
        delete[select id from Employee__c where id in :inActiveIds];
            
    }



//     //why handler?
//         //to create methods and call it from trigger.
//         //to have more clean trigger
//         //easy to maintain
//         //reuse functionality

//     public static void updateJoinDate(List<Employee__c> empTriggerNew) {
//         for (Employee__c newEmp : empTriggerNew) {
//             if (newEmp.joinDate__c == null) {
//                 newEmp.JoinDate__c = date.today();
//             }
//         }
//     }

//     public static void validateJoinDate(List<employee__c> empTriggerNew) {
//         for (Employee__c newEmp : empTriggerNew) {
//             //check if joindate is in future
//             if(newEmp.JoinDate__c > date.today()){
//                 newEmp.joinDate__c.addError('Join date cannot be in Future. Alright?');
//             }
//         }
//     }
}