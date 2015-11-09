package br.ufscar.dc

class Ator {
    
    static belongsTo = Titulo
    static hasMany =[titulos: Titulo]
    static constraints = {
        nome(size: 1..30,matches:"[a-zA-Z ]+",unique:true)
    }
    
    String nome
    
    String toString () {
        return nome
    }
}
