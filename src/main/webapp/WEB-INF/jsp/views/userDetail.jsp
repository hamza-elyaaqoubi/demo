<%@include file="../commons/tags.jsp"%>

<div class="container">
    <p>
        The user
        <a href="<spring:url value='/users/${user.id}' />">
            ${user.firstName}
        </a>
        has ${fn:length(user.roles)} role(s)
    </p>

    <table class="table table-hover table-bordered table-striped">
        <thead>
        <tr>
            <th>First name</th>
            <th>Last name</th>
            <th>Account enabled</th>
            <th>Email</th>
            <th>Roles names</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>${user.firstName}</td>
            <td>${user.lastName}</td>
            <td>${user.enabled}</td>
            <td>${user.email}</td>
            <td>
                <c:forEach items="${user.roles}" var="role">
                    <a href="<spring:url value='/roles/${role.id}' />">
                            ${role.name}
                    </a>&nbsp;
                </c:forEach>
            </td>
        </tr>
        </tbody>
    </table>
</div>