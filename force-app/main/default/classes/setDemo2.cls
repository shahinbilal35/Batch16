public class setDemo2 {

    public static void setToUpperCase() {
        //set of string
        set<string> cities = new set<string>();
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Nairobi');
        cities.add('Berlin');
        cities.add('Tokyo');
        cities.add('Tokyo');
        cities.add('Tokyo');
        cities.add('Tokyo');
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Nairobi');
        cities.add('LISBON');
        //it prints in alphabetic order.
        system.debug('cities set ' + cities);

        //convert each element to uppuercase and add in new set
        Set<String> citiesUP = new Set<String>();

        //for each loop on CITIES set
        for (string eachCity : cities) {
            string temp = eachCity.toUpperCase();
            citiesUP.add(temp);
            
        }
        system.debug('uppercase cities ==>' + citiesUP);
    }
    public static void setInteger2() {
        set<integer> setInt = new set<integer>{1,4,5,6,7,8,9,10};
        for (integer eachSet : setInt) {
            system.debug(eachSet + 5);
        }
    }
}