<%@ page import="br.ufscar.dc.Episodio" %>



<div class="fieldcontain ${hasErrors(bean: episodioInstance, field: 'sinopse', 'error')} required">
	<label for="sinopse">
		<g:message code="episodio.sinopse.label" default="Sinopse" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="sinopse" cols="40" rows="5" maxlength="300" required="" value="${episodioInstance?.sinopse}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: episodioInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="episodio.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${episodioInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: episodioInstance, field: 'video', 'error')} required">
	<label for="video">
		<g:message code="episodio.video.label" default="Video" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="video" name="video.id" from="${br.ufscar.dc.Video.list()}" optionKey="id" required="" value="${episodioInstance?.video?.id}" class="many-to-one"/>

</div>

