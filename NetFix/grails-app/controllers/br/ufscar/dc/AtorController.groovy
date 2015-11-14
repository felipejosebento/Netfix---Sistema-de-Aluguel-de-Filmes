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

    def edit(long id) {
        def atorInstance = Ator.get(id)
        if (!atorInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ator.label', default: 'Ator'), id])
            redirect(action: "list")
            return
        }

        [atorInstance: atorInstance]
    }

    @Transactional
    def update(Long id,Long version) {
      def atorInstance = Ator.get(id)
        if (!atorInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ator.label', default: 'Ator'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (atorInstance.version > version) {
                atorInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                    [message(code: 'ator.label', default: 'Ator')] as Object[],
                          "Another user has updated this Ator while you were editing")
                render(view: "edit", model: [atorInstance: atorInstance])
                return
            }
        }
        
        
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
