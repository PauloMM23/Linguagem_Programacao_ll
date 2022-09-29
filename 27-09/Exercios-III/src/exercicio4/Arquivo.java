package exercicio4;


import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import javax.swing.JTable;

public class Arquivo {
    private BufferedWriter bw;
    private BufferedReader br;
    
    public void gravar (String texto){
        try {
           bw = new BufferedWriter(new FileWriter("tabela.txt"));
           bw.write(texto);
           bw.close();
        } catch (Exception e) {
        }
    }
    
    public String ler(){
        String conteudo = "";
        String texto = "";
        try {
            br = new BufferedReader(new FileReader("tabela.txt"));
            while((conteudo = br.readLine())!= null){
               texto = texto + conteudo +"\n"; 
            }
                
        } catch (Exception e) {
        }
        return texto;
    }

    void gravar(JTable jTable1) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    void gravar(int rowCount) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    void gravar(boolean showHorizontalLines) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}
