<html>
<head>
<title>TekDays - Dashboard</title>
<meta name="layout" content="main" />
</head>
<body>
	<div class="nav" role="navigation">
		<ul>
			<li><a class="home" href="${createLink(uri: '/')}">Home</a></li>
			<li><g:link class="create" controller="task" action="create"> Create Task</g:link></li>
			<li><g:link class="create" controller="sponsorship"action="create">Add Sponsor</g:link></li>
			<li><g:link class="list" controller="sponsor" action="index"> All Sponsors</g:link></li>
		</ul>
	</div>
	<g:if test="${event}">
	<div id="event" style='margin: 10px 10px 10px 10px'>
		<g:render template="event" model="${['event':event]}" />
	</div>
	</g:if>
	<g:if test="${tasks}">
	<div id="tasks" style='margin: 10px 10px 10px 10px'>
		<g:render template="tasks" model="${['tasks':tasks]}" />
	</div>
	</g:if>
	<g:if test="${volunteers}">
	<div id="volunteers" style='margin: 10px 10px 10px 10px'>
		<g:render template="volunteers" model="${['volunteers':volunteers]}" />
	</div>
	</g:if>
	<g:if test="${messages}">
	<div id="messages" style='margin: 10px 10px 10px 10px'>
		<g:render template="messages" model="${[messages:messages]}" />
	</div>
	</g:if>
	<g:if test="${sponsors}">
	<div id="sponsors" style='margin: 10px 10px 10px 10px'>
		<g:render template="sponsors" model="${[sponsorships:sponsorships]}" />
	</div>
	</g:if>
</body>
</html>