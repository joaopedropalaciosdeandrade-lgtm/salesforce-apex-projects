trigger AccountTrigger on Account (after update) {
	
    Set<Id> contaIds = new Set<Id>();
    
    for (Account conta : Trigger.new){
        contaIds.add(conta.Id);       
    }
   	
    for(Id contaId : contaIds) {
       AtualizaContasFuturas.atualizaContatos(contaId);
    }
}