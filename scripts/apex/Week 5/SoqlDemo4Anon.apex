SoqlDemo4.empDynamicSOQL(' id, first_name__c');
system.debug('----');
SoqlDemo4.empDynamicSOQL(' id, first_name__c, last_name__c, salary__c, country__c');


SoqlDemo4.accDynamicSoql1('id, name ');
system.debug('----');
SoqlDemo4.accDynamicSoql1('id, name, phone, website, active__c ');

SoqlDemo4.aggregateQuery();