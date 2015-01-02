<%@include file="../commons/tags.jsp"%>

<div class="container">
    <p>
        The role
        <a href="<spring:url value='/roles/${role.id}' />">
            ${role.name}
        </a>
         is affected to ${fn:length(role.user)} user(s)
    </p>

    <table class="table table-hover table-bordered table-striped">
        <thead>
        <tr>
            <th>User name</th>
            <th>User email</th>
        </tr>
        </thead>
        <tbody>
            <c:forEach items="${role.user}" var="user">
                <tr>
                    <td>
                        <a href="<spring:url value='/users/${user.id}' />">
                            ${user.firstName}
                        </a>
                    </td>
                    <td>
                        ${user.email}
                    </td>
                </tr>
            </c:forEach>
        </tbody>
</table>
</div>