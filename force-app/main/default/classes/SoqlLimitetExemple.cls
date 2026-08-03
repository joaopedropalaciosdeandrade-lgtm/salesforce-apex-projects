public class SoqlLimitetExemple {
    Public static void executarComErro() {
        List<Account> contas = [SELECT Id FROM Account LIMIT 200];
        
        Map<Id, List<Contact>> contatosPorConta = new Map<Id, List<Contact>>();
        
        
        List<Contact> contatos = [
             SELECT
            	Id, Name, AccountId
            FROM Contact
            WHERE AccountId IN:contas
        ];
        
        //contato 1 => conta1
        //contato 2 => conta 2
        //contato 3 = conta 3
        
        
        for(Contact contato : contatos){
      
            if(!contatosPorConta.containsKey(contato.AccountId)) {
                contatosPorConta.put(contato.AccountId, new List<Contact>{contato});     
            } else{
                contatosPorConta.get(contato.AccountId).add(contato);
            }
     }
        for(Account conta : contas) {
            List<Contact> contatosMapa = contatosPorConta.get(conta.id);
            System.debug('Contatos da conta: ' + ' ' + contatos);
            
        }
   }
 }