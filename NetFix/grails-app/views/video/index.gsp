
<%@ page import="br.ufscar.dc.Video" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'video.label', default: 'Video')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-video" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-video" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="video.filme.label" default="Filme" /></th>
					
						<th><g:message code="video.episodio.label" default="Episodio" /></th>
					
						<g:sortableColumn property="legenda" title="${message(code: 'video.legenda.label', default: 'Legenda')}" />
					
						<g:sortableColumn property="idioma_titulo" title="${message(code: 'video.idioma_titulo.label', default: 'Idiomatitulo')}" />
					
						<g:sortableColumn property="qualidade" title="${message(code: 'video.qualidade.label', default: 'Qualidade')}" />
					
						<g:sortableColumn property="frames" title="${message(code: 'video.frames.label', default: 'Frames')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${videoInstanceList}" status="i" var="videoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${videoInstance.id}">${fieldValue(bean: videoInstance, field: "filme")}</g:link></td>
					
						<td>${fieldValue(bean: videoInstance, field: "episodio")}</td>
					
						<td>${fieldValue(bean: videoInstance, field: "legenda")}</td>
					
						<td>${fieldValue(bean: videoInstance, field: "idioma_titulo")}</td>
					
						<td>${fieldValue(bean: videoInstance, field: "qualidade")}</td>
					
						<td>${fieldValue(bean: videoInstance, field: "frames")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${videoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
