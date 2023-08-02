public  class SoqlAndDml {
    public static integer getAccWithOpp() {
        set<id> IdAcc= new set<id>();
        list<opportunity> lstOpp=[select id,name,AccountId from Opportunity where accountId != null];
        for(opportunity opp:lstOpp){
            IdAcc.add(opp.accountId);
        }
        list<account> lstAcc=[select id,name from account where id in :IdAcc];
        system.debug(lstAcc.size());
        return lstAcc.size();
  
    }
    public static integer getAccWithOpp2() {
        list<account> lstAcc=[select id,name from account where id in (select AccountId from Opportunity where accountId != null)];
        system.debug(lstAcc.size());
        return lstAcc.size();
        
    }
    public static void createAccount(string isim) {
        account acc=new account();
        acc.name=isim;
        insert acc;
        list<contact> lstCon= new list<contact>();
        for (integer i = 1; i <= 5; i++) {
            contact con =new contact();
            con.firstname=acc.name;
            con.lastName='Contact '+i;
            con.accountId=acc.id;
            lstCon.add(con);
        }
       
        insert lstCon;

        
    }
    public static void highestAnnualRevenue() {
        account acc=[select id,name,annualrevenue,description from account where annualrevenue!=null order by AnnualRevenue desc limit 1 ];
        string message=date.today() +'tarihi itibari ile '+acc.name+' accountunun AnnualRevenue si = '+acc.annualrevenue+' tüm accountlar içinde en büyüktür.';
        acc.description=message;
        update acc;
        
    }
}