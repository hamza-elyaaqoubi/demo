<%@include file="../commons/tags.jsp"%>

<div class="container">
    <h1>Roles list</h1>
    <table class="table table-hover table-bordered table-striped">
        <thead>
        <tr>
            <th>Role Id</th>
            <th>Role name</th>
        </tr>
        </thead>
        <tbody>
            <c:forEach items="${roles}" var="role">
                <tr>
                    <td>
                        ${role.id}
                    </td>
                    <td>
                        <a href="<spring:url value='/roles/${role.id}' />">
                            ${role.name}
                        </a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>