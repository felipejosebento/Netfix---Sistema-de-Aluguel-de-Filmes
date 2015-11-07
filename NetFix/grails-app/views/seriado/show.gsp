
<%@ page import="br.ufscar.dc.Seriado" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'seriado.label', default: 'Seriado')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-seriado" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-seriado" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list seriado">
			
				<g:if test="${seriadoInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="seriado.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${seriadoInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${seriadoInstance?.genero}">
				<li class="fieldcontain">
					<span id="genero-label" class="property-label"><g:message code="seriado.genero.label" default="Genero" /></span>
					
						<span class="property-value" aria-labelledby="genero-label"><g:fieldValue bean="${seriadoInstance}" field="genero"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${seriadoInstance?.faixa_etaria}">
				<li class="fieldcontain">
					<span id="faixa_etaria-label" class="property-label"><g:message code="seriado.faixa_etaria.label" default="Faixaetaria" /></span>
					
						<span class="property-value" aria-labelledby="faixa_etaria-label"><g:fieldValue bean="${seriadoInstance}" field="faixa_etaria"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${seriadoInstance?.ano_lancamento}">
				<li class="fieldcontain">
					<span id="ano_lancamento-label" class="property-label"><g:message code="seriado.ano_lancamento.label" default="Anolancamento" /></span>
					
						<span class="property-value" aria-labelledby="ano_lancamento-label"><g:fieldValue bean="${seriadoInstance}" field="ano_lancamento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${seriadoInstance?.avaliacao_geral}">
				<li class="fieldcontain">
					<span id="avaliacao_geral-label" class="property-label"><g:message code="seriado.avaliacao_geral.label" default="Avaliacaogeral" /></span>
					
						<span class="property-value" aria-labelledby="avaliacao_geral-label"><g:fieldValue bean="${seriadoInstance}" field="avaliacao_geral"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${seriadoInstance?.capa}">
				<li class="fieldcontain">
					<span id="capa-label" class="property-label"><g:message code="seriado.capa.label" default="Capa" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${seriadoInstance?.sinopse}">
				<li class="fieldcontain">
					<span id="sinopse-label" class="property-label"><g:message code="seriado.sinopse.label" default="Sinopse" /></span>
					
						<span class="property-value" aria-labelledby="sinopse-label"><g:fieldValue bean="${seriadoInstance}" field="sinopse"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${seriadoInstance?.criador}">
				<li class="fieldcontain">
					<span id="criador-label" class="property-label"><g:message code="seriado.criador.label" default="Criador" /></span>
					
						<span class="property-value" aria-labelledby="criador-label"><g:fieldValue bean="${seriadoInstance}" field="criador"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${seriadoInstance?.episodios}">
				<li class="fieldcontain">
					<span id="episodios-label" class="property-label"><g:message code="seriado.episodios.label" default="Episodios" /></span>
					
						<g:each in="${seriadoInstance.episodios}" var="e">
						<span class="property-value" aria-labelledby="episodios-label"><g:link controller="episodio" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${seriadoInstance?.temporadas}">
				<li class="fieldcontain">
					<span id="temporadas-label" class="property-label"><g:message code="seriado.temporadas.label" default="Temporadas" /></span>
					
						<span class="property-value" aria-labelledby="temporadas-label"><g:fieldValue bean="${seriadoInstance}" field="temporadas"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:seriadoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${seriadoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
