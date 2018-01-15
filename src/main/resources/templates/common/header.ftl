<!--suppress HtmlUnknownTarget -->
<#macro header active>
	<nav class="navbar navbar-custom navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
					<i class="fa fa-bars"></i>
				</button>
				<a class="navbar-brand page-scroll" href="./"><span class="yellow">h</span>elenai<span class="yellow">s</span>zymon<span class="yellow">z</span>apraszaja.pl </a>
			</div>

			<div class="collapse navbar-collapse navbar-right navbar-main-collapse">
				<ul class="nav navbar-nav">
					<li <#if active == 'main'>class="active"</#if>><a href="./">Strona domowa</a></li>
					<li <#if active == 'info'>class="active"</#if>><a href="wedding.html">Ślub</a></li>
					<li <#if active == 'reception'>class="active"</#if>><a href="reception.html">Wesele</a></li>
					<li <#if active == 'contact'>class="active"</#if>><a href="contact.html">Kontakt</a></li>
					<li id="admin-panel" <#if active == 'admin'>class="active"</#if>><a href="admin.html">Panel Administatora</a></li>
				</ul>
			</div>
		</div>
	</nav>
</#macro>