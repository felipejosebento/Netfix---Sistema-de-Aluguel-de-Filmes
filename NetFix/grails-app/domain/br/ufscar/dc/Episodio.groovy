package br.ufscar.dc

class Episodio {
    
    //static hasOne = [vEpisodio:Video]
    static belongsTo=Seriado
    static constraints = {
    }
    
    Video video;
    String nome
    String Sinopse
}
