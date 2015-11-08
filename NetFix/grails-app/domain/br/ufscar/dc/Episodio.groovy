package br.ufscar.dc

class Episodio {
    
    //static hasOne = [vEpisodio:Video]
    static belongsTo=Seriado
    static constraints = {
        sinopse(blank:false,size: 1..300,matches:"[a-zA-Z0-9 ]+")
    }
    
    Video video;
    String nome
    String sinopse
}
