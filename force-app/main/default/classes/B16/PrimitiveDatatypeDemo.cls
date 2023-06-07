public class PrimitiveDatatypeDemo {
   
    //return type --> void
    //method name --> print1
    public void print1(){
        string batchName = 'Batch 16';
        integer totalCandidates = 45; //will NOT work
        boolean isAdminCompleted = true;

        string batchDescription = batchName + ' has ' + totalCandidates + ' candidates. Admin completed: ' + isAdminCompleted;
        system.debug(batchDescription);
    }
    public void print2 (){
        Decimal d1 = 88899.65443;
        system.debug('decimal d1==> + d1');

        long l1 = 987654321L;
        system.debug('long l1==> +l1');
        id accId = '0013x00002RZ1QTAA1';
        system.debug('accId is ' + accId);

        double dd1 =884.54;
        system.debug('double==> ' + dd1);
        object obj1 = 'anything';
        object obj2 = 99;
        object obj3 = l1;
        object obj4 = accId;
        object obj5 = dd1;
        object obj6 = 8765.44;
        system.debug(obj1);
        system.debug(obj2);
        system.debug(obj3);
        system.debug(obj4);
        system.debug(obj5);
        system.debug(obj6);

    }
}