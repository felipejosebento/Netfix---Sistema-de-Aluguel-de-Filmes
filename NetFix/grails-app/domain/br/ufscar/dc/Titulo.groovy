package br.ufscar.dc

class Titulo {
   
    static hasmany = [atores: Ator]
    
    static constraints = {
        nome(blank:false,size: 1..30,matches:"[a-zA-Z1-9 ]+")
        genero ( inList: ["ação", "animação","aventura","comédia","documentario","drama","lgbt","policial","romance","suspense", "terror"])
        faixa_etaria(inList: ["livre","10","12","14","16","18"])
        ano_lancamento(maxsize:4,matches:"[1-9]+")
        avaliacao_geral(min:0, max:5)
        capa (maxSize:65536)
        sinopse(blank:false,size: 1..300,matches:"[a-zA-Z1-9 ]+")
        capaNome(display:false)
    
    }
    static mapping = {
        //tablePerHierarchy false
        capaNome defaultValue: "'arquivo'"
        nome column: 'Nome'
        genero column: 'Gênero'
        
    }
    
    
    byte[] capa
    String capaNome = "arquivo"
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
