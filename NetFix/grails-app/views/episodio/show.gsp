
<%@ page import="br.ufscar.dc.Episodio" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'episodio.label', default: 'Episodio')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-episodio" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-episodio" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list episodio">
			
				<g:if test="${episodioInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="episodio.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${episodioInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${episodioInstance?.sinopse}">
				<li class="fieldcontain">
					<span id="sinopse-label" class="property-label"><g:message code="episodio.sinopse.label" default="Sinopse" /></span>
					
						<span class="property-value" aria-labelledby="sinopse-label"><g:fieldValue bean="${episodioInstance}" field="sinopse"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${episodioInstance?.video}">
				<li class="fieldcontain">
					<span id="video-label" class="property-label"><g:message code="episodio.video.label" default="Video" /></span>
					
						<span class="property-value" aria-labelledby="video-label"><g:link controller="video" action="show" id="${episodioInstance?.video?.id}">${episodioInstance?.video?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:episodioInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${episodioInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
