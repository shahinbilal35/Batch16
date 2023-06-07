public class String_Assignment {
    public void assignment(){
        string localstring = 'Thanks for the session on the string';
        system.debug(localstring);

        integer findOutTheLenght = Localstring.length();
        system.debug('Lenght of localstring is ' + findOutTheLenght);

        string convert = Localstring.toUpperCase();
        system.debug(convert);

        Boolean checkString = localstring.contains('session');
        system.debug('localstring contains session: ' + checkString);

        Boolean checkString2 = localstring.contains('sessions');
        system.debug('localstring contains sessions: ' + checkString2);

        Boolean checkString3 = localstring.containsIgnoreCase('SESSION');
        system.debug('localstring contains SESSION (ignorecase): ' +checkString3);

        integer print1 = localstring.indexOf('for');
        system.debug(print1);

        integer print2 = localstring.indexOf('an');
        system.debug(print2);

        string remove = localstring.remove('the');
        system.debug(remove);

    }
    
}