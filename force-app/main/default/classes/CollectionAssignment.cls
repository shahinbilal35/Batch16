public class CollectionAssignment {
    Set<String> countriesSet = new set<String>{'India', 'Usa', 'Russia', 'Germany', 'Singapore', 'Japan'}; 

    // public void printLowerCase (){
    //     List<String> LowercaseCountries = new List<String>();

    //    for (string eachcountry : countriesSet) {
            
    //         string country2 = eachcountry.toLowerCase();
    //         LowercaseCountries.add(country2);    
    //         System.debug('lowecase Countries : ' + country2);
    //     }
    //       //  System.debug(LowercaseCountries);

    // } 
           
    public static List<String> printUpperCase(set<String> MrAliParameter ) {
            List<String> UppercaseCountries = new List<String>();
            for (String Bigcountrys : MrAliParameter) {
                String Nameitafter =  Bigcountrys.toUpperCase();
                UppercaseCountries.add(Nameitafter);
                System.debug( 'Upper Countries : ' +  Nameitafter);
            }
            return UppercaseCountries;
        }
}



/* 1.Create a class CollectionAssignment 
2.Create a set<String> countriesSet to store countries India, USa, Russia, Germany, 
Singapore, Japan. 
3.Create a method (printLowercase)to print all countries name is lowercase 
  a. Iterate setlist and convert each string to lowercase then add to list 
  b. Print the list 
3.Create a method (printUppercase) to print all countries name is uppercase 
  a. Iterate setlist and convert each string to uppercase then add to list 
  b. Print the list 
 
 
CollectionAssignment.apex 
CollectionAssignment ca = new CollectionAssignment (); 
Ca. printLowercase(); 
Ca. printUppercase ();

*/ 