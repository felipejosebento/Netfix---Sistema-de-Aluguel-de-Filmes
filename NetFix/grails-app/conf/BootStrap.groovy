
import br.ufscar.dc.Filme
import br.ufscar.dc.Video
import br.ufscar.dc.Ator
import grails.transaction.Transactional
import org.springframework.web.multipart.commons.CommonsMultipartFile
import org.springframework.web.multipart.MultipartHttpServletRequest

class BootStrap {

    def init = { servletContext ->
        
        Ator brad = new Ator(nome: "Brad Pity")
        brad.save()
        Ator angelina = new Ator(nome: "Angelina Jolie")
        angelina.save()
        Ator bruno = new Ator(nome: "Bruno Williams")
        bruno.save()



        /*MultipartHttpServletRequest mpr = (MultipartHttpServletRequest)request;  
        CommonsMultipartFile videoFile = (CommonsMultipartFile) mpr.getFile("C:/Users/rapha/Videos/GTA.mp4");
        
        //def videoFile = request.getFile("C:/Users/rapha/Videos/GTA.mp4")// abre o aquivo*/
        Video trailer1 = new Video(legenda:"português") // pode colocar mais opcoes
        Video trailer2 = new Video()
        /*/copia o arq para o APP
        def webRootDir = servletContext.getRealPath("/")
        def videoDir = new File(webRootDir, "/video/$trailer1.id}")
        videoDir.mkdirs()
        if(!videoFile.empty){
            videoFile.transferTo( new File( videoDir, videoFile.originalFilename))
        }   
        //Copiar isso para cada VIDEO*/
        
        new Filme(nome:"Guerra Mundial Z" ,sinopse:"infeccao no mundo",avaliacao_geral: '5',faixa_etaria: "livre",ano_lancamento:"2012",
            genero:"aventura",diretor:"rodriguez",
            capa: org.apache.commons.io.IOUtils.toByteArray(this.class.classLoader.getResourceAsStream('data/5.jpg')))
        .addToAtores(brad).addToVideo(trailer1).save()
        // org.apache.commons.io.IOUtils.toByteArray()-> converte arquivo em bytes
        //this.class.classLoader.getResourceAsStream()-> le arquivo como InputStream
        
        new Filme(nome:"Senhor e Senhor Smith" ,sinopse:"um pacato casal com um segredo imponente",avaliacao_geral: '4',faixa_etaria: "livre",ano_lancamento:"2013",
            genero:"aventura",diretor:"ramirez",
            capa: org.apache.commons.io.IOUtils.toByteArray(this.class.classLoader.getResourceAsStream('data/4.jpg')))
        .addToAtores(brad).addToAtores(angelina).addToVideo(trailer2).save()
        
        
    }
    def destroy = {
    }
}
