<table>
    <thead>
    <tr>
        <g:each in="${domainProperties}" var="p">
            <th>${p.defaultLabel}</th>
        </g:each>
        <p></p>
    </tr>
    </thead>
    <tbody>
    <g:each in="${collection}" var="bean" status="i">
        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
            <g:each in="${domainProperties}" var="p" status="j">
%{--                <g:if test="${j==0}">--}%
%{--                    <td><g:link method="GET" resource="${bean}"><f:display bean="${bean}" property="${p.property}" displayStyle="${displayStyle?:'table'}" theme="${theme}"/></g:link></td>--}%
%{--                </g:if>--}%
%{--                <g:else>--}%
                    <g:if test="${p.property == "website"}">
                        <g:if test="${bean.website}">
                            <td><a href="${bean.website}">Перейти на сайт</a></td>
                        </g:if>
                        <g:else><td></td></g:else>
                    </g:if>
                    <g:elseif test="${p.property == "stars"}">
                        <td>${"★".repeat(bean.stars)}</td>
                    </g:elseif>

                    <g:else>
%{--                        <td><f:display bean="${bean}" property="${p.property}"  displayStyle="${displayStyle?:'table'}" theme="${theme}"/></td>--}%
                        <td>${bean.(p.property)}</td>
                    </g:else>
%{--                </g:else>--}%
            </g:each>
        </tr>
    </g:each>
    </tbody>
</table>