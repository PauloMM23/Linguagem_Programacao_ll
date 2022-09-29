/*Crie uma classe chamada Disciplina que contenha os atributos nome da disciplina e carga
horária. Tanto o nome da disciplina quanto a carga horária são definidos pelo construtor da
própria classe. Além do construtor, crie um método para exibir esses dados após a sua atribuição.
O método para exibir os dados deverá ser chamado em uma outra classe.
 */
package exercicio2;

public class Disciplina {
    public String nome;
    public String cargaHoraria;
    
    public Disciplina() {
        nome = "Programação";
        cargaHoraria = "8 horas por semana";
    }
    
    public void exibirDados() {
        System.out.println("Disciplina: " + nome + "\nCarga Horária: " + cargaHoraria);
    }
}
