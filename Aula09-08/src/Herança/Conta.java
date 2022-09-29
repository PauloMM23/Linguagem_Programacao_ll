package Herança;

public class Conta {
    
    protected static String agencia = "0148-8";
    
    public Conta() {
        
    }
    public static void abrirConta(){
        System.out.println("Conta aberta");
    }
    public static void encerrarConta(){
        System.out.println("Conta encerrada");
    }
}
