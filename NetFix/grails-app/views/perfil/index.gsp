
<%@ page import="br.ufscar.dc.Perfil" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'perfil.label', default: 'Perfil')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-perfil" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-perfil" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nome" title="${message(code: 'perfil.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="qualidade" title="${message(code: 'perfil.qualidade.label', default: 'Qualidade')}" />
					
						<g:sortableColumn property="pergunta" title="${message(code: 'perfil.pergunta.label', default: 'Pergunta')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${perfilInstanceList}" status="i" var="perfilInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${perfilInstance.id}">${fieldValue(bean: perfilInstance, field: "nome")}</g:link></td>
					
						<td>${fieldValue(bean: perfilInstance, field: "qualidade")}</td>
					
						<td>${fieldValue(bean: perfilInstance, field: "pergunta")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${perfilInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
