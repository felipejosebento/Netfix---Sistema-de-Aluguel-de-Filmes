package br.ufscar.dc

class Filme extends Titulo{

    static constraints = {
        diretor(blank:false,matches:"[a-zA-Z ]+")
        video (unique: true)
    }
    
    
    Video video
    String diretor = "Padilha"
    
}
