list<Account> accounts = [SELECT id, Name, CreatedBy.Name, OwnerId FROM Account WHERE Industry = 'Biotechnology' LIMIT 1];

if (!accounts.isEmpty()) {
    Account acc = accounts[0];
    System.debug('acc.id: ' + acc.id);

    //prepare inputs for the flow
    Map<String,Object> inputs = new Map<String,Object>();
    inputs.put('AccountId', acc.Id);
    inputs.put('AccountName', acc.Name);
    inputs.put('AccountOwnerId', acc.OwnerId);
    inputs.put('CreatedByName', acc.CreatedBy.Name);
    Flow.Interview flow = new flow.Interview.Account_Autolaunched_Flow(inputs);
    flow.start();
    
}else {
    System.debug('No accounts found!');
}