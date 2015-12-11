<%@ page import="br.ufscar.dc.Perfil" %>



<div class="fieldcontain ${hasErrors(bean: perfilInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="perfil.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" maxlength="30" pattern="${perfilInstance.constraints.nome.matches}" required="" value="${perfilInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: perfilInstance, field: 'qualidade', 'error')} required">
	<label for="qualidade">
		<g:message code="perfil.qualidade.label" default="Qualidade" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="qualidade" from="${perfilInstance.constraints.qualidade.inList}" required="" value="${perfilInstance?.qualidade}" valueMessagePrefix="perfil.qualidade"/>

</div>

<div class="fieldcontain ${hasErrors(bean: perfilInstance, field: 'pergunta', 'error')} required">
	<label for="pergunta">
		<g:message code="perfil.pergunta.label" default="Pergunta" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="pergunta" from="${perfilInstance.constraints.pergunta.inList}" required="" value="${perfilInstance?.pergunta}" valueMessagePrefix="perfil.pergunta"/>

</div>

