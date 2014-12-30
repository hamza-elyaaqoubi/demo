<%@include file="../commons/tags.jsp"%>

<div class="container no-padding">
    <!-- === END HEADER === -->
    <!-- === BEGIN CONTENT === -->
    <div class="row">
        <!-- Tabs -->
        <div class="tabs-dark" style="padding:0;">
            <!-- Tab Navigation -->
            <ul class="nav nav-tabs">
                <li class="active">
                    <a href="#home" data-toggle="tab">Home</a>
                </li>
                <li>
                    <a href="#profile" data-toggle="tab">Profile</a>
                </li>
                <li>
                    <a href="#messages" data-toggle="tab">Messages</a>
                </li>
            </ul>
            <!-- End Tab Navigation -->
            <!-- Tab Panes -->
            <div class="tab-content">
                <div class="tab-pane fade in active" id="home">
                    <img style="float: left; margin-right: 25px; margin-bottom: 10px;" src="<c:url value="/resources/assets/img/frontpage/filler1.jpg"/>" alt="filler image">
                    <h3>Humanitatis Per Seacula</h3>
                    <p>Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui
                        sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem
                        modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.</p>
                </div>
                <div class="tab-pane fade" id="profile">
                    <img style="float: left; margin-right: 25px; margin-bottom: 10px;" src="<c:url value="/resources/assets/img/frontpage/filler2.jpg"/>" alt="filler image">
                    <h3>Mirum Est Notare</h3>
                    <p>Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui
                        sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem
                        modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.</p>
                </div>
                <div class="tab-pane fade" id="messages">
                    <img style="float: left; margin-right: 25px; margin-bottom: 10px;" src="<c:url value="/resources/assets/img/frontpage/filler3.jpg"/>" alt="filler image">
                    <h3>Sollemnes In Futurum</h3>
                    <p>Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui
                        sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem
                        modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.</p>
                </div>
            </div>
            <!-- End Tab Panes -->
        </div>
        <!-- End Tabs -->
    </div>
</div>

<div class="container">
    <div class="row">
        <!-- Main Article -->
        <div class="col-md-12 margin-top-30">
            <h2 class="item-title">
                Nulla in enim quis
            </h2>
            <p>
                <img class="animate fadeInRight" style="float: right;" src="<c:url value="/resources/assets/img/frontpage/responsive_screens.png"/>" alt="responsive screens">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit
                lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto
                odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>
            <p>Mirum est notare quam littera gothica, quam nunc putamus. Cras non sem sem, at eleifend mi. Vivamus sit amet ante est, sit amet rutrum augue. Cras non sem sem, at eleifend mi. Nam liber tempor cum soluta nobis eleifend
                option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Curabitur eget nisl a risus.</p>
        </div>
        <div class="clearfix"></div>
        <!-- End Main Article -->
    </div>
</div>
<div class="container no-padding gridgallery">
    <!-- Portfolio Header Text -->
    <div class="row">
        <div class="col-md-12 padding-vert-30">
            <h2 class="subtitle text-center">Defining Style for the Joomla Based Website of Today</h2>
            <h3 class="subtitle text-center">Fiant tation qui fiant lius nisl. Est nam eros videntur eros at.</h3>
        </div>
    </div>
    <!-- End Portfolio Header Text -->
    <!-- Portfolio Images -->
    <div class="portfolio-group">
        <!-- Portfolio Item -->
        <div class="portfolio-item col-md-3 col-sm-6 col-xs-6 animate fadeInUp">
            <div class="image-hover">
                <a href="#">
                    <figure>
                        <img src="<c:url value="/resources/assets/img/portfolio/image1.jpg"/>" alt="image1">
                        <figcaption>
                            <h3>Quam putamus</h3>
                            <span>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam.</span>
                        </figcaption>
                    </figure>
                </a>
            </div>
        </div>
        <!-- //Portfolio Item// -->
        <!-- Portfolio Item -->
        <div class="portfolio-item col-md-3 col-sm-6 col-xs-6 animate fadeInUp">
            <div class="image-hover">
                <a href="#">
                    <figure>
                        <img src="<c:url value="/resources/assets/img/portfolio/image2.jpg"/>" alt="image2">
                        <figcaption>
                            <h3>Quam putamus</h3>
                            <span>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam.</span>
                        </figcaption>
                    </figure>
                </a>
            </div>
        </div>
        <!-- //Portfolio Item// -->
        <!-- Portfolio Item -->
        <div class="portfolio-item col-md-3 col-sm-6 col-xs-6 animate fadeInUp">
            <div class="image-hover">
                <a href="#">
                    <figure>
                        <img src="<c:url value="/resources/assets/img/portfolio/image3.jpg"/>" alt="image3">
                        <figcaption>
                            <h3>Quam putamus</h3>
                            <span>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam.</span>
                        </figcaption>
                    </figure>
                </a>
            </div>
        </div>
        <!-- //Portfolio Item// -->
        <!-- Portfolio Item -->
        <div class="portfolio-item col-md-3 col-sm-6 col-xs-6 animate fadeInUp">
            <div class="image-hover">
                <a href="#">
                    <figure>
                        <img src="<c:url value="/resources/assets/img/portfolio/image4.jpg"/>" alt="image4">
                        <figcaption>
                            <h3>Quam putamus</h3>
                            <span>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam.</span>
                        </figcaption>
                    </figure>
                </a>
            </div>
        </div>
        <!-- //Portfolio Item// -->
        <div class="clearfix"></div>
    </div>
    <!-- End Portfolio Images -->
    <!-- Portfolio Footer Text -->
    <div class="row">
        <div class="col-12-md">
            <p class="text-center padding-bottom-30" style="max-width:690px; margin:0 auto;">Mirum est notare quam littera gothica, quam nunc putamus. Cras non sem sem, at eleifend mi. Vivamus sit amet ante est, sit amet rutrum augue. Cras non sem sem, at eleifend mi. Nam liber tempor cum soluta nobis eleifend
                option congue nihil imperdiet doming id quod mazim placerat facer possim assum.</p>
        </div>
    </div>
    <!-- End Portfolio Footer Text -->
    <!-- === END CONTENT === -->
    <!-- === BEGIN FOOTER === -->
</div>