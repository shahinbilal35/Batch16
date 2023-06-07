public class TicketClass {
    integer ticketNumber;
    string ticketType;

    public void setTicketNumber(integer ticketNumber){
        this.ticketNumber = ticketNumber;
    }

    public integer getTicketNumber(){
        return this.ticketNumber;
    }
    public string getTicketType(){
        
        if(ticketNumber>= 0 && ticketNumber <= 199){
            this.ticketType ='Silver';
        }else if(ticketNumber>= 200 && ticketNumber <= 399){
            this.ticketType ='Gold';
        }else if(ticketNumber>= 400 && ticketNumber <= 600){
            this.ticketType ='Platinum';
        }else{
            this.ticketType ='Undefined';
        }
        return this.ticketType;
    }
}