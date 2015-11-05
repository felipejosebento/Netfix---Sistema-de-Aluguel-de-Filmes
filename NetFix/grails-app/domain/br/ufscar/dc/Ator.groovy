package br.ufscar.dc

class Ator {
    
    static belongsTo = Titulo
    static hasmany = [titulos:Titulo]
    static constraints = {
        nome(blank:false,size: 1..30,matches:"[a-zA-Z]+")
    }
    
    static int num_atores
    String nome
}
