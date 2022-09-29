/* Crie uma classe, também chamada Disciplina, com os mesmos atributos e métodos do exercício
2. Entretanto, o valor dos atributos definidos no construtor devem ser recebidos por parâmetros
no momento da instanciação dessa classe. Imprima na tela o resultado das atribuições.
 */
package exercicio3;

public class Disciplina {
    public String nome;
    public String cargaHoraria;
    
    public Disciplina(String nome, String cargaHoraria) {
        this.nome = "Programação";
        this.cargaHoraria = "8 horas por semana";
    }
    
    public void exibirDados() {
        System.out.println("Disciplina: " + nome + "\nCarga Horária: " + cargaHoraria);
    }
}
