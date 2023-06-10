Map<string, countryCode__c> allCC = countryCode__c.getAll();
System.debug(allCC);

for (string eachCountry : allCC.keySet()) {
    System.debug(eachCountry + ' country code is ' + allCC.get(eachCountry).Code__c);
    
}
System.debug('-------');

// if we want to get detail of any particular country
countryCode__c irCC = countryCode__c.getInstance('Iraq');
System.debug('irCC: ' + irCC);
System.debug('code of Iraq: ' + irCC.Code__c);