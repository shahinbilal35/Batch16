public  class ErrorLogHelper {
    /*Apex Class Development:  Develop a reusable Apex Class which contains a method to insert the Error log
     Object records. This method must contains the parameters to get the dynamic details
     of the fields ( Log Date/Time, Log Details & Process Name )*/
     public static void InsertErrorLog( String LogDetails, String ProcessName){
         error_Log__c errorLog = new error_Log__c();
         errorLog.Log_Date_Time__c=Datetime.now();
         errorLog.Log_Details__c=logDetails;
         errorLog.Process_Name__c=processName;
         insert errorLog;
     }
 }