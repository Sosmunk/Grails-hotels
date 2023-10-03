<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'hotel.label', default: 'Hotel')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-hotel" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create">Добавить отель</g:link></li>
            </ul>
        </div>
        <div id="list-hotel" class="content scaffold-list" role="main">
            <h1>Справочник отелей</h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:table collection="${hotelList}" />

            <g:if test="${hotelCount >= 10}">
                <div class="pagination">
                    <g:paginate total="${hotelCount ?: 0}" controller="hotel" action="index" params="${params}" />
                </div>
            </g:if>
        </div>
    </body>
</html>