package br.ufscar.dc

class Episodio {
    
    //static hasOne = [vEpisodio:Video]
    static belongsTo=[seriado:Seriado]
    static hasMany = [video:Video]
    static constraints = {
        //Seriado(unique:true)
        nome(size: 1..30,matches:"[a-zA-Z0-9 ]+")
        temporada(min:0)
        temporada(validator: { val, obj, errors -> if(!(val <= obj.seriado.temporadas)) errors.rejectValue('temporada', 'Temporada maior que maximo de temporadas do seriado') })
        sinopse(blank:false,size: 1..300,matches:"[a-zA-Z0-9 ]+")
        
    }
    
    String nome = "EpTeste"
    String sinopse = "viu episodio"
    int temporada = 1
}
