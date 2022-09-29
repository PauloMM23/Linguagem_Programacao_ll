package Exemplo2;


import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;

public class Arquivo {
    private BufferedWriter bw;
    private BufferedReader br;
    
    public void gravar (String texto){
        try {
           bw = new BufferedWriter(new FileWriter("arquivo.txt"));
           bw.write(texto);
           bw.close();
        } catch (Exception e) {
        }
    }
    
    public String ler(){
        String conteudo = "";
        String texto = "";
        try {
            br = new BufferedReader(new FileReader("arquivo.txt"));
            while((conteudo = br.readLine())!= null){
               texto = texto + conteudo +"\n"; 
            }
                
        } catch (Exception e) {
        }
        return texto;
    }
}
