package PolimorfismoSobrecarga;

public class Dolar {
    public void converterMoeda(double valorEmReais){
        System.out.println("Conversão: " + (valorEmReais * 5.11));
    }
    
    public void converterMoeda(double valorEmReais, double taxaConversao){
        System.out.println("Conversão: " + (valorEmReais * taxaConversao));
    }
}
