package br.ufscar.dc



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SeriadoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Seriado.list(params), model:[seriadoInstanceCount: Seriado.count()]
    }

    def show(Seriado seriadoInstance) {
        respond seriadoInstance
    }

    def create() {
        respond new Seriado(params)
    }
    def showCapa() {
def seriadoInstance = Seriado.get(params.id)
response.outputStream << seriadoInstance.capa // write the image to the outputstream
response.outputStream.flush()
}
    
    @Transactional


def save() {
	def seriadoInstance = new Seriado(params)
        
        def imageFile = request.getFile('capa')
        
        if(!imageFile.empty){
            //imageFile.transferTo( new File( prodDir, imageFile.originalFilename))
            seriadoInstance.capa = imageFile.getBytes()
            seriadoInstance.capaNome = imageFile.originalFilename
        }

        if (!seriadoInstance.save(flush: true)) {
            render(view: "create", model: [seriadoInstance: seriadoInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'seriado.label', default: 'Seriado'), seriadoInstance.id])
        redirect(action: "show", id: seriadoInstance.id)
    }


    def edit(Seriado seriadoInstance) {
        respond seriadoInstance
    }

    @Transactional
    def update(Seriado seriadoInstance) {
        if (seriadoInstance == null) {
            notFound()
            return
        }

        if (seriadoInstance.hasErrors()) {
            respond seriadoInstance.errors, view:'edit'
            return
        }

        seriadoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Seriado.label', default: 'Seriado'), seriadoInstance.id])
                redirect seriadoInstance
            }
            '*'{ respond seriadoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Seriado seriadoInstance) {

        if (seriadoInstance == null) {
            notFound()
            return
        }

        seriadoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Seriado.label', default: 'Seriado'), seriadoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'seriado.label', default: 'Seriado'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
