<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<p class="text-center">Create a new user</p>
<div id="signupbox" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
    <div class="panel panel-info">
        <div class="panel-heading">
            <div class="panel-title">Sign Up</div>
        </div>
        <div class="panel-body">
            <form:form commandName="user" cssClass="form-horizontal" role="form">
                <div class="form-group">
                    <label for="name" class="col-md-3 control-label">Name</label>
                    <div class="col-sm-9">
                        <form:input id="name" path="name" cssClass="form-control"/>
                    </div>
                </div>

                <div class="form-group">
                    <label for="email" class="col-sm-3 control-label">Email</label>
                    <div class="col-sm-9">
                        <form:input id="email" path="email" cssClass="form-control" />
                    </div>
                </div>

                <div class="form-group">
                    <label for="password" class="col-sm-3 control-label">Password</label>
                    <div class="col-sm-9">
                        <form:password id="password" path="password" cssClass="form-control" />
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-offset-3 col-md-9">
                        <button id="btn-signup" type="submit" class="btn btn-success"><i class="icon-hand-right"></i> &nbsp Sign Up</button>
                    </div>
                </div>
            </form:form>
        </div>
    </div>
</div>