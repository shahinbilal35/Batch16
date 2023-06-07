public class Queuable16second implements Queueable{
    //Queuable2=> Annual Revenuesi 10000 olan accountlara bağlı olan contaclarin lead source ni 'Partner Referral' yapın..
    //1. asama Soql ile islem yapilacak recordlarin listesini getirelim..
    List<Contact> conList = [select id, leadSource from contact where accountId != null and account.AnnualRevenue = 10000];

    // execute icinde bu contactlarin herbirinin lead sourcesini 'Partner Referral' yapalim..
    public void execute(QueueableContext context){
        for (contact con : conList) {
            con.LeadSource = 'Partner Referral';
        }
        update conList;
    }
}