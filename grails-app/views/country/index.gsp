<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'country.label', default: 'Country')}" />
        <title>Список стран</title>
    </head>
    <body>
        <a href="#list-country" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create">Добавить страну</g:link></li>
            </ul>
        </div>


        <div id="list-country" class="content scaffold-list" role="main">
            <h1>Список стран</h1>

            <g:form action="index" controller="country" method="GET">
                <div class="search-div d-flex mt-3 align-items-center">
                    <div class="ml-2">
                        <input type="text" name="name" value="${params.name}" id="name" placeholder="Введите название страны"/>
                    </div>
                    <input type="submit" value="Найти"/>
                </div>
            </g:form>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:table collection="${countryList}" template="table_index"/>
            <g:if test="${countryCount == 0}">
                <h2>Ничего не найдено.</h2>
            </g:if>

            <g:if test="${countryCount >= 10}">
                <div class="pagination">
                    <g:paginate total="${countryCount ?: 0}" />
                </div>
            </g:if>

        </div>
    </body>
</html>