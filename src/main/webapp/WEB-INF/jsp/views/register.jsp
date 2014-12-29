<%@include file="../commons/includes.jsp"%>

<p>Create a new user</p>
<form:form commandName="user" cssClass="form-horizontal">
    <div class="form-group">
        <label for="name" class="col-sm-2 control-label">Name</label>
        <div class="col-sm-10">
            <form:input id="name" path="name" cssClass="form-control" />
        </div>
    </div>
    <div class="form-group">
        <label for="email" class="col-sm-2 control-label">Email</label>
        <div class="col-sm-10">
            <form:input id="email" path="email" cssClass="form-control" />
        </div>
    </div>
    <div class="form-group">
        <label for="password" class="col-sm-2 control-label">Password</label>
        <div class="col-sm-10">
            <form:password id="password" path="password" cssClass="form-control" />
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-10">
            <input type="submit" class="btn btn-lrg btn-primary" value="Create">
        </div>
    </div>
</form:form>
