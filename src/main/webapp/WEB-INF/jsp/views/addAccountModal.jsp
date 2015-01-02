<form:form commandName="user">
    <div class="modal fade" id="addAccountModal" tabindex="-1" role="dialog" aria-labelledby="addAccountModal" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Add new account</h4>
                </div>
                <div class="modal-body">
                    <label>First Name</label>
                    <form:input id="firstName" path="firstName" cssClass="form-control margin-bottom-20"/>

                    <label>Last Name</label>
                    <form:input id="lastame" path="lastName" cssClass="form-control margin-bottom-20"/>

                    <label>Email Address
                        <span class="color-red">*</span>
                    </label>
                    <form:input id="email" path="email" cssClass="form-control margin-bottom-20" />

                    <label>Password
                        <span class="color-red">*</span>
                    </label>
                    <form:password id="password" path="password" cssClass="form-control margin-bottom-20" />
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Create</button>
                </div>
            </div>
        </div>
    </div>
</form:form>
