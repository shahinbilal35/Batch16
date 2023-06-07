public class BatchApex16 implements Database.Batchable<sObject>, Database.stateful {
    //Batch=>Tüm Accountların name lerininin yanına update kelimesini ekleyelim. Annual revenue si olmayanların da Annual Revenueleri 10000 yapılsın..
    public integer skopSayisi = 0;
    public integer recordSayisi = 0;
     public Database.QueryLocator start(Database.BatchableContext BC) {
         // tum accountlar getirilecek
         return Database.getQueryLocator([select id, name, annualRevenue from account]);
     }
 
     public void execute(Database.BatchableContext BC, List<Account> scope) {
         skopSayisi++;
         recordSayisi += scope.size(); 
         List<Account> updateList = new List<Account>();
         for (Account acc : scope) {
             //recordSayisi++;
             // namelere update eklenecek
             acc.name += ' updated';
              // annualRevenue olmayanlar 10000 yapilacak..
             if (acc.AnnualRevenue == null) {
                 acc.AnnualRevenue = 10000;
             } 
             updateList.add(acc);
         }  
         update updateList;
     }
 
     public void finish(Database.BatchableContext BC) {
         // id jobId = System.enqueueJob(new Queuable16first());
         // System.debug('queuable job id = ' + jobId);
         System.enqueueJob(new Queuable16first());
         System.debug('yapilan execute islem sayisi = ' + skopSayisi);
         System.debug('islem yapilan record sayisi = ' + recordSayisi);
         System.debug('Isleminiz basariyla tamamlandi..');
     }
 }