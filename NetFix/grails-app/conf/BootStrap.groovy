
import br.ufscar.dc.Filme
import br.ufscar.dc.Video
import br.ufscar.dc.Ator
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

class BootStrap {

    def init = { servletContext ->
        
        Ator brad = new Ator(nome: "Brad Pitty")
        brad.save()
        
        new Filme(nome:"teste" ,sinopse:"ruim",avaliacao_geral: '5',faixa_etaria: "livre",ano_lancamento:"2012",
            genero:"aventura",diretor:"rodriguez",video: new Video(),
            capa: org.apache.commons.io.IOUtils.toByteArray(this.class.classLoader.getResourceAsStream('data/5.jpg')))
        .addToAtores(brad).save()
        // org.apache.commons.io.IOUtils.toByteArray()-> converte arquivo em bytes
        //this.class.classLoader.getResourceAsStream()-> le arquivo como InputStream
        
        new Filme(nome:"teste2" ,sinopse:"ruim",avaliacao_geral: '4',faixa_etaria: "livre",ano_lancamento:"2013",
            genero:"aventura",diretor:"ramirez",video: new Video(),
            capa: org.apache.commons.io.IOUtils.toByteArray(this.class.classLoader.getResourceAsStream('data/4.jpg')))
        .addToAtores(brad).save()
    }
    def destroy = {
    }
}
