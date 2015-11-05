
<%@ page import="br.ufscar.dc.Video" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'video.label', default: 'Video')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-video" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-video" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list video">
			
				<g:if test="${videoInstance?.legenda}">
				<li class="fieldcontain">
					<span id="legenda-label" class="property-label"><g:message code="video.legenda.label" default="Legenda" /></span>
					
						<span class="property-value" aria-labelledby="legenda-label"><g:fieldValue bean="${videoInstance}" field="legenda"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoInstance?.idioma_titulo}">
				<li class="fieldcontain">
					<span id="idioma_titulo-label" class="property-label"><g:message code="video.idioma_titulo.label" default="Idiomatitulo" /></span>
					
						<span class="property-value" aria-labelledby="idioma_titulo-label"><g:fieldValue bean="${videoInstance}" field="idioma_titulo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoInstance?.qualidade}">
				<li class="fieldcontain">
					<span id="qualidade-label" class="property-label"><g:message code="video.qualidade.label" default="Qualidade" /></span>
					
						<span class="property-value" aria-labelledby="qualidade-label"><g:fieldValue bean="${videoInstance}" field="qualidade"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoInstance?.duracao}">
				<li class="fieldcontain">
					<span id="duracao-label" class="property-label"><g:message code="video.duracao.label" default="Duracao" /></span>
					
						<span class="property-value" aria-labelledby="duracao-label"><g:fieldValue bean="${videoInstance}" field="duracao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoInstance?.episodio}">
				<li class="fieldcontain">
					<span id="episodio-label" class="property-label"><g:message code="video.episodio.label" default="Episodio" /></span>
					
						<span class="property-value" aria-labelledby="episodio-label"><g:link controller="episodio" action="show" id="${videoInstance?.episodio?.id}">${videoInstance?.episodio?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoInstance?.filme}">
				<li class="fieldcontain">
					<span id="filme-label" class="property-label"><g:message code="video.filme.label" default="Filme" /></span>
					
						<span class="property-value" aria-labelledby="filme-label"><g:link controller="filme" action="show" id="${videoInstance?.filme?.id}">${videoInstance?.filme?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoInstance?.frames}">
				<li class="fieldcontain">
					<span id="frames-label" class="property-label"><g:message code="video.frames.label" default="Frames" /></span>
					
						<span class="property-value" aria-labelledby="frames-label"><g:fieldValue bean="${videoInstance}" field="frames"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoInstance?.pausePlay}">
				<li class="fieldcontain">
					<span id="pausePlay-label" class="property-label"><g:message code="video.pausePlay.label" default="Pause Play" /></span>
					
						<span class="property-value" aria-labelledby="pausePlay-label"><g:formatBoolean boolean="${videoInstance?.pausePlay}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoInstance?.tempo_atual}">
				<li class="fieldcontain">
					<span id="tempo_atual-label" class="property-label"><g:message code="video.tempo_atual.label" default="Tempoatual" /></span>
					
						<span class="property-value" aria-labelledby="tempo_atual-label"><g:fieldValue bean="${videoInstance}" field="tempo_atual"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoInstance?.tempo_inicial}">
				<li class="fieldcontain">
					<span id="tempo_inicial-label" class="property-label"><g:message code="video.tempo_inicial.label" default="Tempoinicial" /></span>
					
						<span class="property-value" aria-labelledby="tempo_inicial-label"><g:fieldValue bean="${videoInstance}" field="tempo_inicial"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:videoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${videoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
