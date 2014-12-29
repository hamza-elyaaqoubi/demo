<%@include file="includes.jsp"%>

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
                <li class="${current == 'users' ? 'active' : ''}"><a href="<spring:url value="/users"/>">Manage user</a></li>
                <li class="${current == 'roles' ? 'active' : ''}"><a href="<spring:url value="/roles"/>">Manage roles</a></li>
                <li class="${current == 'myAccount' ? 'active' : ''}"><a href="<spring:url value="/myAccount"/>">My account</a></li>
                <li class="${current == 'about' ? 'active' : ''}"><a href="<spring:url value="/about"/>">About</a></li>
                <li class="${current == 'contact' ? 'active' : ''}"><a href="<spring:url value="/contact"/>">Contact</a></li>
            </ul>
        </div><!--/.nav-collapse -->
    </div><!--/.container-fluid -->
</div>
