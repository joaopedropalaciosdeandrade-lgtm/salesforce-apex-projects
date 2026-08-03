public class MinhaClasseSchaduler implements Schedulable {
   
    public void execute(SchedulableContext ctx) {
        Database.executeBatch(new MybatchClass());
    }
}