public class MyBatchClass implements Database.Batchable<sObject> {
    
    public Database.QueryLocator start(Database.BatchableContext bc) {
		return Database.getQueryLocator([SELECT Id, Name FROM Account]);
    }
    
    public void execute(Database.BatchableContext bc, List<Account> records){
        for(Account conta : records) {
         conta.Name = 'Atualização via batch atraves de um agendamento' ;  
        }
    update records;
    }   
    
    public void finish(Database.BatchableContext bc){
        
	}
}