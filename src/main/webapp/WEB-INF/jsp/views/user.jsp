<%@include file="../commons/tags.jsp"%>


<div class="container">
    <h1>Users</h1>
    <hr>
    <table class="table table-hover table-bordered table-striped">
        <thead>
            <tr>
                <th>Firsr name</th>
                <th>Last name</th>
                <th>Email</th>
                <th>Enabled</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${users}" var="user">
                <tr>
                    <td>
                        <a href="<spring:url value='/users/${user.id}' />">
                            ${user.firstName}
                        </a>
                    </td>
                    <td>
                        ${user.lastName}
                    </td>
                    <td>
                        ${user.email}
                    </td>
                    <td>
                        ${user.enabled}
                    </td>
                    <td>
                        <c:choose>
                            <c:when test="${user.enabled eq true}">
                                <button type="button" class="btn btn-primary btn-default" data-toggle="modal" data-target="#enableDisableAccountModal">
                                    Disable
                                </button>
                            </c:when>
                            <c:otherwise>
                                <button type="button" class="btn btn-primary btn-green" data-toggle="modal" data-target="#enableDisableAccountModal">
                                    Enable
                                </button>
                            </c:otherwise>
                        </c:choose>
                    </td>
                   <%-- <td>
                        <a href="/users/delete/${user.id}" class="btn btn-primary btn-danger btn-delete" data-toggle="modal" data-target="#deleteAccountModal">
                            Delete
                        </a>
                    </td>--%>
                </tr>
            </c:forEach>

        </tbody>
    </table>

    <!-- Button trigger modal -->
    <button type="button" class="btn btn-primary btn-success" data-toggle="modal" data-target="#addAccountModal">
        Add new account
    </button>

    <hr>
    <%@include file="addAccountModal.jsp"%>
    <%@include file="deleteAccounttModal.jsp"%>
</div>

<%--<script type="text/javascript">
    $(document).ready(function () {
        alert("OK jQuery")
        $(".btn-delete").click(function (event) {
            event.preventDefault();
            $("#deleteAccountModal .delete-modal-btn").attr("href", $(this.attr("href")));
            $("#deleteAccountModal").modal();
        });
    })(jQuery);
</script>--%>

