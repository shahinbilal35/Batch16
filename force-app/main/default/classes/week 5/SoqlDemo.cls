public class SoqlDemo {
    public static void accountSOQL1() {
        list<account> listAcc = [select id, name, phone from account];
        system.debug('listAcc: ' + listAcc);

        list<contact> listCon = [select id, name, phone from contact];
        system.debug('listCon: ' + listCon);
    }

    public static void accountSOQLOneRecord(){
        account acc = [select id, name, phone, createddate from account order by createddate desc limit 1];
        system.debug('acc record ' + acc);
        
        string accountName = acc.Name; //use dot operation to get any FIELD value
        system.debug('acc name is ' + acc.Name);
        system.debug('phone is ' + acc.Phone);
        system.debug('Id is ' + acc.Id);
    }

    public static void accountSOQL_3() {
        list<account> listAcc = [select id, name, accountnumber, phone from account order by createddate desc];

        for (account eachAcc : listAcc) {
            system.debug('each account: ' + eachAcc);
            system.debug('acc name is ' + eachacc.Name);
            system.debug('acc phone is ' + eachacc.phone);
            system.debug('acc number is ' + eachacc.accountnumber);
            system.debug('------');
        }
    }
}