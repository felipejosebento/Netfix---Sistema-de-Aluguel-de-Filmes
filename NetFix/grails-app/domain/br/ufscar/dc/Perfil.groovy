package br.ufscar.dc

public class Perfil {

    static constraints = {
        tipo ( inList: ["kids","adulto"])
        pergunta( inList: ["Tiro","CorridaDeCarro","BeijoRomantico","Engraçada"])
    }
    String nome;
    String tipo 
    String pergunta
    
    // Algoritmo Perfil
}
