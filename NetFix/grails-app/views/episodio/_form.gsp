<%@ page import="br.ufscar.dc.Episodio" %>



<div class="fieldcontain ${hasErrors(bean: episodioInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="episodio.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${episodioInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: episodioInstance, field: 'sinopse', 'error')} required">
	<label for="sinopse">
		<g:message code="episodio.sinopse.label" default="Sinopse" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="sinopse" required="" value="${episodioInstance?.sinopse}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: episodioInstance, field: 'vEpisodio', 'error')} required">
	<label for="vEpisodio">
		<g:message code="episodio.vEpisodio.label" default="V Episodio" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="vEpisodio" name="vEpisodio.id" from="${br.ufscar.dc.Video.list()}" optionKey="id" required="" value="${episodioInstance?.vEpisodio?.id}" class="many-to-one"/>

</div>
