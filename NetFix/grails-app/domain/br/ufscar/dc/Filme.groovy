package br.ufscar.dc

class Filme extends Titulo{

    static hasMany = [video:Video]
    static constraints = {
        diretor(blank:false,matches:"[a-zA-Z ]+")
        //video (unique: true)
    }
    
    //Video video = new Video(filme:this)
    String diretor = "Padilha"
    
        
  
}
