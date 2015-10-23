package br.ufscar.dc

class Filme extends Titulo{

    static constraints = {
        diretor(blank:false,matches:/[a-zA-Z]/)
        
        vFilme(blank:false)
        
    }
    
    
    String diretor
    
    Video vFilme
}
