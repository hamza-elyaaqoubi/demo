<%@include file="tags.jsp"%>

<!-- Global variable to know the current page -->
<tilesx:useAttribute name="current" />

<div id="container_hornav" class="container no-padding">
    <!-- Logo -->
    <div class="logo">
        <a href="<spring:url value="/"/>">
            <img src="<c:url value="/resources/assets/img/logo.png"/>" alt="Logo" />
        </a>
    </div>
    <!-- End Logo -->
    <!-- Slogan -->
    <p class="site-slogan">EL YAAQOUBI Hamza</p>
    <!-- End Slogan -->
    <!-- Top Menu -->
    <div class="row">
        <div class="hornav-block">
            <div id="hornav" class="pull-right">
                <ul id="hornavmenu" class="nav navbar-nav">
                    <li class="${current == 'index' ? 'active' : ''}"><a href="<spring:url value="/"/>">Home</a></li>
                    <security:authorize access="!isAuthenticated()">
                        <li class="${current == 'login' ? 'active' : ''}"><a href="<spring:url value="/login"/>">Login</a></li>
                        <li class="${current == 'register' ? 'active' : ''}"><a href="<spring:url value="/register"/>">Register</a></li>
                    </security:authorize>
                    <security:authorize access="isAuthenticated() && hasRole('ROLE_ADMIN')">
                        <li>
                            <span>Managing</span>
                            <ul>
                                <li><a href="<spring:url value="/users"/>">Users</a></li>
                                <li><a href="<spring:url value="/roles"/>">Roles</a></li>
                            </ul>
                        </li>
                    </security:authorize>
                    <li class="${current == 'myAccount' ? 'active' : ''}"><a href="<spring:url value="/myAccount"/>">My account</a></li>
                    <li class="${current == 'about' ? 'active' : ''}"><a href="<spring:url value="/about"/>">About</a></li>
                    <li class="${current == 'contact' ? 'active' : ''}"><a href="<spring:url value="/contact"/>">Contact</a></li>
                    <security:authorize access="isAuthenticated()">
                        <li><a href="<spring:url value="/logout"/>">logout</a></li>
                    </security:authorize>
                </ul>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
    <!-- End Top Menu -->
</div>