<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<h1>List user</h1>
<table class="table table-hover table-bordered table-striped">
    <thead>
        <tr>
            <th>User name</th>
            <th>Password</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${users}" var="user">
            <tr>
                <td>
                    <a href="<spring:url value='/users/${user.username}' />">
                        ${user.username}
                    </a>
                </td>
                <td>
                    ${user.password}
                </td>
            </tr>
        </c:forEach>
    
    </tbody>
</table>