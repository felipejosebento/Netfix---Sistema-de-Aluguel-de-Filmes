package br.ufscar.dc

public class Perfil {

    static constraints = {
        nome(size:1..30,matches:"[a-zA-Z0-9 }+")
        qualidade ( inList: ["baixo","médio","automatico","alto"])
        pergunta( inList: ["baixo","médio","automatico","alto"])
     
    }
    String nome  
    String qualidade ="baixo" 
    String pergunta
   
    
}
