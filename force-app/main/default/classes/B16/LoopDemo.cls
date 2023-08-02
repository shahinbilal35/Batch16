public class LoopDemo {
    public void print1(){
         //print 1, 10 times
         integer i = 1; //i is null
         while (i<=10) {
             system.debug(1);
             i++;
         }    
    }
 
    //print 1 to 25
    public void print_int_while(){
         integer i = 1;
         while(i <= 25){
             system.debug(i);
             i++;
         }
         system.debug('after while i ==> ' + i);//what will be value of i?
         system.debug('after while i ==> ' + i);//what will be value of i?
         i++;
         system.debug('after while i ==> ' + i);//what will be value of i?
         system.debug('after while i ==> ' + i);//what will be value of i?
         system.debug('after while i ==> ' + i);//what will be value of i?
    }
 
    //print hello 10 times
    public void printHello(){
      //1. initialzie
      //2. exit condition
      //3. increment/decrement
      //for 10 time, i = 0 to i < 10 OR i <= 9
      for(integer i = 0; i < 10; i++){
         system.debug('hello');
      }
    }
 
    //print 1 to n numbers
    public void print_N_numbers(integer n){
        for (Integer i = 1; i <= n; i++) {
             system.debug(i);
        }
    }
 
    //print 1 to n numbers
    public void print_N_numbers2(integer n){
     //print 1,2,3,4,5,6,7,...n,
         string printN = '';
        for (Integer i = 1; i <= n; i++) {
             //system.debug(i);
             string temp = i + ',';
 
             printN += temp;
             system.debug('inside for printN ==> ' + printN);
 
        }
        system.debug(printN);
    }
    public void printOddNumbers(integer startInt, integer endInt){
        for(integer i =startInt; i < endInt; i++){
            integer remainder = math.mod(i, 2);
            if(remainder == 1){
                system.debug(i);
            }
        }
    }
    public void foorLoopExample(){
        integer no =5;
        integer fact =1;
        for (Integer i = 1; i < no; i++) {
            fact *= i;
            
        }
        system.debug('Factorial of ' + no +' is: ' + fact);
    }
 }