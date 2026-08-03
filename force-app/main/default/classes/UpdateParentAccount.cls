public class UpdateParentAccount implements Queueable {
    
   private Id contaId;
    
    public UpdateParentAccount(Id contaId) {
		this.contaId = contaId;
    }
    
    public void execute(QueueableContext context) {
        
        List<Contact> lstContatos = [
            SELECT Id, Description
            FROM Contact
            WHERE AccountId =:this.contaId
        ];
        
        for(Contact contato : lstContatos) {
            contato.Description = 'Atualizado pela Queueable! ' + Datetime.now().format();
        }
        
        update lstContatos;

	}

}