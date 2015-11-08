<%@ page import="br.ufscar.dc.Video" %>



<div class="fieldcontain ${hasErrors(bean: videoInstance, field: 'legenda', 'error')} required">
	<label for="legenda">
		<g:message code="video.legenda.label" default="Legenda" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="legenda" from="${videoInstance.constraints.legenda.inList}" required="" value="${videoInstance?.legenda}" valueMessagePrefix="video.legenda"/>

</div>

<div class="fieldcontain ${hasErrors(bean: videoInstance, field: 'idioma_titulo', 'error')} required">
	<label for="idioma_titulo">
		<g:message code="video.idioma_titulo.label" default="Idiomatitulo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="idioma_titulo" from="${videoInstance.constraints.idioma_titulo.inList}" required="" value="${videoInstance?.idioma_titulo}" valueMessagePrefix="video.idioma_titulo"/>

</div>

<div class="fieldcontain ${hasErrors(bean: videoInstance, field: 'qualidade', 'error')} required">
	<label for="qualidade">
		<g:message code="video.qualidade.label" default="Qualidade" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="qualidade" from="${videoInstance.constraints.qualidade.inList}" required="" value="${videoInstance?.qualidade}" valueMessagePrefix="video.qualidade"/>

</div>

<div class="fieldcontain ${hasErrors(bean: videoInstance, field: 'frames', 'error')} ">
	<label for="frames">
		<g:message code="video.frames.label" default="Frames" />
		
	</label>
	<input type="file" id="frames" name="frames" />

</div>

<div class="fieldcontain ${hasErrors(bean: videoInstance, field: 'duracao', 'error')} required">
	<label for="duracao">
		<g:message code="video.duracao.label" default="Duracao" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="duracao" type="number" value="${videoInstance.duracao}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: videoInstance, field: 'pausePlay', 'error')} ">
	<label for="pausePlay">
		<g:message code="video.pausePlay.label" default="Pause Play" />
		
	</label>
	<g:checkBox name="pausePlay" value="${videoInstance?.pausePlay}" />

</div>

<div class="fieldcontain ${hasErrors(bean: videoInstance, field: 'tempo_atual', 'error')} required">
	<label for="tempo_atual">
		<g:message code="video.tempo_atual.label" default="Tempoatual" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="tempo_atual" type="number" value="${videoInstance.tempo_atual}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: videoInstance, field: 'tempo_inicial', 'error')} required">
	<label for="tempo_inicial">
		<g:message code="video.tempo_inicial.label" default="Tempoinicial" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="tempo_inicial" type="number" value="${videoInstance.tempo_inicial}" required=""/>

</div>

