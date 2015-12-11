import br.ufscar.dc.*
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
        Ator alineJuppenheim = new Ator(nome: "Aline Juppenheim") 
        alineJuppenheim.save()
        Ator jenniferLawrence = new Ator(nome: "Jennifer Lawrence")
        jenniferLawrence.save()
        Ator frankieMuniz = new Ator(nome: "frankie Muniz")
        frankieMuniz.save()

       //
            def adminPapel = Papel.findOrSaveWhere(authority: 'ROLE_ADMIN')
            def user = Usuario.findOrSaveWhere(username: 'admin', password: 'admin', nome:'Administrador')
            
            if(!user.authorities.contains(adminPapel))
            {
                UsuarioPapel.create(user, adminPapel, true)
            }    
            def normalPapel = Papel.findOrSaveWhere(authority: 'ROLE_USER')
            def user2 = Usuario.findOrSaveWhere(username: 'user', password: 'password', nome:'Usuario')
            
            if(!user.authorities.contains(normalPapel))
            {
                UsuarioPapel.create(user2, normalPapel, true)
            } 
       //

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
            capa: org.apache.commons.io.IOUtils.toByteArray(this.class.classLoader.getResourceAsStream('data/guerraMundialZ.jpg')))
        .addToAtores(brad).addToAtores(alineJuppenheim).addToVideo(trailer1).save()
        // org.apache.commons.io.IOUtils.toByteArray()-> converte arquivo em bytes
        //this.class.classLoader.getResourceAsStream()-> le arquivo como InputStream
        
        new Filme(nome:"Senhor e Senhor Smith" ,sinopse:"um pacato casal com um segredo imponente",avaliacao_geral: '4',faixa_etaria: "livre",ano_lancamento:"2013",
            genero:"aventura",diretor:"ramirez",
            capa: org.apache.commons.io.IOUtils.toByteArray(this.class.classLoader.getResourceAsStream('data/srSraSmith.jpg')))
        .addToAtores(brad).addToAtores(angelina).addToVideo(trailer2).save()
        
        new Filme(nome:"Dorimindo com o Inimigo",
            sinopse:"Uma esposa espancada escapa do marido fingindo a própria morte e começa uma vida nova com uma nova identidade, até que o marido volta a encontra-lá",
            avaliacao_geral:"4",faixa_etaria:"14",ano_lancamento:"1991",
            genero:"suspense",diretor:"Joseph Ruben",
            capa: org.apache.commons.io.IOUtils.toByteArray(this.class.classLoader.getResourceAsStream('data/dormindoComOInimigo.jpg')))
            .addToAtores(brad).save()
           
        new Filme(nome:"Dia de treinamento",
            sinopse:"um policial novato tenta provar seu valor para uma agente da narcoticos, mas ele logo comeca a suspeitar que as coisas não são exatamente o que parecem",
            avaliacao_geral:"4",faixa_etaria:"18",ano_lancamento:"2001",
            genero:"suspense",diretor:"Joseph Ruben",
            capa: org.apache.commons.io.IOUtils.toByteArray(this.class.classLoader.getResourceAsStream('data/dormindoComOInimigo.jpg')))
            .addToAtores(brad).save()
            
         new Filme(nome:"a salva vidas",
            sinopse:"apos um momento dificil, uma jornalista de 29 anos abandona a carreira, volta para a casa dos pais e trabalha como  salva vidas",
            avaliacao_geral:"4",faixa_etaria:"16",ano_lancamento:"2003",
            genero:"suspense",diretor:"Joseph Ruben",
            capa: org.apache.commons.io.IOUtils.toByteArray(this.class.classLoader.getResourceAsStream('data/dormindoComOInimigo.jpg')))
            .addToAtores(brad).save()
            
         new Filme(nome:"os pinguins de madagascar o filme",
            sinopse:"os pinguins kowalski, rico e recruta unem forças a agencia de espionagem Vento do norte para impedir o super vilão Dr Otavius Brine domine o mundo",
            avaliacao_geral:"4",faixa_etaria:"livre",ano_lancamento:"2014",
            genero:"suspense",diretor:"Joseph Ruben",
            capa: org.apache.commons.io.IOUtils.toByteArray(this.class.classLoader.getResourceAsStream('data/dormindoComOInimigo.jpg')))
            .addToAtores(brad).save()
            
         new Filme(nome:"o agente teen 2",
            sinopse:"o jovem cody banks precisa infiltrar em um internato em londres quando seu professor rouba um dispositivo de controle da mente",
            avaliacao_geral:"4",faixa_etaria:"10",ano_lancamento:"2004",
            genero:"suspense",diretor:"Joseph Ruben",
            capa: org.apache.commons.io.IOUtils.toByteArray(this.class.classLoader.getResourceAsStream('data/dormindoComOInimigo.jpg')))
            .addToAtores(frankieMuniz).save()
            
         new Filme(nome:"jogos vorazes",
            sinopse:"em um futuro governado por um regime totalitario, katniss e peeta representam seu distrito num reality show em que adolescentes cacam uns aos outros ate a morte",
            avaliacao_geral:"4",faixa_etaria:"14",ano_lancamento:"2012",
            genero:"suspense",diretor:"Joseph Ruben",
            capa: org.apache.commons.io.IOUtils.toByteArray(this.class.classLoader.getResourceAsStream('data/dormindoComOInimigo.jpg')))
            .addToAtores(jenniferLawrence).save()
        
    }
    def destroy = {
    }
}
