package br.ufscar.dc

class Video {

    static belongsTo = [filme:Filme,episodio:Episodio]
    static constraints = {
        legenda ( inList: ["português","inglês","espanhol"])
        idioma_titulo ( inList: ["português","inglês","espanhol","nativo"])
        qualidade ( inList: ["baixo","médio","automatico","alto"])
        
    }
    
    String legenda
    String idioma_titulo
    int tempo_atual
    boolean pausePlay
    String qualidade
    int tempo_inicial
    int duracao
}
