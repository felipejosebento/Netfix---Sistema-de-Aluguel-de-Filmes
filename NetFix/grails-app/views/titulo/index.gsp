
<%@ page import="br.ufscar.dc.Titulo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'titulo.label', default: 'Titulo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-titulo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-titulo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nome" title="${message(code: 'titulo.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="genero" title="${message(code: 'titulo.genero.label', default: 'Genero')}" />
					
						<g:sortableColumn property="faixa_etaria" title="${message(code: 'titulo.faixa_etaria.label', default: 'Faixaetaria')}" />
					
						<g:sortableColumn property="ano_lancamento" title="${message(code: 'titulo.ano_lancamento.label', default: 'Anolancamento')}" />
					
						<g:sortableColumn property="avaliacao_geral" title="${message(code: 'titulo.avaliacao_geral.label', default: 'Avaliacaogeral')}" />
					
						<g:sortableColumn property="capa" title="${message(code: 'titulo.capa.label', default: 'Capa')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${tituloInstanceList}" status="i" var="tituloInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${tituloInstance.id}">${fieldValue(bean: tituloInstance, field: "nome")}</g:link></td>
					
						<td>${fieldValue(bean: tituloInstance, field: "genero")}</td>
					
						<td>${fieldValue(bean: tituloInstance, field: "faixa_etaria")}</td>
					
						<td>${fieldValue(bean: tituloInstance, field: "ano_lancamento")}</td>
					
						<td>${fieldValue(bean: tituloInstance, field: "avaliacao_geral")}</td>
					
						<td>${fieldValue(bean: tituloInstance, field: "capa")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${tituloInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
