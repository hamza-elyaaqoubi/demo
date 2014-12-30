<%@include file="../commons/tags.jsp"%>

<!DOCTYPE html>
<html>
    <head>
        <title><tiles:getAsString name="title"/></title>

        <tiles:insertAttribute name="head" />
    </head>
    <body>
        <div id="body_bg">
            <tiles:insertAttribute name="socialNetwork" />

            <div class="primary-container-group">
                <!-- Background -->
                <div class="primary-container-background">
                    <div class="primary-container"></div>
                    <div class="clearfix"></div>
                </div>
                <!--End Background -->

                <div class="primary-container">
                    <tiles:insertAttribute name="header" />

                    <tiles:insertAttribute name="body" />

                    <tiles:insertAttribute name="footer" />
                </div>

                <div class="container padding-vert-30">
                    <div class="row">
                        <div id="copyright">
                            <p>Copyright &copy; EL YAAQOUBI Hamza 2014. All right reserved. </p>
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <%@include file="../commons/jsIncludes.jsp"%>
    </body>
</html>
