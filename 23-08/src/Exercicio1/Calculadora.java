package Exercicio1;

public class Calculadora {
    private float v1;
    private float v2;

    public Calculadora(float v1, float v2) {
        this.v1 = v1;
        this.v2 = v2;
    }
    public float soma(){
        return v1+v2;
    }
    public float sub(){
        return v1-v2;
    }
    public float mult(){
        return v1*v2;
    }
    public float div(){
        return v1/v2;
    }   
}
