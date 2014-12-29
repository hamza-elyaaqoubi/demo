<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<p class="text-center">Login page</p>

<div id="loginbox" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
    <div class="panel panel-info" >
        <div class="panel-heading">
            <div class="panel-title">Sign In</div>
            <div style="float:right; font-size: 80%; position: relative; top:-10px"><a href="#">Forgot password?</a></div>
        </div>

        <div style="padding-top:30px" class="panel-body" >

            <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>

            <form id="loginform" class="form-horizontal" role="form" action='/j_spring_security_check' method='POST'>

                <div style="margin-bottom: 25px" class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    <input id="login-username" type="text" class="form-control" name='j_username' placeholder="username">
                </div>

                <div style="margin-bottom: 25px" class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                    <input id="login-password" type="password" class="form-control" name="j_password" placeholder="password">
                </div>

                <div style="margin-top:10px" class="form-group">
                    <div class="col-sm-12 controls">
                        <input class="btn btn-success" name="submit" type="submit" value="Login"/>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>