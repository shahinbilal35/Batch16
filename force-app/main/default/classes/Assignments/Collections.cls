public class Collections {
    public static string listAssignment(integer month){
        list<string> lstMonth = new list<string>();
        lstMonth.add('January');
        lstMonth.add('February');
        lstMonth.add('March');
        lstMonth.add('April');
        lstMonth.add('May');
        lstMonth.add('June');
        lstMonth.add('July');
        lstMonth.add('August');
        lstMonth.add('September');
        lstMonth.add('October');
        lstMonth.add('November');
        lstMonth.add('December');

        string outputMonth = '';

        if (month > 0 && month <= lstMonth.size()) {
            outputMonth = lstMonth.get(month-1);
            
        }else{
            outputMonth='Not a valid month';
        }
        return outputMonth;
    }   
}