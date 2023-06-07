public class MapDemo {
    public static void mapExample() {
        //key->string
        //value -> integer
        map<string, integer> map1 = new map<string, integer>();
        //we want to add key-value pair
        //put means add
        map1.put('one', 101);
        map1.put('two', 201);
        map1.put('three', 303);
        map1.put('one', 1001);
        map1.put('two', 2002);
        system.debug(map1);
        
    }
}