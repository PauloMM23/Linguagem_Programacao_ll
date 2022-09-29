package Herança;

public class Corrente extends Conta{
    private static String numeroConta;
    
    public static void main(String[] args) {
        numeroConta = "19584-8";
        System.out.println("Os dados bancários são: ");
        System.out.println("Ag: " + agencia + " Ag: " + numeroConta);
        abrirConta();
    }
    
}
