public class projeto_aula {
    
    public static void executarInsert(){
        Account acc = new Account ();
        acc.Name = 'Empresa ABC' ;
        
       Database.SaveResult resultado = Database.insert(acc, false);    
       
        if(resultado.isSuccess()) {
            System.debug('conta criada com sucesso. ID da conta: ' + resultado.getID());
              
        } 
        
        else{
            
            for(Database.Error err : resultado.getErrors()) {
                
                System.debug('Erro: ' + err.getMessage());
            
                
            }
            
        }
    }

}