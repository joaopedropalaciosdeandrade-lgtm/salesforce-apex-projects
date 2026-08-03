public class SimularLimitedDML {
    
    public static void executar() {
        List<Account> lstContas = new List<Account>();  
        
     	  for (Integer i = 0; i < 200; i++) {
            
            Account acc = new Account();
            acc.Name = 'Conta Teste LIMITE DML' + i;
            
            lstContas.add(acc);
        }
        
        insert lstContas;
        
    }

}