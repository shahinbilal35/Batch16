public class MethodsDemo {
    //return type is mandatory.
    public void welcomeMessage(){
        system.debug('Hi there, welcome to the world');
        
    }
    //print dynamic message
    //parameter -> string datatype
    public void samplePrintMessage(string m){
        //msg is parameter variable name which we use inside method
        system.debug(m);

    }
    public void newMessage(string name){
        
        system.debug('Hi ' + name + ', welcome to the world of the apex, buddy');

    }
  
}