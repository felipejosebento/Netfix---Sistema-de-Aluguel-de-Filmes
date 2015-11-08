package br.ufscar.dc

class Ator {
    
    static belongsTo = Titulo
    static constraints = {
        nome(size: 1..30,matches:"[a-zA-Z ]+",unique:true)
    }
    
    String nome
}
