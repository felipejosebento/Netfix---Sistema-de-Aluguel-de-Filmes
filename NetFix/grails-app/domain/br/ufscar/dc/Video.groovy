package br.ufscar.dc

class Video {

    static belongsTo = [filme:Filme,episodio:Episodio]
    static constraints = {
        filme(nullable: true)
        filme(maxSize: 0, validator: {field, inst -> inst.episodio || field})
        episodio(maxSize: 0, validator: {field, inst -> inst.filme || field})
        episodio(nullable: true, validator: {field, inst -> inst.filme || field})
    
        legenda ( inList: ["português","inglês","espanhol"])
        idioma_titulo ( inList: ["português","inglês","espanhol","nativo"])
        qualidade ( inList: ["baixo","médio","automatico","alto"])
        frames (nullable: true)
        
    }
        
    byte[] frames
    String legenda = "espanhol"
    String idioma_titulo = "espanhol"
    int tempo_atual = 0
    boolean pausePlay = false
    String qualidade ="baixo" 
    int tempo_inicial = 1
    int duracao = 20
    
    String toString () {
        return "Play"
    }
    
    
    

}
