public class AccountService {
    
    public static void enviarMensagem(String mensagem) {
        AccountService.enviarMensagem(mensagem, null);
    }

    public static void enviarMensagem(String mensagem, String canalDeEnvio) {
        if (canalDeEnvio != null) {
            System.debug('Enviando mensagem: ' + mensagem + '. Enviado por: ' + canalDeEnvio);
        } else {
            System.debug('Enviando mensagem: ' + mensagem);
        }
    }


}