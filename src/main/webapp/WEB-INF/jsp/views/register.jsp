<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">

    <!-- === END HEADER === -->
    <!-- === BEGIN CONTENT === -->
    <div class="row margin-vert-30">

        <!-- Register Box -->
        <div class="col-md-6 col-md-offset-3 col-sm-offset-3">
            <c:if test="${param.success eq true}">
                <blockquote class="primary">
                    <p>
                        <em>Registration successful</em>
                    </p>
                </blockquote>
            </c:if>
            <form:form commandName="user" cssClass="signup-page" role="form" method="post">
                <div class="signup-header">
                    <h2>Register a new account</h2>
                    <p>Already a member? Click
                        <a class="color-green" href="#">HERE</a> to login to your account.
                    </p>
                </div>

                <label>First Name</label>
                <form:input id="firstName" path="firstName" cssClass="form-control"/>

                <p class="dropcap" style="color: red; font-size: 0.8em;">
                    <form:errors path="firstName" />
                </p>

                <label>Last Name</label>
                <form:input id="lastName" path="lastName" cssClass="form-control"/>

                <p class="dropcap" style="color: red; font-size: 0.8em;">
                    <form:errors path="lastName" />
                </p>

                <label>Email Address
                    <span class="color-red">*</span>
                </label>
                <form:input id="email" path="email" cssClass="form-control" />

                <p class="dropcap" style="color: red; font-size: 0.8em;">
                    <form:errors path="email" />
                </p>

                <div class="row">
                    <div class="col-sm-6">
                        <label>Password
                            <span class="color-red">*</span>
                        </label>
                        <form:password id="password" path="password" cssClass="form-control" />
                        <p class="dropcap" style="color: red; font-size: 0.8em;">
                            <form:errors path="password" />
                        </p>
                    </div>
                    <div class="col-sm-6">
                        <label>Confirm Password
                            <span class="color-red">*</span>
                        </label>
                        <input type="password" class="form-control" />
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-lg-8">
                        <label class="checkbox">
                            <input type="checkbox">I read the
                            <a href="#">Terms and Conditions</a>
                        </label>
                    </div>
                    <div class="col-lg-4 text-right">
                        <button type="submit" class="btn btn-primary">Sign Up</button>
                    </div>
                </div>
            </form:form>
        </div>
        <!-- End Register Box -->
    </div>
</div>