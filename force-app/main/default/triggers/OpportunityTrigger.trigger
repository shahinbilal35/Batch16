trigger OpportunityTrigger on Opportunity (before insert, before update, before delete, after insert, after update, after delete) {
    //soru : Bir opportunity nin Amount update edildiğinde, amount olan bir opportunity create edildiginde veya amount olan bir opportunity record silindiginde bağlı olduğu accountun tüm opportunities nin Amount toplamları Accountun Description kısmına yazılsın.
    
    //1. asama insert durumu..
    if (trigger.isAfter) {
       if (trigger.isInsert) {
           OppTriggerHandler.insertMetot(trigger.new);
       }
       //2. asama update durumu
       if (trigger.isUpdate) {
           OppTriggerHandler.updateMetot(trigger.new, trigger.oldMap);
       }
       //3. asama delete durumu
       if (trigger.isDelete) {
           OppTriggerHandler.deleteMetot(trigger.old);
       }
    }
    
    
   }