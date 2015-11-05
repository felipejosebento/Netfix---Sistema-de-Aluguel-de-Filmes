<%@ page import="br.ufscar.dc.Titulo" %>



<div class="fieldcontain ${hasErrors(bean: tituloInstance, field: 'ano_lancamento', 'error')} required">
	<label for="ano_lancamento">
		<g:message code="titulo.ano_lancamento.label" default="Anolancamento" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="ano_lancamento" required="" value="${tituloInstance?.ano_lancamento}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tituloInstance, field: 'genero', 'error')} required">
	<label for="genero">
		<g:message code="titulo.genero.label" default="Genero" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="genero" from="${tituloInstance.constraints.genero.inList}" required="" value="${tituloInstance?.genero}" valueMessagePrefix="titulo.genero"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tituloInstance, field: 'faixa_etaria', 'error')} required">
	<label for="faixa_etaria">
		<g:message code="titulo.faixa_etaria.label" default="Faixaetaria" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="faixa_etaria" from="${tituloInstance.constraints.faixa_etaria.inList}" required="" value="${tituloInstance?.faixa_etaria}" valueMessagePrefix="titulo.faixa_etaria"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tituloInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="titulo.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" maxlength="30" pattern="${tituloInstance.constraints.nome.matches}" required="" value="${tituloInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tituloInstance, field: 'sinopse', 'error')} required">
	<label for="sinopse">
		<g:message code="titulo.sinopse.label" default="Sinopse" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="sinopse" cols="40" rows="5" maxlength="300" required="" value="${tituloInstance?.sinopse}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tituloInstance, field: 'avaliacao_geral', 'error')} required">
	<label for="avaliacao_geral">
		<g:message code="titulo.avaliacao_geral.label" default="Avaliacaogeral" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="avaliacao_geral" type="number" value="${tituloInstance.avaliacao_geral}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: tituloInstance, field: 'atores', 'error')} ">
	<label for="atores">
		<g:message code="titulo.atores.label" default="Atores" />
		
	</label>
	

</div>

