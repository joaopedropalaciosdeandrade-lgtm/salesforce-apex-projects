public with sharing class AccountControler {

    @AuraEnabled
    public static Account criarConta(Account conta) {
        if (String.isBlank(conta.AccountNumber)) {
            throw new ValidatorContaException('Número da conta é obrigatório.');
        }

        insert conta;
        return conta;
    }

    @AuraEnabled(cacheable=true)
    public static List<Contact> getContactsByAccount(Id contaId) {
        return [
            SELECT Id, Name, Email
            FROM Contact
            WHERE AccountId = :contaId
        ];
    }

    public class ValidatorContaException extends Exception {
    }
}