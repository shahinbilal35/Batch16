public class Schedulable16 implements Schedulable {

    public void execute(SchedulableContext SC) {
        BatchApex16 ba16 = new BatchApex16();
        Database.executeBatch(ba16, 11);
    }

}