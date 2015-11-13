package br.ufscar.dc

class Seriado extends Titulo{

    static hasMany = [episodios:Episodio]
    
    static constraints = {
    }
    String criador = "John"
    int temporadas = 4
    
    public String toString () {
        return "[" +  this.getClass().getSimpleName() + "] " + nome
    }
    
}
