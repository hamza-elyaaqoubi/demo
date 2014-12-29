<%@include file="../commons/includes.jsp"%>

<h1>Users list</h1>
<table class="table table-hover table-bordered table-striped">
    <thead>
        <tr>
            <th>User Id</th>
            <th>User name</th>
            <th>Email</th>
            <th>Password</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${users}" var="user">
            <tr>
                <td>
                    ${user.id}
                </td>
                <td>
                    <a href="<spring:url value='/users/${user.id}' />">
                        ${user.name}
                    </a>
                </td>
                <td>
                    ${user.email}
                </td>
                <td>
                    ${user.password}
                </td>
            </tr>
        </c:forEach>
    
    </tbody>
</table>