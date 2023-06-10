trigger ContactTrigger on Contact (before insert, after insert, before update, after update, before delete, after delete, after undelete) {

        if (Trigger.isBefore && Trigger.isUpdate) {
            //call handler method to validate contact update
            ContactTriggerHandler.validate1(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
            ContactTriggerHandler.validate2(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
        }
    
    
    
        // //this will be true in before insert and before update
        // if (Trigger.isBefore) {
        //     system.debug('Contact Before Trigger');
        //     if (Trigger.isInsert) {
        //         system.debug('contact before insert trigger');
        //     }
        //     if (Trigger.isUpdate) {
        //         system.debug('contact before update trigger');
        //     }
        // }
    
        //  if (Trigger.isAfter) {
        //     system.debug('Contact After Trigger');
        //     if (Trigger.isInsert) {
        //         system.debug('contact After insert trigger');
        //     }
        //     if (Trigger.isUpdate) {
        //         system.debug('contact After update trigger');
        //     }
        // }
    
    }
    // if(trigger.isAfter){
    //     if (trigger.isInsert || trigger.isUndelete) {
    //         ContactTriggerHandler.insertContact(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);   
    //     }
    //     if (trigger.isUpdate) {
    //         ContactTriggerHandler.updateContact(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);  
    //     }
    //     if (trigger.isDelete) {
    //         ContactTriggerHandler.deleteContact(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
            
    //     }
    // }


    // if (Trigger.isBefore && Trigger.isUpdate) {
    //     //call handler method to validate contact update
    //     ContactTriggerHandler.validate1(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
    //     ContactTriggerHandler.validate2(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
    // }



    // //this will be true in before insert and before update
    // if (Trigger.isBefore) {
    //     system.debug('Contact Before Trigger');
    //     if (Trigger.isInsert) {
    //         system.debug('contact before insert trigger');
    //     }
    //     if (Trigger.isUpdate) {
    //         system.debug('contact before update trigger');
    //     }
    // }

    //  if (Trigger.isAfter) {
    //     system.debug('Contact After Trigger');
    //     if (Trigger.isInsert) {
    //         system.debug('contact After insert trigger');
    //     }
    //     if (Trigger.isUpdate) {
    //         system.debug('contact After update trigger');
    //     }
    // }

