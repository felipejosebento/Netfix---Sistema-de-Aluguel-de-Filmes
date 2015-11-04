
<%@ page import="br.ufscar.dc.Episodio" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'episodio.label', default: 'Episodio')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-episodio" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-episodio" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nome" title="${message(code: 'episodio.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="sinopse" title="${message(code: 'episodio.sinopse.label', default: 'Sinopse')}" />
					
						<th><g:message code="episodio.video.label" default="Video" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${episodioInstanceList}" status="i" var="episodioInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${episodioInstance.id}">${fieldValue(bean: episodioInstance, field: "nome")}</g:link></td>
					
						<td>${fieldValue(bean: episodioInstance, field: "sinopse")}</td>
					
						<td>${fieldValue(bean: episodioInstance, field: "video")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${episodioInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
