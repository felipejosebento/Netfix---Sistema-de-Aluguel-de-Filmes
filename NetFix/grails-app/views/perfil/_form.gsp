<%@ page import="br.ufscar.dc.Perfil" %>



<div class="fieldcontain ${hasErrors(bean: perfilInstance, field: 'tipo', 'error')} required">
	<label for="tipo">
		<g:message code="perfil.tipo.label" default="Tipo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="tipo" from="${perfilInstance.constraints.tipo.inList}" required="" value="${perfilInstance?.tipo}" valueMessagePrefix="perfil.tipo"/>

</div>

<div class="fieldcontain ${hasErrors(bean: perfilInstance, field: 'pergunta', 'error')} required">
	<label for="pergunta">
		<g:message code="perfil.pergunta.label" default="Pergunta" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="pergunta" from="${perfilInstance.constraints.pergunta.inList}" required="" value="${perfilInstance?.pergunta}" valueMessagePrefix="perfil.pergunta"/>

</div>

<div class="fieldcontain ${hasErrors(bean: perfilInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="perfil.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${perfilInstance?.nome}"/>

</div>

