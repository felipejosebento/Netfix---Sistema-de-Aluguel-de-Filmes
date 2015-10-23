package br.ufscar.dc

class Video {

    static constraints = {
        legenda ( inList: ["português","inglês","espanhol"])
        idiota_titulo ( inList: ["português","inglês","espanhol","nativo"])
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
