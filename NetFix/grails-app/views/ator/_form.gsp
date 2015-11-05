<%@ page import="br.ufscar.dc.Ator" %>



<div class="fieldcontain ${hasErrors(bean: atorInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="ator.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" maxlength="30" pattern="${atorInstance.constraints.nome.matches}" required="" value="${atorInstance?.nome}"/>

</div>

