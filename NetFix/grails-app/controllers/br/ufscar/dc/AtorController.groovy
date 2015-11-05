package br.ufscar.dc



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AtorController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

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
    def save(Ator atorInstance) {
        if (atorInstance == null) {
            notFound()
            return
        }

        if (atorInstance.hasErrors()) {
            respond atorInstance.errors, view:'create'
            return
        }

        atorInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'ator.label', default: 'Ator'), atorInstance.id])
                redirect atorInstance
            }
            '*' { respond atorInstance, [status: CREATED] }
        }
    }

    def edit(Ator atorInstance) {
        respond atorInstance
    }

    @Transactional
    def update(Ator atorInstance) {
        if (atorInstance == null) {
            notFound()
            return
        }

        if (atorInstance.hasErrors()) {
            respond atorInstance.errors, view:'edit'
            return
        }

        atorInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Ator.label', default: 'Ator'), atorInstance.id])
                redirect atorInstance
            }
            '*'{ respond atorInstance, [status: OK] }
        }
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
