public class xyz {
    public integer power(integer n){
        integer pw = 1;
        string result = string.valueOf(n);
        for (Integer i = 1; i <= n; i++) {
            pw *= n;
            result+='*' + string.valueOf(n);
            
        }
        return pw;
    }

}