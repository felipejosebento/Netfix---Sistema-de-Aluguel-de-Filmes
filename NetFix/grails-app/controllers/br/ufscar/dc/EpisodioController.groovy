package br.ufscar.dc



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EpisodioController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Episodio.list(params), model:[episodioInstanceCount: Episodio.count()]
    }

    def show(Episodio episodioInstance) {
        respond episodioInstance
    }

    def create() {
        respond new Episodio(params)
    }

    @Transactional
    def save(Episodio episodioInstance) {
        if (episodioInstance == null) {
            notFound()
            return
        }

        if (episodioInstance.hasErrors()) {
            respond episodioInstance.errors, view:'create'
            return
        }

        episodioInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'episodio.label', default: 'Episodio'), episodioInstance.id])
                redirect episodioInstance
            }
            '*' { respond episodioInstance, [status: CREATED] }
        }
    }

    def edit(Episodio episodioInstance) {
        respond episodioInstance
    }

    @Transactional
    def update(Episodio episodioInstance) {
        if (episodioInstance == null) {
            notFound()
            return
        }

        if (episodioInstance.hasErrors()) {
            respond episodioInstance.errors, view:'edit'
            return
        }

        episodioInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Episodio.label', default: 'Episodio'), episodioInstance.id])
                redirect episodioInstance
            }
            '*'{ respond episodioInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Episodio episodioInstance) {

        if (episodioInstance == null) {
            notFound()
            return
        }

        episodioInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Episodio.label', default: 'Episodio'), episodioInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'episodio.label', default: 'Episodio'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
