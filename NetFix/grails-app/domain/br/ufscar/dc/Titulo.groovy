package br.ufscar.dc

class Titulo {
   
    static hasMany = [atores:Ator]
    
    static constraints = {
        nome(blank:false,size: 1..30,matches:"[a-zA-Z0-9 ]+")
        genero ( inList: ["ação", "animação","aventura","comédia","documentario","drama","lgbt","policial","romance","suspense", "terror"])
        faixa_etaria(inList: ["livre","10","12","14","16","18"])
        ano_lancamento(maxsize:4,matches:"[0-9]+")
        avaliacao_geral(min:0, max:5)
        capa (nullable: true,maxSize:65536)
        sinopse(blank:false,size: 1..300,matches:"[a-zA-Z0-9 ]+")
        capaNome(display:false, nullable:true)
    
    }
    static mapping = {
        //tablePerHierarchy false
        capaNome defaultValue: "'arquivo'"
        
    }
    
    
    byte[] capa
    String capaNome = "arquivo"
    String nome ="teste"
    String sinopse= "viu bruno"
    char avaliacao_geral = '5'
    String faixa_etaria= "livre"
    String ano_lancamento = "2012"
    String genero = "aventura"
    
    
  public String toString () {
        return "[" +  this.getClass().getSimpleName() + "] " + nome
    }
 
}
