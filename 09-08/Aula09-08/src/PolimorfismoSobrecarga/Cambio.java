package PolimorfismoSobrecarga;

public class Cambio extends Dolar{
    @Override
    public void converterMoeda(double valorEmReais){
        System.out.println("Total: " + (valorEmReais * 5.2));
    }
    @Override
    public void converterMoeda(double valorEmReais, double taxaConversao){
        System.out.println("Conversão: " + (valorEmReais * taxaConversao));
    }
    public static void main(String[] args) {
        Cambio c = new Cambio();
        c.converterMoeda(100);
        c.converterMoeda(100, 2.35);
    }
}
