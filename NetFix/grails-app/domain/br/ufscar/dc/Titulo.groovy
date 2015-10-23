package br.ufscar.dc

class Titulo {

    static constraints = {
        ano_lancamento.(maxsize(4))
        genero ( inList: ["ação", "animação","aventura","comédia","documentario","drama","lgbt","policial","romance","suspense", "terror"])
        faixa_etaria(inList: ["livre","10","12","14","16","18"])
        nome(blank:false,size: 1..30,matches:/[a-zA-Z]/)
        sinopse(blank:false,size: 1..300,matches:/[a-zA-Z]/)
        avaliacao_geral(min:0, max:5)
        
        
        
    }
    static mapping = {
        tablePerHierarchy false
        
    }
    
    static int num_titulos
    
    String nome
    String Sinopse
    char avaliacao_geral
    String faixa_etaria
    String ano_lancamento
    String genero
    
}
