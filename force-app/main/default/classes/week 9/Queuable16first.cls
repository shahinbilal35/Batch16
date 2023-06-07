public class Queuable16first implements Queueable{
    //Queuable1=> Accountlardan Annual Revenuesi 10000 olanlara birer contact create edip bağlayalım.
    public static List<Account> accList = [select id, name from account where AnnualRevenue=10000];
    public void execute(QueueableContext context){
        System.debug('Queuable first calisti..');
        List<contact> conList = new List<Contact>();
        for (account acc : accList) {
            contact con = new contact();
            con.lastName = 'Contact ' + accList.indexOf(acc); 
            con.AccountId = acc.id;
            conList.add(con);
        }
        insert conList;
        System.enqueueJob(new Queuable16second());
    }
}