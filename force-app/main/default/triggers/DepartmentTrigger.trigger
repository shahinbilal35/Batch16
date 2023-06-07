trigger DepartmentTrigger on Department__c (before insert, after insert) {
    if(trigger.isAfter && trigger.isInsert){
        DepartmentTriggerHandler.createDefaultEmpFuture(trigger.newMap.keyset());
    }
}