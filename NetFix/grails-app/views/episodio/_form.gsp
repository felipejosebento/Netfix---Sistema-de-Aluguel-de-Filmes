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

<div class="fieldcontain ${hasErrors(bean: episodioInstance, field: 'seriado', 'error')} required">
	<label for="seriado">
		<g:message code="episodio.seriado.label" default="Seriado" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="seriado" name="seriado.id" from="${br.ufscar.dc.Seriado.list()}" optionKey="id" required="" value="${episodioInstance?.seriado?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: episodioInstance, field: 'video', 'error')} ">
	<label for="video">
		<g:message code="episodio.video.label" default="Video" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${episodioInstance?.video?}" var="v">
    <li><g:link controller="video" action="show" id="${v.id}">${v?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="video" action="create" params="['episodio.id': episodioInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'video.label', default: 'Video')])}</g:link>
</li>
</ul>


</div>

