
<%@ page import="br.ufscar.dc.Titulo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'titulo.label', default: 'Titulo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-titulo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-titulo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list titulo">
			
				<g:if test="${tituloInstance?.ano_lancamento}">
				<li class="fieldcontain">
					<span id="ano_lancamento-label" class="property-label"><g:message code="titulo.ano_lancamento.label" default="Anolancamento" /></span>
					
						<span class="property-value" aria-labelledby="ano_lancamento-label"><g:fieldValue bean="${tituloInstance}" field="ano_lancamento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tituloInstance?.genero}">
				<li class="fieldcontain">
					<span id="genero-label" class="property-label"><g:message code="titulo.genero.label" default="Genero" /></span>
					
						<span class="property-value" aria-labelledby="genero-label"><g:fieldValue bean="${tituloInstance}" field="genero"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tituloInstance?.faixa_etaria}">
				<li class="fieldcontain">
					<span id="faixa_etaria-label" class="property-label"><g:message code="titulo.faixa_etaria.label" default="Faixaetaria" /></span>
					
						<span class="property-value" aria-labelledby="faixa_etaria-label"><g:fieldValue bean="${tituloInstance}" field="faixa_etaria"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tituloInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="titulo.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${tituloInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tituloInstance?.sinopse}">
				<li class="fieldcontain">
					<span id="sinopse-label" class="property-label"><g:message code="titulo.sinopse.label" default="Sinopse" /></span>
					
						<span class="property-value" aria-labelledby="sinopse-label"><g:fieldValue bean="${tituloInstance}" field="sinopse"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tituloInstance?.avaliacao_geral}">
				<li class="fieldcontain">
					<span id="avaliacao_geral-label" class="property-label"><g:message code="titulo.avaliacao_geral.label" default="Avaliacaogeral" /></span>
					
						<span class="property-value" aria-labelledby="avaliacao_geral-label"><g:fieldValue bean="${tituloInstance}" field="avaliacao_geral"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:tituloInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${tituloInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
