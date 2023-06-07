public class Dog {
    public String name;
    public string color;
    public integer age;

    public Dog(){
        age = 1;
        checkAge();
    }
    public Dog(string nameOfDog, string colorOfDog, integer ageOfDog){
        name = nameOfDog;
        color = colorOfDog;
        age = ageOfDog;
        checkAge();
    }
    public void checkAge(){
        if(age > 0 && age <=1){
            system.debug('Puppy Dog');
        }else if(age > 1 && age <=3){
            system.debug('Young Dog');
        }else if(age > 3 && age <=5){
            system.debug('Adult Dog');
        }else if(age > 5 ){
            system.debug('Old Dog');
        }
    }

}