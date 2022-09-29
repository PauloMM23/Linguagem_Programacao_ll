package exercicio3outraaula;


public class Computador {
    private String fabricante = "Dell";
    private String modelo;
    private float preco;

    public Computador(String modelo, float preco) {
        fabricante = "Dell";
        this.modelo = modelo;
        this.preco = preco;
    }
    public Computador(String fabricante, String modelo, float preco) {
        this.fabricante = fabricante;
        this.modelo = modelo;
        this.preco = preco;
    }

    public String getFabricante() {
        return fabricante;
    }

    public String getModelo() {
        return modelo;
    }

    public float getPreco() {
        return preco;
    }
    
}
