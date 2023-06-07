public class DecimalDateTimeAssignment {
    public void decimalAssignmentmethod(){
        decimal d1 = 30.45658525;
    
        decimal ds = d1.setScale(2);
        system.debug('ds is '+ds);

        string str1 = d1.toPlainString();
        system.debug('String '+str1);

        decimal d2 = decimal.valueOf(str1);
        system.debug('Decimal '+d2);

    }
    public void dateTimeAssignment(){
        date myBirthday = date.newInstance(1981, 01, 20);
        system.debug('My birthday is '+myBirthday);

        time newDt = time.newInstance(10, 20, 40, 200);
        system.debug(newDt);
    }

}