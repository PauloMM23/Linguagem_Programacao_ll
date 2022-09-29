package Exercicio1;

public class Veiculo {
    public String nome;
    public String cor;
    public String ano;

    public Veiculo(String nome, String cor, String ano) {
        this.nome = nome;
        this.cor = cor;
        this.ano = ano;
    }

    Veiculo() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
   
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCor() {
        return cor;
    }

    public void setCor(String cor) {
        this.cor = cor;
    }

    public String getAno() {
        return ano;
    }

    public void setAno(String ano) {
        this.ano = ano;
    }
    
}
