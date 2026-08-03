public class CorrigirErroCPU {
    public static void executar(){
        List <Integer> numeros = new List<integer>();
		
        for (Integer i = 0; i < 50000; i++) {
            numeros.add(i);  
        }        
        
        for(Integer i : numeros){
            Integer resultado = i * 2;
            
        }
        System.debug('CPU Time ao final: ' + Limits.getCpuTime() + 'ms');
    }

}