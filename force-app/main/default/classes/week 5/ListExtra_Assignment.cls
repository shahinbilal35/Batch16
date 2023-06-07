public class ListExtra_Assignment {
    
    public static List<String> schoolsList(String medium) {
        List<String> listAllSchool = new List<String>{'S1 English', 'S2 English', 'S3 Turkish', 'S4 English', 'S5 Turkish', 'S6 Japanese'};
        List<String> schoolsOfMedium = new List<String>();
        
        for(String eachschool : listAllSchool) {
            if(eachschool.contains(medium)) {
                schoolsOfMedium.add(eachschool);
           
            }
        }
        
        return schoolsOfMedium;
    }
    
}
