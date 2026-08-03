public class viaCepService {
    
    public static viaCepEndereco buscarEnderecoPorCep(String cep) {
        if(String.isBlank(cep) || cep.length() != 8) {
            System.debug('CEP inválido. Informe 8 dígitos numéricos.');
        } else {
            
            String endpoint = 'https://viacep.com.br/ws/'+cep+'/json/';
            
            Http http = new Http();
            HttpRequest request = new HttpRequest();
            request.setEndpoint(endpoint);
            request.setMethod('GET');
            
            try{
                HttpResponse response = http.send(request);
                
                if(response.getStatusCode() == 200) {
                    String body = response.getBody();
                    
                    viaCepEndereco endereco = (viaCepEndereco)JSON.deserialize(body, viaCepEndereco.class);
                   	
                    if(endereco.logradouro == null && endereco.localidade == null) {
                        System.debug('CEP inválido');
                        return null;
                    } else {
                        return endereco;
                    }
                }
                
            }catch(Exception ex) {
                System.debug('Falha na chamada HTTP: ' + ex.getMessage());
            }
        }
        
        return null;
    }
}