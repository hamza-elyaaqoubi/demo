<%@include file="../commons/includes.jsp"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title><tiles:getAsString name="title"/></title>
        <tiles:insertAttribute name="head" />
    </head>
    <body>
        <div class="container">
            <tiles:insertAttribute name="header" />

            <tiles:insertAttribute name="body" />

            <tiles:insertAttribute name="footer" />
        </div>
    </body>
</html>
