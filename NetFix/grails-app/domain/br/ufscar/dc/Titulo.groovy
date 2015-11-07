package br.ufscar.dc

class Titulo {
   
    static hasmany = [atores: Ator]
    
    static constraints = {
        nome(blank:false,size: 1..30,matches:"[a-zA-Z]+")
        genero ( inList: ["ação", "animação","aventura","comédia","documentario","drama","lgbt","policial","romance","suspense", "terror"])
        faixa_etaria(inList: ["livre","10","12","14","16","18"])
        ano_lancamento(maxsize:4)
        avaliacao_geral(min:0, max:5)
        capa (maxSize:65536)
        sinopse(blank:false,size: 1..300,matches:"[a-zA-Z]+")
        capaNome(display:false,blank:true)
    
    }
    static mapping = {
        tablePerHierarchy false
        
    }
    
    static int num_titulos
    
    
    byte[] capa
    String capaNome
    String nome
    String sinopse
    char avaliacao_geral
    String faixa_etaria
    String ano_lancamento
    String genero
    
    
  String toString () {
        return "[" +  this.getClass().getSimpleName() + "] " + nome
    }
 
}
