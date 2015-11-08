
import br.ufscar.dc.Filme
import br.ufscar.dc.Video
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

class BootStrap {

    def init = { servletContext ->        
        new Filme(nome:"teste" ,sinopse:"ruim",avaliacao_geral: '5',faixa_etaria: "livre",ano_lancamento:"2012",
            genero:"aventura",diretor:"ramirez",video: new Video().save(),
            capa: org.apache.commons.io.IOUtils.toByteArray(this.class.classLoader.getResourceAsStream('data/5.jpg'))).save()
        // org.apache.commons.io.IOUtils.toByteArray()-> converte arquivo em bytes
        //this.class.classLoader.getResourceAsStream()-> le arquivo como InputStream
    }
    def destroy = {
    }
}
