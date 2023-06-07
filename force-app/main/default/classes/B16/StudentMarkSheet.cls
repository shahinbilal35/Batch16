public class StudentMarkSheet {
    string firstName;
    string lastName;
    Integer mathematics;
    integer english;
    integer chemistry;
    static string schoolname;

    public StudentMarkSheet(){
        schoolname = 'Salesforce Public School';
    }
    public void setfirsName(string firstName){
        this.firstName = firstName;
    }
    public string getfirstName(){
        return this.firstName;
    }
    public void setlastName(string lastName){
        this.lastName = lastName;
    }
    public string getlastName(){
        return this.lastName;
    }
    public void setmarks(integer mathematics, integer english, integer chemistry){
        this.mathematics = mathematics;
        this.english = english;
        this.chemistry = chemistry;
    }
    public void showMarkSheet(){
        system.debug('Student name is ' +firstName + ' ' + lastName);
        system.debug('School name is ' +schoolname);
        system.debug('Mark for Mathematics' +mathematics);
        system.debug('Mark for English' +english);
        system.debug('Mark for Chemistry' +chemistry);

        integer sumOfMarks =(mathematics+english+chemistry);
        if (sumOfMarks >=120) {
            system.debug('You are passed');
        } else {
            system.debug('You need to study more');
        }
    }
}