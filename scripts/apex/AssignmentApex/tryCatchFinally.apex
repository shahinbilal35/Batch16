// Opportunity opp = new Opportunity();
// opp.CloseDate = date.today().addDays(60);
// opp.StageName = 'Prospecting';
// insert opp;
// System.debug(opp);

try {
    Opportunity opp = new Opportunity();
    //opp.name = 'Try test';
    opp.CloseDate = date.today().addDays(60);
    opp.StageName = 'Prospecting';
    insert opp;
    System.debug(opp);
}
catch(ListException lex){
    System.debug('list Error : ' + lex);
}
// catch(DmlException dex){
//     System.debug('Dml Error : ' + dex);
// }
catch (Exception e) {
    System.debug(e);
    System.debug(e.getTypeName());
    System.debug(e.getMessage());
    System.debug(e.getLineNumber());
    System.debug(e.getStackTraceString());
}
finally {
    System.debug('the end');
}

// List<string> List1;
// string a = List1[0];
// System.debug(a);

try {
    List<string> List1;
    string a = List1[0];
    System.debug(a);
}
catch(DmlException dex){
    System.debug('Dml Error : ' + dex);
}
catch(NullPointerException npe){
    System.debug('Null Error : ' + npe);
}
catch (Exception ex) {
    System.debug('Genel Error : ' + ex);
}

// List<String> List2 = new List<String>();
// List2.add('John');
// string b = List2[1];
// System.debug(b);

try {
    List<String> List2 = new List<String>();
    List2.add('John');
    string b = List2[1];
    System.debug(b);
}
catch(ListException lex){
    System.debug('List Error : ' + lex);
}
catch (Exception ex) {
    System.debug('Genel Error : ' + ex);
}

// string s;
// Boolean c = s.contains('abc');
// System.debug(c);

try {
    string s;
    Boolean c = s.contains('abc');
    System.debug(c);
}
catch(DmlException dex){
    System.debug('Dml Error : ' + dex);
}
catch (Exception ex) {
    // error_log err1 = new error_log();
    // err1.description = ex.getMessage();
    // insert err1;
    System.debug('Genel Error : ' + ex);
}