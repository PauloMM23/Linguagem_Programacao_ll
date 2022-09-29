package exercicio1;
/* Crie uma classe A que possua dois atributos globais com valores associados e que possam ser acessados por
* uma outra classe B. Essa classe B deverá instanciar a classe A e imprimir na tela o conteúdo dos atributos definidos em A.
 */
public class Pessoa {
    public String nome;
    public String email;
    
    public Pessoa() {
        nome = "Paulo André";
        email = "paulo@gmail.com";
    }

    public void mostrarDados() {
        System.out.println("Nome: " + nome + "\nEmail: " + email);
    }
}