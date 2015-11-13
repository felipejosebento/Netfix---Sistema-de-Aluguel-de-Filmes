package br.ufscar.dc



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class VideoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Video.list(params), model:[videoInstanceCount: Video.count()]
    }

    def show(Video videoInstance) {
        respond videoInstance
    }

    def create() {
        respond new Video(params)
    }

    @Transactional
    def save() {
        def videoInstance = new Video(params)
        
        
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
        
        flash.message = message(code: 'default.created.message', args: [message(code: 'video.label', default: 'Video'), videoInstance.id])
        redirect(action: "show", id: videoInstance.id)
        
    }

    def edit(long id) {
        def videoInstance = Video.get(id)
        if (!videoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'video.label', default: 'Video'), id])
            redirect(action: "list")
            return
        }

        [videoInstance: videoInstance]
    }

    @Transactional
    def update(Long id,Long version) {
      def videoInstance = Video.get(id)
        if (!videoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'video.label', default: 'Video'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (videoInstance.version > version) {
                videoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                    [message(code: 'video.label', default: 'Video')] as Object[],
                          "Another user has updated this Video while you were editing")
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
        
        flash.message = message(code: 'default.created.message', args: [message(code: 'video.label', default: 'Video'), videoInstance.id])
        redirect(action: "show", id: videoInstance.id)
        
    }

    @Transactional
    def delete(Video videoInstance) {

        if (videoInstance == null) {
            notFound()
            return
        }

        videoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Video.label', default: 'Video'), videoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'video.label', default: 'Video'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
