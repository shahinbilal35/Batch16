Employee newEmp = new Employee();
newEmp.setName('Walter White');
newEmp.setSalary(20000);
string newEmpName = newEmp.getName();
decimal newEmpSalary = newEmp.getSalary();
system.debug(newEmpName + ' salary is ' + newEmpSalary);
//newEmp.name = 'WW';//private//NO work.

system.debug('-----------');
Employee newEmp2 = new Employee();
newEmp2.setName('Jesse park');
newEmp2.setSalary(100000);
string newEmployee2 = newEmp2.getName();
decimal newEmpSalary2 = newEmp2.getSalary();
system.debug(newEmployee2 + 'salaryis ' + newEmpSalary2);
