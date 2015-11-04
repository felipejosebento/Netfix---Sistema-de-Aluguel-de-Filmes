<%@ page import="br.ufscar.dc.Filme" %>



<div class="fieldcontain ${hasErrors(bean: filmeInstance, field: 'ano_lancamento', 'error')} required">
	<label for="ano_lancamento">
		<g:message code="filme.ano_lancamento.label" default="Anolancamento" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="ano_lancamento" required="" value="${filmeInstance?.ano_lancamento}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: filmeInstance, field: 'genero', 'error')} required">
	<label for="genero">
		<g:message code="filme.genero.label" default="Genero" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="genero" from="${filmeInstance.constraints.genero.inList}" required="" value="${filmeInstance?.genero}" valueMessagePrefix="filme.genero"/>

</div>

<div class="fieldcontain ${hasErrors(bean: filmeInstance, field: 'faixa_etaria', 'error')} required">
	<label for="faixa_etaria">
		<g:message code="filme.faixa_etaria.label" default="Faixaetaria" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="faixa_etaria" from="${filmeInstance.constraints.faixa_etaria.inList}" required="" value="${filmeInstance?.faixa_etaria}" valueMessagePrefix="filme.faixa_etaria"/>

</div>

<div class="fieldcontain ${hasErrors(bean: filmeInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="filme.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" maxlength="30" pattern="${filmeInstance.constraints.nome.matches}" required="" value="${filmeInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: filmeInstance, field: 'sinopse', 'error')} required">
	<label for="sinopse">
		<g:message code="filme.sinopse.label" default="Sinopse" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="sinopse" cols="40" rows="5" maxlength="300" required="" value="${filmeInstance?.sinopse}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: filmeInstance, field: 'avaliacao_geral', 'error')} required">
	<label for="avaliacao_geral">
		<g:message code="filme.avaliacao_geral.label" default="Avaliacaogeral" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="avaliacao_geral" type="number" value="${filmeInstance.avaliacao_geral}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: filmeInstance, field: 'diretor', 'error')} required">
	<label for="diretor">
		<g:message code="filme.diretor.label" default="Diretor" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="diretor" pattern="${filmeInstance.constraints.diretor.matches}" required="" value="${filmeInstance?.diretor}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: filmeInstance, field: 'video', 'error')} required">
	<label for="video">
		<g:message code="filme.video.label" default="Video" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="video" name="video.id" from="${br.ufscar.dc.Video.list()}" optionKey="id" required="" value="${filmeInstance?.video?.id}" class="many-to-one"/>

</div>

