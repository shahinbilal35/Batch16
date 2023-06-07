public class CollectionAssignmen {
    Set<String> countriesSet = new Set<String>{'India', 'USa', 'Russia', 'Germany', 'Singapore', 'Japan'};
    
    public void printLowercase() {
        List<String> lowercaseList = new List<String>();
        for (String convert : countriesSet) {
            lowercaseList.add(convert.toLowerCase());
        } 
        System.debug(lowercaseList);
    }
    
    public void printUppercase() {
        List<String> uppercaseList = new List<String>();
        for (String convert2 : countriesSet) {
            uppercaseList.add(convert2.toUpperCase());
        } 
        System.debug(uppercaseList);
    }
}
