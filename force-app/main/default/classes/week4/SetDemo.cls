public class SetDemo {
    public static void citySet() {
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
    }
    public static void randomIntegerSet() {
        set<integer> inset = new set<integer>();
        inset.add(15);
        inset.add(21);
        inset.add(10);
        inset.add(15);
        inset.add(15);
        inset.add(10);
        system.debug('int set ==> ' + inset);
        
    }
    public static void setFromList() {
        list<integer> l1 = new list<integer>{10,15,77,55,99,10,77,55};
        system.debug('l1==> ' + l1);

        set<integer> s1 = new set<integer>();
        s1.addAll(l1);
        system.debug('s1==> ' + s1);

        
    }
    public static set<integer> setFromList(list<integer> l1) {
        system.debug('l1 from parameter ==> ' +l1);
        set<integer> s1 = new set<integer>();
        s1.addAll(l1);
        return s1;
    }
}