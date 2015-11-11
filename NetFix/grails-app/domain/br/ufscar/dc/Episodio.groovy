package br.ufscar.dc

class Episodio {
    
    //static hasOne = [vEpisodio:Video]
    static belongsTo=[seriado:Seriado]
    static hasMany = [video:Video]
    static constraints = {
        //Seriado(unique:true)
        sinopse(blank:false,size: 1..300,matches:"[a-zA-Z0-9 ]+")
    }
    
    String nome = "EpTeste"
    String sinopse = "viu episodio"
}
