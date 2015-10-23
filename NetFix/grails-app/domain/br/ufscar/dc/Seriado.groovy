package br.ufscar.dc

class Seriado extends Titulo{

    static hasMany = [episodio:Episodio]
    
    static constraints = {
    }
    String criador
    int temporadas
}
