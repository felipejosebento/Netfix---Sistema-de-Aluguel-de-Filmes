
<%@ page import="br.ufscar.dc.Seriado" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'seriado.label', default: 'Seriado')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-seriado" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-seriado" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="ano_lancamento" title="${message(code: 'seriado.ano_lancamento.label', default: 'Anolancamento')}" />
					
						<g:sortableColumn property="genero" title="${message(code: 'seriado.genero.label', default: 'Genero')}" />
					
						<g:sortableColumn property="faixa_etaria" title="${message(code: 'seriado.faixa_etaria.label', default: 'Faixaetaria')}" />
					
						<g:sortableColumn property="nome" title="${message(code: 'seriado.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="sinopse" title="${message(code: 'seriado.sinopse.label', default: 'Sinopse')}" />
					
						<g:sortableColumn property="avaliacao_geral" title="${message(code: 'seriado.avaliacao_geral.label', default: 'Avaliacaogeral')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${seriadoInstanceList}" status="i" var="seriadoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${seriadoInstance.id}">${fieldValue(bean: seriadoInstance, field: "ano_lancamento")}</g:link></td>
					
						<td>${fieldValue(bean: seriadoInstance, field: "genero")}</td>
					
						<td>${fieldValue(bean: seriadoInstance, field: "faixa_etaria")}</td>
					
						<td>${fieldValue(bean: seriadoInstance, field: "nome")}</td>
					
						<td>${fieldValue(bean: seriadoInstance, field: "sinopse")}</td>
					
						<td>${fieldValue(bean: seriadoInstance, field: "avaliacao_geral")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${seriadoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
