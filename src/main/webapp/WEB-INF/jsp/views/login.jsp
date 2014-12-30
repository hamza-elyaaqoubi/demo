<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="container">
    <!-- === END HEADER === -->
    <!-- === BEGIN CONTENT === -->
    <div class="container">
        <div class="row margin-vert-30">
            <!-- Login Box -->
            <div class="col-md-6 col-md-offset-3 col-sm-offset-3">
                <form id="loginform" class="login-page" role="form" action='/j_spring_security_check' method='POST'>

                    <div class="login-header margin-bottom-30">
                        <h2>Login to your account</h2>
                    </div>

                    <div class="input-group margin-bottom-20">
                        <span class="input-group-addon">
                            <i class="fa fa-user"></i>
                        </span>
                        <input type="text" class="form-control"name='j_username' placeholder="username">
                    </div>

                    <div class="input-group margin-bottom-20">
                        <span class="input-group-addon">
                            <i class="fa fa-lock"></i>
                        </span>
                        <input type="password" name="j_password" class="form-control" placeholder="password">
                    </div>


                    <div class="row">
                        <div class="col-md-6">
                            <%--<label class="checkbox">
                                <input type="checkbox">Stay signed in
                            </label>--%>
                        </div>
                        <div class="col-md-6">
                            <input type="submit" class="btn btn-primary pull-right" value="Login"/>
                        </div>
                    </div>
                    <hr>
                    <h4>Forget your Password ?</h4>
                    <p>
                        <a href="#" class="color-green">Click here</a> to reset your password.</p>
                </form>
            </div>
            <!-- End Login Box -->
        </div>
    </div>
    <!-- === END CONTENT === -->
    <!-- === BEGIN FOOTER === -->
</div>
