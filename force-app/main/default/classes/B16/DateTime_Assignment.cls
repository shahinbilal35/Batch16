public class DateTime_Assignment {
  public void diffOfDate (){

    date  varTomorrowDate =date.newInstance(2023, 04, 06);
    date varTodaysDate = date.newInstance(2023, 04, 05);
   
    integer daysDifference = varTodaysDate.daysBetween(varTomorrowDate);
    system.debug(daysDifference);
  }

  public void timeCheck(){

    Datetime varTomorrowDatetime = Datetime.newInstance(2023, 04, 06, 07, 00, 00);
    datetime var10DaysDatetime = Datetime.newInstance(2023, 04, 15, 09, 00, 00);

    datetime varDatetimeLong = datetime.newInstance(12339874361L);
    system.debug(varDatetimeLong);

    datetime add7Days = varTomorrowDatetime.addDays(7);
    system.debug(add7Days);

    datetime add10Days = var10DaysDatetime.addDays(10);
    system.debug(add10Days);




  }

}