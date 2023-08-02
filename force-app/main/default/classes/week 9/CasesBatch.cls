public class CasesBatch implements Database.Batchable<sobject>{
    
    public database.QueryLocator start (Database.BatchableContext bc){
        System.debug('inside start method');
        return database.getQueryLocator([select id, accountid from case]);
    }
    public void execute(Database.BatchableContext bc, list<case> someCases){
        account acc = [select id from account order by CreatedDate desc limit 1];

        list<case> updateCase = new list<case>();
        for(case eachCase : someCases){
            if(eachCase.accountid ==null){
                eachCase.AccountId = acc.id;
                updateCase.add(eachCase);
            }
        }
        update updateCase;
        System.debug(updateCase.size() + ' updated cases.');
    }
    public void finish(Database.BatchableContext bc){
        system.debug('done. no more orphan cases.');
    }

}