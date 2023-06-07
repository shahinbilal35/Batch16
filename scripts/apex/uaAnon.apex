list<account> acc =[select id, name from account where createdDate = last_month];
AccountsQueueableExample aq = new AccountsQueueableExample(acc);

id jobId = system.enqueueJob(aq);
//with job id, we can monitor the progress
AsyncApexJob job =[SELECT Id, Status, JobType, MethodName, NumberOfErrors FROM AsyncApexJob where id =:jobId];
system.debug(job);