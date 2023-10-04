<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <asset:stylesheet src="search.css"/>
    <title>Поиск отелей</title>
</head>
<body>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}">Вернуться к поиску</a></li>
        <li><g:link class="create" controller="hotel" action="create">Добавить отель</g:link></li>
    </ul>
</div>
<div class="main">
    <div>
        <h1 class="title centered ">Список отелей</h1>
    </div>

    <g:form action="search" controller="hotel" method="GET">
        <div class="search-div d-flex justify-content-center align-items-center">
            <g:select value="${params.country}" name="country" optionKey="id" noSelection="${['':'Выберите страну']}" from="${hotels.Country.list()}"/>
            <div class="ml-2">
                <input type="text" name="name" value="${params.name}" id="name" placeholder="Введите название отеля"/>
            </div>
            <input type="submit" value="Найти"/>
        </div>
    </g:form>
    <div id="list-hotel" class="content scaffold-list mt-3" role="main">
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <g:if test="${hotelCount == 0}">
            <div class="centered mt-5 not-found">
                <h2>Отели не найдены.</h2>
            </div>

        </g:if>
        <div class="hotel-table">
            <f:table collection="${hotelList}" template="table_hotels" />
        </div>
        <g:if test="${hotelCount >= 10}">
            <div class="pagination">
                <g:paginate total="${hotelCount ?: 0}" controller="hotel" action="search" params="${params}" />
            </div>
        </g:if>

    </div>
</div>

</body>
</html>