<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="tilesx" uri="http://tiles.apache.org/tags-tiles-extras" %>

<tilesx:useAttribute name="current" />

<div class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="<spring:url value="/"/>">HEL</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li class="${current == 'index' ? 'active' : ''}"><a href="<spring:url value="/"/>">Home</a></li>
                <li class="${current == 'login' ? 'active' : ''}"><a href="<spring:url value="/login"/>">Login</a></li>
                <li class="${current == 'register' ? 'active' : ''}"><a href="<spring:url value="/register"/>">Register</a></li>
                <li class="${current == 'users' ? 'active' : ''}"><a href="<spring:url value="/users"/>">Users</a></li>
                <li class="${current == 'roles' ? 'active' : ''}"><a href="<spring:url value="/roles"/>">Roles</a></li>
            </ul>
        </div><!--/.nav-collapse -->
    </div><!--/.container-fluid -->
</div>
