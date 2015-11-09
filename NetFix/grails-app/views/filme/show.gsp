
<%@ page import="br.ufscar.dc.Filme" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'filme.label', default: 'Filme')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-filme" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-filme" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list filme">
			
				<g:if test="${filmeInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="filme.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${filmeInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${filmeInstance?.genero}">
				<li class="fieldcontain">
					<span id="genero-label" class="property-label"><g:message code="filme.genero.label" default="Genero" /></span>
					
						<span class="property-value" aria-labelledby="genero-label"><g:fieldValue bean="${filmeInstance}" field="genero"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${filmeInstance?.faixa_etaria}">
				<li class="fieldcontain">
					<span id="faixa_etaria-label" class="property-label"><g:message code="filme.faixa_etaria.label" default="Faixaetaria" /></span>
					
						<span class="property-value" aria-labelledby="faixa_etaria-label"><g:fieldValue bean="${filmeInstance}" field="faixa_etaria"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${filmeInstance?.ano_lancamento}">
				<li class="fieldcontain">
					<span id="ano_lancamento-label" class="property-label"><g:message code="filme.ano_lancamento.label" default="Anolancamento" /></span>
					
						<span class="property-value" aria-labelledby="ano_lancamento-label"><g:fieldValue bean="${filmeInstance}" field="ano_lancamento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${filmeInstance?.avaliacao_geral}">
				<li class="fieldcontain">
					<span id="avaliacao_geral-label" class="property-label"><g:message code="filme.avaliacao_geral.label" default="Avaliacaogeral" /></span>
					
						<span class="property-value" aria-labelledby="avaliacao_geral-label"><g:fieldValue bean="${filmeInstance}" field="avaliacao_geral"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${filmeInstance?.capa}">
				<li class="fieldcontain">
					<span id="capa-label" class="property-label"><g:message code="filme.capa.label" default="Capa" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${filmeInstance?.sinopse}">
				<li class="fieldcontain">
					<span id="sinopse-label" class="property-label"><g:message code="filme.sinopse.label" default="Sinopse" /></span>
					
						<span class="property-value" aria-labelledby="sinopse-label"><g:fieldValue bean="${filmeInstance}" field="sinopse"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${filmeInstance?.diretor}">
				<li class="fieldcontain">
					<span id="diretor-label" class="property-label"><g:message code="filme.diretor.label" default="Diretor" /></span>
					
						<span class="property-value" aria-labelledby="diretor-label"><g:fieldValue bean="${filmeInstance}" field="diretor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${filmeInstance?.video}">
				<li class="fieldcontain">
					<span id="video-label" class="property-label"><g:message code="filme.video.label" default="Video" /></span>
					
						<span class="property-value" aria-labelledby="video-label"><g:link controller="video" action="show" id="${filmeInstance?.video?.id}">${filmeInstance?.video?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${filmeInstance?.atores}">
				<li class="fieldcontain">
					<span id="atores-label" class="property-label"><g:message code="filme.atores.label" default="Atores" /></span>
					
						<g:each in="${filmeInstance.atores}" var="a">
						<span class="property-value" aria-labelledby="atores-label"><g:link controller="ator" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:filmeInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${filmeInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
