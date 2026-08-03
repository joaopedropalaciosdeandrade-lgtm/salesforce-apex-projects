@IsTest
public class AccountTriggerHandlerTest {

    @testSetup
    public static void setup() {
        Account conta = new Account(Name = 'Com Industry', Industry = 'Fiance');
        insert conta;
    }
    
    @IsTest
    public static void deveAtribuirIndustryPadraoQuandoNaoInformado() {
		Account conta = new Account(Name = 'Sem Industry');

        Test.startTest();        
        	insert conta;
        Test.stopTest();
        
        Account result = [SELECT Industry FROM Account WHERE Id =: conta.Id];
        // System.assertEquals('Technology', result.Industry, 'O campo deve ser setado como Industry');
    }
    
    @IsTest
    public static void deveManterIndustryQuandoJaInformado() {

    }
}