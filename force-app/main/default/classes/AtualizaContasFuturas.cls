public class AtualizaContasFuturas {
    
    
    @future
    public static void atualizaContatos(String accountId){
        
        List<Contact> lstContatos = [
            SELECT Id, Description
            FROM Contact
            WHERE AccountId =:accountId
        ];
        
        for(Contact contato : lstContatos) {
            contato.Description = 'Atualizado pelo método futuro! ';
        }
        
        update lstContatos;

	}

 }