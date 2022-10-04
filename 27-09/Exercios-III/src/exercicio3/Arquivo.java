package exercicio3;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;

public class Arquivo {
    private BufferedWriter bw;
    private BufferedReader br;
    Object ler;
    
    public void gravar (String texto){
        try {
           bw = new BufferedWriter(new FileWriter("usuarios.txt"));
           bw.write(texto);
           bw.close();
        } catch (Exception e) {
        }
    }
    
    public String ler(){
        String conteudo = "";
        String texto = "";
        try {
            br = new BufferedReader(new FileReader("usuarios.txt"));
            while((conteudo = br.readLine())!= null){
               texto = texto + conteudo +"\n"; 
            }
                
        } catch (Exception e) {
        }
        return texto;
    }

    void ler(Object valueAt) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}
