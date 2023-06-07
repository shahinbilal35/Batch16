public class OperationsHelper {
    public decimal largestOutOfTwoNumbers(decimal x, decimal y){
        if(x>y){
            return x;
        }else if(x<y){
            return y;
        }else{
            return null;
        }
    }
   
}