public with sharing class contactController {
   
    public static List<Contact> getContactByAccountId(String contaId) {
        return[
            SELECT
            Id, Name
            FROM Contact
            WHERE AccountId =: contaId
        ];
    }
}