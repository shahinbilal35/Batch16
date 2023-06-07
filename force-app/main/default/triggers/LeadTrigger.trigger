trigger LeadTrigger on Lead (before insert, before update) {
    list<lead> lstLead = trigger.new;
    if (trigger.isBefore && trigger.isInsert) {
        System.debug('before insert trigger.new ' + trigger.new);
        System.debug('before insert number of records ' + trigger.new.size());
        for (lead eachLead : trigger.new) {
            System.debug('Before insert trigger.new ' +eachLead);
            System.debug('Before insert lead name ' + eachlead.LastName);
            System.debug('Before insert lead company ' + eachlead.Company);        
        }   
    }
    if (trigger.isBefore && trigger.isupdate) {
        System.debug('before update trigger.new ' + trigger.new);
        System.debug('before update number of records ' + trigger.new.size());
        for (lead eachLead : trigger.new) {
            System.debug('Before update lead id ' +eachLead.Id);
            System.debug('Before update lead name ' + eachlead.LastName);
            System.debug('Before update lead company ' + eachlead.Company);   
            System.debug('Before update lead descprition ' + eachlead.Description);          
        }   
    }


}