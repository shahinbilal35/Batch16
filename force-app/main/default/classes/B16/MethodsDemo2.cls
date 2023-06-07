public class MethodsDemo2 {
    //return type + parameterized methods
    public string returnMessage(string name){
        system.debug('code reached inside method');
        string returnStr = 'Hi ' + name + ', nice to meet you';
        return returnStr;
    }
    public integer returnMsj(string name){
        string strName = 'Hi ' + name + ', nice to meet you';
        integer rtnI = strName.length();
        return rtnI;

    }

    public boolean nameContainsA(string str){
        boolean checkA = str.containsIgnoreCase('a');
        return checkA;
    }
    
}