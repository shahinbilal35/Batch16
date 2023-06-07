public class ModernMaths {
    public static void printFactors(integer num){
        string result ='';
        for (Integer i = 1; i <= num; i++) {
            integer remainder = math.mod(num, i);
            if (remainder == 0) {

                result += i +', ';
                
            }
        }
        system.debug(result);
    }

}