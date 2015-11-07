<%@ page import="br.ufscar.dc.Seriado" %>



<div class="fieldcontain ${hasErrors(bean: seriadoInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="seriado.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" maxlength="30" pattern="${seriadoInstance.constraints.nome.matches}" required="" value="${seriadoInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: seriadoInstance, field: 'genero', 'error')} required">
	<label for="genero">
		<g:message code="seriado.genero.label" default="Genero" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="genero" from="${seriadoInstance.constraints.genero.inList}" required="" value="${seriadoInstance?.genero}" valueMessagePrefix="seriado.genero"/>

</div>

<div class="fieldcontain ${hasErrors(bean: seriadoInstance, field: 'faixa_etaria', 'error')} required">
	<label for="faixa_etaria">
		<g:message code="seriado.faixa_etaria.label" default="Faixaetaria" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="faixa_etaria" from="${seriadoInstance.constraints.faixa_etaria.inList}" required="" value="${seriadoInstance?.faixa_etaria}" valueMessagePrefix="seriado.faixa_etaria"/>

</div>

<div class="fieldcontain ${hasErrors(bean: seriadoInstance, field: 'ano_lancamento', 'error')} required">
	<label for="ano_lancamento">
		<g:message code="seriado.ano_lancamento.label" default="Anolancamento" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="ano_lancamento" pattern="${seriadoInstance.constraints.ano_lancamento.matches}" required="" value="${seriadoInstance?.ano_lancamento}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: seriadoInstance, field: 'avaliacao_geral', 'error')} required">
	<label for="avaliacao_geral">
		<g:message code="seriado.avaliacao_geral.label" default="Avaliacaogeral" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="avaliacao_geral" type="number" value="${seriadoInstance.avaliacao_geral}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: seriadoInstance, field: 'capa', 'error')} required">
	<label for="capa">
		<g:message code="seriado.capa.label" default="Capa" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="capa" name="capa" />

</div>

<div class="fieldcontain ${hasErrors(bean: seriadoInstance, field: 'sinopse', 'error')} required">
	<label for="sinopse">
		<g:message code="seriado.sinopse.label" default="Sinopse" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="sinopse" cols="40" rows="5" maxlength="300" required="" value="${seriadoInstance?.sinopse}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: seriadoInstance, field: 'criador', 'error')} required">
	<label for="criador">
		<g:message code="seriado.criador.label" default="Criador" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="criador" required="" value="${seriadoInstance?.criador}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: seriadoInstance, field: 'episodios', 'error')} ">
	<label for="episodios">
		<g:message code="seriado.episodios.label" default="Episodios" />
		
	</label>
	<g:select name="episodios" from="${br.ufscar.dc.Episodio.list()}" multiple="multiple" optionKey="id" size="5" value="${seriadoInstance?.episodios*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: seriadoInstance, field: 'temporadas', 'error')} required">
	<label for="temporadas">
		<g:message code="seriado.temporadas.label" default="Temporadas" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="temporadas" type="number" value="${seriadoInstance.temporadas}" required=""/>

</div>

