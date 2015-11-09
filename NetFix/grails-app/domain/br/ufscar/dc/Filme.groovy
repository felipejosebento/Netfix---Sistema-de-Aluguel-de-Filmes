package br.ufscar.dc

class Filme extends Titulo{

    static constraints = {
        diretor(blank:false,matches:"[a-zA-Z ]+")
        video (unique: true,display:false)
    }
    
    Video video = new Video(filme:this)
    String diretor = "Padilha"
    
        
  public String toString () {
        return "[" +  this.getClass().getSimpleName() + "] " + nome
    }
    
}
