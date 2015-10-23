package br.ufscar.dc

class Episodio {

    static belongsTo=Seriado
    static constraints = {
    }
    String nome
    String Sinopse
    Video vEpisodio
}
