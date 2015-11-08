
<%@ page import="br.ufscar.dc.Filme" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'filme.label', default: 'Filme')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-filme" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-filme" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
                        <p><g:message code=" Total " /><g:message code="${filmeInstanceCount}" /></p>

			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nome" title="${message(code: 'filme.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="genero" title="${message(code: 'filme.genero.label', default: 'Genero')}" />
					
						<g:sortableColumn property="faixa_etaria" title="${message(code: 'filme.faixa_etaria.label', default: 'Faixaetaria')}" />
					
						<g:sortableColumn property="ano_lancamento" title="${message(code: 'filme.ano_lancamento.label', default: 'Anolancamento')}" />
					
						<g:sortableColumn property="avaliacao_geral" title="${message(code: 'filme.avaliacao_geral.label', default: 'Avaliacaogeral')}" />
					
						<g:sortableColumn property="capa" title="${message(code: 'filme.capa.label', default: 'Capa')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${filmeInstanceList}" status="i" var="filmeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${filmeInstance.id}">${fieldValue(bean: filmeInstance, field: "nome")}</g:link></td>
					
						<td>${fieldValue(bean: filmeInstance, field: "genero")}</td>
					
						<td>${fieldValue(bean: filmeInstance, field: "faixa_etaria")}</td>
					
						<td>${fieldValue(bean: filmeInstance, field: "ano_lancamento")}</td>
					
						<td>${fieldValue(bean: filmeInstance, field: "avaliacao_geral")}</td>
					
						<td> 
                                                    <img src="${createLink(controller:'filme', action:'showCapa', id:"${filmeInstance.id}")}"
                                                     
                                                         title="${filmeInstance.capaNome}" 
                                                         width="60px" height="60px"/>
                                                </td>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${filmeInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
