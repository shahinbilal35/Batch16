public class BatchClassMail implements Database.Batchable<sObject>, Database.stateful {
    //Soru : Account recordlarinin name ler icindeki 'updated' kelimelerini cikartip islem bittiginde bir mail ile kac recordda islem yapildigini, islemin ne zaman bittigini, kac defa execute edildigini, bunlardan kac tanesinin basarili oldugunu kac tanesinin basarisiz oldugunu 'System Administrator' olan userlara bildirin..
     public integer recordSayisi = 0;
     public Database.QueryLocator start(Database.BatchableContext BC) {
         //query:name icinde 'updated' kelimesi olan account recordlari..
         return Database.getQueryLocator([select id, name from account where name like '%updated%']);
     }
 
     public void execute(Database.BatchableContext BC, List<Account> scope) {
         if (!scope.isEmpty()) {
             recordSayisi += scope.size();
             for (account acc : scope) {
                 //recordSayisi++;
                 acc.name = acc.name.remove('updated');
             }
             update scope;
         }
     }
 
     public void finish(Database.BatchableContext BC) {
         System.debug('islem bitti');
         //Bu batchin bilgilerine ulasiyoruz..
         AsyncApexJob a = [select id, status, JobType, NumberOfErrors, JobItemsProcessed, TotalJobItems, CompletedDate, ExtendedStatus From  AsyncApexJob where id =:BC.getJobId()];
 
         // mail gonderilecek userlerin listesini olusturalim..
         List<user> userList = [select id, email, isActive from User where Profile.Name = 'System Administrator' AND IsActive = TRUE];
 
         for (user u : userList) {
             Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
             mail.setTargetObjectId(u.id);
             mail.setSaveAsActivity(false);
             mail.setSubject('Account namelerde degisiklik ' + a.status);
             mail.setPlainTextBody('The batch Apex job completed on : '+ a.CompletedDate + ',\n\n' + 'Job Status : ' + a.status + ',\n' + 'Total Job Items Processed : ' + a.TotalJobItems + ',\n' + 'Number of Job Items Processed : ' + a.JobItemsProcessed + ',\n' + 'Number of Failures : '+ a.NumberOfErrors + ',\n' + 'Update edilen recordlarin sayisi : ' + recordSayisi);
             Messaging.sendEmail(new Messaging.SingleEmailMessage[] {mail});
         }
 
     }
 
 }