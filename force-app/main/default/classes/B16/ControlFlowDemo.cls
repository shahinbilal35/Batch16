public class ControlFlowDemo {
    //check and print bigger integer
   public void checkBigger(integer a, integer b){
        if (a > b) {
            //for more than one statement brackets are mandatory
            system.debug(a +' is bigger than ' + b);
            system.debug('b is smaller than a');
        } else {
            system.debug('b is bigger than a');
            system.debug('a is smaller than b');
        }
   }
   public void checkBigger1(integer a, integer b){
        //if only one statement brackets are optional
        if (a > b) 
            system.debug(a +' is bigger than ' + b);
           
         else 
            system.debug('b is bigger than a');
    }

    public void checkNumber(integer x){
        //x = -15
        if(x > 0){
            system.debug('x is a positive number');
            integer remainder = math.mod(x, 2);
            if (remainder == 0) {
                system.debug(x + ' is even');
            } else {
                system.debug(x + 'is odd');
            }
        } else {
            if(x == 0){
                system.debug('x is zeroooo 😕');
            } else {
                system.debug('x is negative 😞');
            }
        }
    }
}