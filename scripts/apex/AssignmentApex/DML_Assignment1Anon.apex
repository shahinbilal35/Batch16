DML_Assign1.insertRecord();
DML_Assign1.updateRecords();

delete [select id, name from account where createddate = today];