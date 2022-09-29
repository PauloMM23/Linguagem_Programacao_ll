package PolimorfismoSobrescrita;

public class Cambio extends Dolar{
    @Override
    public void converterMoeda(double valorEmReais){
        System.out.println("Total: " + (valorEmReais * 5.2));
    }
    public static void main(String[] args) {
        Cambio c = new Cambio();
        c.converterMoeda(100);
    }
}
