package br.ufscar.dc



import grails.test.mixin.*
import spock.lang.*

@TestFor(EpisodioController)
@Mock(Episodio)
class EpisodioControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.episodioInstanceList
            model.episodioInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.episodioInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'POST'
            def episodio = new Episodio()
            episodio.validate()
            controller.save(episodio)

        then:"The create view is rendered again with the correct model"
            model.episodioInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            episodio = new Episodio(params)

            controller.save(episodio)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/episodio/show/1'
            controller.flash.message != null
            Episodio.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def episodio = new Episodio(params)
            controller.show(episodio)

        then:"A model is populated containing the domain instance"
            model.episodioInstance == episodio
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def episodio = new Episodio(params)
            controller.edit(episodio)

        then:"A model is populated containing the domain instance"
            model.episodioInstance == episodio
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'PUT'
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/episodio/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def episodio = new Episodio()
            episodio.validate()
            controller.update(episodio)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.episodioInstance == episodio

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            episodio = new Episodio(params).save(flush: true)
            controller.update(episodio)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/episodio/show/$episodio.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'DELETE'
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/episodio/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def episodio = new Episodio(params).save(flush: true)

        then:"It exists"
            Episodio.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(episodio)

        then:"The instance is deleted"
            Episodio.count() == 0
            response.redirectedUrl == '/episodio/index'
            flash.message != null
    }
}
