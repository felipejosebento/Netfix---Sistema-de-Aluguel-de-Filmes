package br.ufscar.dc



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AtorController {

    static allowedMethods = [save: "POST", update: "POST", delete: "DELETE"]


    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Ator.list(params), model:[atorInstanceCount: Ator.count()]
    }

    def show(Ator atorInstance) {
        respond atorInstance
    }

    def create() {
        respond new Ator(params)
    }

    @Transactional
    def save() {
        def atorInstance = new Ator(params)
        
        
        def imageFile = request.getFile('imagem')
        
        if(!imageFile.empty)
            atorInstance.foto = imageFile.originalFilename
        
        if (!atorInstance.save(flush: true)) {
            render(view: "create", model: [atorInstance: atorInstance])
            return
        }
        
        def webRootDir = servletContext.getRealPath("/")
        def imageDir = new File(webRootDir, "/ator/${atorInstance.id}")
        imageDir.mkdirs()
        
        if(!imageFile.empty){
            imageFile.transferTo( new File( imageDir, imageFile.originalFilename))
        }
        
        flash.message = message(code: 'default.created.message', args: [message(code: 'ator.label', default: 'Ator'), atorInstance.id])
        redirect(action: "show", id: atorInstance.id)
        
    }

    def edit(Ator atorInstance) {
        respond atorInstance
    }

    @Transactional
    def update(Long id,Long version) {
      def videoInstance = Video.get(id)
        if (!videoInstance) {
            flash.message = message(code: 'default.not.found.message', args: 
[message(code: 'video.label', default: 'Video'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (videoInstance.version > version) {
                videoInstance.errors.rejectValue("version", 
"default.optimistic.locking.failure",
                    [message(code: 'video.label', default: 'Video')] as Object[],
                          "Another user has updated this Video while you were 
editing")
                render(view: "edit", model: [videoInstance: videoInstance])
                return
            }
        }
        
        
        def videoFile = request.getFile('video')
        
        if(!videoFile.empty)
            videoInstance.source = videoFile.originalFilename
        
        if (!videoInstance.save(flush: true)) {
            render(view: "create", model: [videoInstance: videoInstance])
            return
        }
        
        def webRootDir = servletContext.getRealPath("/")
        def videoDir = new File(webRootDir, "/video/${videoInstance.id}")
        videoDir.mkdirs()
        
        if(!videoFile.empty){
            videoFile.transferTo( new File( videoDir, videoFile.originalFilename))
        }
        
        flash.message = message(code: 'default.created.message', args: [message
(code: 'video.label', default: 'Video'), videoInstance.id])
        redirect(action: "show", id: videoInstance.id)
        
    }

    @Transactional
    def delete(Ator atorInstance) {

        if (atorInstance == null) {
            notFound()
            return
        }

        atorInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Ator.label', default: 'Ator'), atorInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'ator.label', default: 'Ator'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
