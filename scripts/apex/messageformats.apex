//JSON format
{
    "Name" : "Universal Containers",
    "Type" : "New Costumer",
    "Industry" : "Education",
    "Annual Revenue" : 2000000
}

//UC1: Convert an account record into JSON format
Account acc = [SELECT Id, Name, Type, Industry, AnnualRevenue FROM Account WHERE Type != null AND Industry != null LIMIT 1];
System.debug(acc);
String jsonString  = JSON.serialize(acc);
System.debug(jsonString);

//UC2: Convert 5 account record into JSON format
List<Account> acc = [SELECT Id, Name, Type, Industry, AnnualRevenue FROM Account WHERE Type != null AND Industry != null LIMIT 5];
System.debug(acc);
String jsonString  = JSON.serialize(acc);
System.debug(jsonString);

//UC3: Convert a contact record into JSON format (FirstName, LastName, Email, Title, Department)
Contact con = [SELECT Id, FirstName, LastName, Email, Title, Department FROM Contact WHERE Email != null LIMIT 1];
System.debug(con);
String jsonString  = JSON.serialize(con);
System.debug(jsonString);

//UC2: Convert 5 contact record into JSON format
List<Contact> con = [SELECT Id, FirstName, LastName, Email, Title, Department FROM Contact WHERE Email != null AND Department != null LIMIT 5];
System.debug(con);
String jsonString  = JSON.serialize(con);
System.debug(jsonString);


RestCallouts.getAnimals();
RestCallouts.getProducts();
RestCallouts.getAirlines(1);
RestCallouts.getUsers();
RestCalloutsUsers.getUsers();
RestCallouts.getCase();
SoapCallouts.getParkByCountry('United States');
SoapCallouts.add(1020, 2430);
SoapCallouts.multiply(1020, 2430);