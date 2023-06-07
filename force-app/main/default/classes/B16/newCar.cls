public class newCar {
    integer currentSpeed = 0;
    string carType;
    String carName;

    public void startCar(string carType, string carName){
        system.debug('Car type is ' + carType + (', Car name is ' )+ carName + (' and current spped is ' + currentSpeed));
    }
    public void accelerate (integer x){
        currentSpeed += x;
        system.debug('Updated current speed is ' + currentSpeed);
    }
    public void breake(integer y){
        currentSpeed -= y;
        system.debug('Current speed after breaking ' + currentSpeed);
    }
    public void stopCar(){
        currentSpeed = 0;
        system.debug('Cuurent speed after stoppping ' + currentSpeed);
    }
    public void checkSpeed(){
        if(currentSpeed >0 && currentSpeed <= 30){
            system.debug('City Mode');

        }else if(currentSpeed >30 && currentSpeed <= 60){
            system.debug('Economy Mode');

        }else if(currentSpeed >60){
            system.debug('Sport Mode');

        }
    }


}