trigger CaseTrigger on Case (before insert) {
    system.debug('before insert case trigger');
    //number of recrods?
    CaseTriggerHandler.countRecords += trigger.size;
    system.debug('number of records processed: ' + CaseTriggerHandler.countRecords);
    CaseTriggerHandler.countTrigger ++;
    System.debug('Total number trigger executed '+ CaseTriggerHandler.countTrigger);
}