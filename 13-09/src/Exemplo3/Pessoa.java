package Exemplo3;

public class Pessoa {
    private String nome;
    private String sobrenome;
    private String email;

    public Pessoa(String nome, String sobrenome, String email) {
        this.nome = nome;
        this.sobrenome = sobrenome;
        this.email = email;
    }

    public String getNome() {
        return nome;
    }

    public String getSobrenome() {
        return sobrenome;
    }

    public String getEmail() {
        return email;
    }
    
    public String [] retornaValores(){
        return new String [] {nome, sobrenome, email};
    }
}
