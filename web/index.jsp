<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>GrowMore</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- <link rel="manifest" href="site.webmanifest"> -->
    <!-- Place favicon.ico in the root directory -->

    <!-- CSS here -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/themify-icons.css">
    <link rel="stylesheet" href="css/nice-select.css">
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/gijgo.css">
    <link rel="stylesheet" href="css/animate.min.css">
    <link rel="stylesheet" href="css/slick.css">
    <link rel="stylesheet" href="css/slicknav.css">
    <link rel="stylesheet" href="css/style.css">
    <!-- <link rel="stylesheet" href="css/responsive.css"> -->
</head>

<body>
    <!--[if lte IE 9]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
        <![endif]-->

    <!-- header-start -->
    <header>
        <div class="header-area ">
            <div id="sticky-header" class="main-header-area">
                <div class="container-fluid p-0">
                    <div class="row align-items-center no-gutters">
                        <div class="col-xl-2 col-lg-2">
                            <div class="logo-img">
                                <a href="index.jsp">
                                    <img src="img/logo1.png" alt="">
                                </a>
                            </div>
                        </div>
                        <div class="col-xl-8 col-lg-8">
                            <div class="main-menu  d-none d-lg-block text-center">
                                <nav>
                                    <ul id="navigation">
                                        <li><a class="active" href="index.jsp">home</a></li>
                                        <li><a href="service.jsp">services</a></li>
                                        
                                        <li><a href="about.jsp">About Us</a></li>

                                        
                                        <li><a href="contact.jsp">Contact</a></li>
                                        <%
                            String l=(String)session.getAttribute("logged");
                            if(l!=null)
                            {
                                %>
                                        <li><form action="Logout" method="post"><button type="submit" class="genric-btn danger small">Logout</button></form></li>
                                        <% } %>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                        <%
                            String n=(String)session.getAttribute("name");
                            if(n!=null)
                            {
                                %>
                        <div class="col-lg-2 d-none d-lg-block">
                            <div class="log_chat_area d-flex align-items-end">
                                <a href="#" data-scroll-nav="0" class="say_hi"><%= "Hello "+n %></a>
                            </div>
                        </div>
                            <% }
                             else
                            { %>
                                <div class="col-lg-2 d-none d-lg-block">
                            <div class="log_chat_area d-flex align-items-end">
                                <a href="#" data-scroll-nav="0" class="say_hi">Sign Up</a>
                            </div>
                        </div>
                           <% } %>
                        <div class="col-12">
                            <div class="mobile_menu d-block d-lg-none"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- header-end -->
    <%
            String msg=(String)session.getAttribute("msg");
            if(msg!=null)  
            {
        %>
        <div class="panel panel-danger">
            <div class="panel-heading text-center">
                <p><h3><b><%=msg%></b></h3></p>
            </div>
        </div>
        <%
            session.setAttribute("msg", null);
            }
        %>
    <!-- slider_area_start -->
    <div class="slider_area">
        <div class="single_slider  d-flex align-items-center slider_bg_1 overlay">
            <div class="container">
                <div class="row align-items-center justify-content-start">
                    <div class="col-lg-10 col-md-10">
                        <div class="slider_text">
                            <h3 class="wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".1s">
                                A Place For Those Who Wants To Learn And Grow.
								To Make Your Task More Time Efficient.
                            </h3>
                            <a class="boxed-btn3 wow fadeInLeft"  data-wow-duration="1s" data-wow-delay=".2s" href="portfolio.jsp">Visit Our Works</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- slider_area_end -->

    <!-- service_area  -->
    <div class="service_area">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-6">
                    <div class="section_title text-center mb-70">
                        <span class="wow fadeInUp" data-wow-duration="1s" data-wow-delay=".1s" >Services</span>
                        <h3 class="wow fadeInUp" data-wow-duration="1.2s" data-wow-delay=".2s">With The Idea Of Making Education Easy We Provide Tools That Can Change The System.</h3>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-4 col-md-4">
                    <div class="single_service text-center wow fadeInLeft" data-wow-duration="1.2s" data-wow-delay=".4s">
                        <div class="icon">
                            <img src="img/svg_icon/1.svg" alt="">
                        </div>
                        <h3>Windows Application</h3>
                        <p>Our Team Provides The Best,Smooth And Efficient Application To You For A Quick Service</p>
                    </div>
                </div>
                <div class="col-xl-4 col-md-4">
                    <div class="single_service text-center wow fadeInUp" data-wow-duration="1s" data-wow-delay=".3s">
                        <div class="icon">
                            <img src="img/svg_icon/2.svg" alt="">
                        </div>
                        <h3>Web Correction</h3>
                        <p>Low On Space,In A Hurry,Sudden Emergency? Don't Worry We Are Here Online To Assist You With Our Live Sessions.</p>
                    </div>
                </div>
                <div class="col-xl-4 col-md-4">
                    <div class="single_service text-center wow fadeInRight" data-wow-duration="1.2s" data-wow-delay=".4s">
                        <div class="icon">
                            <img src="img/svg_icon/3.svg" alt="">
                        </div>
                        <h3>Mobile app</h3>
                        <p>Carry Your Guide In Your Pockets!</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/ service_area  -->

    <div class="about_area">
        <div class="container">
            <div class="row justify-content-end">
                <div class="col-lg-5 offset-lg-1">
                    <div class="about_info">
                        <div class="section_title white_text">
                            <span class="wow fadeInUp" data-wow-duration="1s" data-wow-delay=".3s">About Us</span>
                            <h3 class="wow fadeInUp" data-wow-duration="1s" data-wow-delay=".4s">Empowering individuals </h3>
                            <p class="mid_text wow fadeInUp" data-wow-duration="1s" data-wow-delay=".5s">A Group Of Students Trying To Help And Mold The Education Into A Better Shape.</p>
                            <p class="last_text wow fadeInUp" data-wow-duration="1s" data-wow-delay=".6s">There Is No Age To Start or Stop Learning."</p>
                            <a href="about.jsp" class="boxed-btn3 wow fadeInUp" data-wow-duration="1s" data-wow-delay=".7s">About Us</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- portfolio_image_area  -->
    <div class="portfolio_image_area">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-6">
                    <div class="section_title text-center mb-90">
                        <h3 class="wow fadeInUp" data-wow-duration="1s" data-wow-delay=".3s">Featured Works</h3>
                        <p class="wow fadeInUp" data-wow-duration="1s" data-wow-delay=".4s">"Text Summarization,Which Helps You To Escape Unnecessary Details."</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-md-12">
                    <div class="single_Portfolio wow fadeInUp" data-wow-duration="1s" data-wow-delay=".3s">
                        <div class="portfolio_thumb">
                            <img src="img/portfolio/1.png" alt="">
                        </div>
                        <div class="portfolio_hover">
                            <div class="title">
                                <span>App Design</span>
                                    <h3>Text Extraction</h3>
                                    <a class="boxed-btn3" href="portfolio_details.jsp">View</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="single_Portfolio wow fadeInUp" data-wow-duration="1s" data-wow-delay=".4s">
                        <div class="portfolio_thumb">
                            <img src="img/portfolio/2.png" alt="">
                        </div>
                        <div class="portfolio_hover">
                            <div class="title">
                                <span>App Design</span>
                                    <h3>Spell Correction</h3>
                                    <a class="boxed-btn3" href="portfolio_details.jsp">View</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-lg-4">
                    <div class="single_Portfolio wow fadeInUp" data-wow-duration="1s" data-wow-delay=".5s">
                        <div class="portfolio_thumb">
                            <img src="img/portfolio/3.png" alt="">
                        </div>
                        <div class="portfolio_hover">
                            <div class="title">
                                <span>App Design</span>
                                    <h3>Document Translation</h3>
                                    <a class="boxed-btn3" href="portfolio_details.jsp">View</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-lg-4">
                    <div class="single_Portfolio wow fadeInUp" data-wow-duration="1s" data-wow-delay=".6s">
                        <div class="portfolio_thumb">
                            <img src="img/portfolio/4.png" alt="">
                        </div>
                        <div class="portfolio_hover">
                            <div class="title">
                                <span>App Design</span>
                                    <h3>Format Converter</h3>
                                    <a class="boxed-btn3" href="portfolio_details.jsp">View</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-lg-4">
                    <div class="single_Portfolio wow fadeInUp" data-wow-duration="1s" data-wow-delay=".7s">
                        <div class="portfolio_thumb">
                            <img src="img/portfolio/5.png" alt="">
                        </div>
                        <div class="portfolio_hover">
                            <div class="title">
                                <span>App Design</span>
                                    <h3>GrowMore App</h3>
                                    <a class="boxed-btn3" href="portfolio_details.jsp">View</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/ portfolio_image_area  -->

    <div class="how_we_work_area">
        <div class="container">
            <div class="row">
                <div class="col-lg-5">
                    <div class="work_info">
                        <div class="section_title">
                            <h3 class="wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".3s">How we work</h3>
                            <p class="mid_text wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".4s">"Text Summarization,Which Helps You To Escape Unnecessary Details."</p>
                            <p class="last_p wow fadeInRight" data-wow-duration="1s" data-wow-delay=".5s">We Take Your Mistakes And Turn Them To Lessons,We Help You To Make The Knowledge Your Own.</p>
                        </div>
                        <div class="video_watch d-flex align-items-center">
                            <div class="play_btn wow fadeInUp" data-wow-duration="1s" data-wow-delay=".6s">
                                <a href="https://www.youtube.com/watch?v=_d0OXm0dRZ4?autoplay=1" class="video_icon popup-video"> <i class="fa fa-play"></i></a>
                            </div>
                           <span class="wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".7s"> Watch Video</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- testimonial_area  -->
    <div class="testimonial_area ">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="testmonial_active owl-carousel">
                        <div class="single_carousel">
                                <div class="single_testmonial text-center">
                                        <div class="quote">
                                            <img src="img/testmonial/quote.svg" alt="">
                                        </div>
                                        <p>Failure is the key to success only if one has the determination to learn from it.</p>
                                        <div class="testmonial_author">
                                            <div class="thumb">
                                                    <img src="img/testmonial/thumb.png" alt="">
                                            </div>
                                            <h3>Zeeshan Danish</h3>
                                            <span>Software Enginner</span>
                                        </div>
                                    </div>
                        </div>
                        <div class="single_carousel">
                                <div class="single_testmonial text-center">
                                        <div class="quote">
                                            <img src="img/testmonial/quote.svg" alt="">
                                        </div>
                                        <p>Eliminaion of noises from data is the path to clean future.</p>
                                        <div class="testmonial_author">
                                            <div class="thumb">
                                                    <img src="img/testmonial/thumb.png" alt="">
                                            </div>
                                            <h3>Sonali Tripathi</h3>
                                            <span>Software Engineer</span>
                                        </div>
                                    </div>
                        </div>
                        <div class="single_carousel">
                                <div class="single_testmonial text-center">
                                        <div class="quote">
                                            <img src="img/testmonial/quote.svg" alt="">
                                        </div>
                                        <p>Language should never be a barrier for learning.</p>
                                        <div class="testmonial_author">
                                            <div class="thumb">
                                                    <img src="img/testmonial/thumb.png" alt="">
                                            </div>
                                            <h3>Md.Aquib Jawed</h3>
                                            <span>Software Engineer</span>
                                        </div>
                                    </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /testimonial_area  -->

    <div data-scroll-index="0" class="get_in_tauch_area">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-6">
                    <div class="section_title text-center mb-90">
                        <h3 class="wow fadeInUp" data-wow-duration="1s" data-wow-delay=".3s">Be One Of Us</h3>
                        <p class="wow fadeInUp" data-wow-duration="1s" data-wow-delay=".4s">"Text Summarization,Which Helps You To Escape Unnecessary Details."</p>
                    </div>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="touch_form">
                        <form action="Register" method="post">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="single_input wow fadeInUp" data-wow-duration="1s" data-wow-delay=".3s">
                                        <input type="text" placeholder="Your Name" name="name" >
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="single_input wow fadeInUp" data-wow-duration="1s" data-wow-delay=".4s">
                                        <input type="email" placeholder="Email" name="email" >
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="single_input wow fadeInUp" data-wow-duration="1s" data-wow-delay=".5s">
                                        <input type="password" placeholder="Password" id="pwd" name="password" >
                                    </div>
                                </div>
								<div class="col-md-12">
                                    <div class="single_input wow fadeInUp" data-wow-duration="1s" data-wow-delay=".5s">
                                        <input type="password" placeholder="Confirm Password" id="cpwd" name=cpassword" >
                                    </div>
                                                                    <div id="showErrorcPwd">  </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="submit_btn wow fadeInUp" data-wow-duration="1s" data-wow-delay=".7s">
                                        <button class="boxed-btn3" type="submit">Sign Up</button>
                                    </div>
                                </div>
								<div class="col-lg-12">
                                    <div class="submit_btn wow fadeInUp" data-wow-duration="1s" data-wow-delay=".8s">
                                        <form><button class="boxed-btn3" type="submit" button style="margin:5px;" formaction="Login_v18\Login_v18\indexx.jsp">Already Have An Account? Sign In</button></form>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <!-- footer start -->
    <footer class="footer">
        <div class="footer_top">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-2 col-md-3">
                        <div class="footer_logo wow fadeInRight" data-wow-duration="1s" data-wow-delay=".3s">
                            <a href="index.jsp">
                                <img src="img/logo1.png" alt="">
                            </a>
                        </div>
                    </div>
                    <div class="col-xl-7 col-lg-7 col-md-9">
                        <div class="menu_links">
                            <ul>
                                <li><a class="wow fadeInDown" data-wow-duration="1s" data-wow-delay=".2s" href="about.jsp">About</a class="wow fadeInUp" data-wow-duration="1s" data-wow-delay=".3s"></li>
                                <li><a class="wow fadeInDown" data-wow-duration="1s" data-wow-delay=".4s" href="service.jsp">Services</a></li>
                                <li><a class="wow fadeInDown" data-wow-duration="1s" data-wow-delay=".6s" href="portfolio.jsp">Portfolio</a></li>
                                <li><a class="wow fadeInDown" data-wow-duration="1s" data-wow-delay="1.1s" href="contact.jsp">Contact</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-12">
                        <div class="socail_links">
                            <ul>
                                <li><a class="wow fadeInUp" data-wow-duration="1s" data-wow-delay=".3s" href="https://en-gb.facebook.com/login/" target="_blank"> <i class="fa fa-facebook"></i> </a></li>
                                <li><a class="wow fadeInUp" data-wow-duration="1s" data-wow-delay=".4s" href="https://twitter.com/hashtag/login?lang=en" target="_blank"> <i class="fa fa-twitter"></i> </a></li>
                                <li><a class="wow fadeInUp" data-wow-duration="1s" data-wow-delay=".5s" href="https://www.instagram.com/accounts/login/" target="_blank"> <i class="fa fa-instagram"></i> </a></li>
                                <li><a class="wow fadeInUp" data-wow-duration="1s" data-wow-delay=".6s" href="https://accounts.google.com/signin/v2/identifier?passive=1209600&continue=https%3A%2F%2Faboutme.google.com%2Fu%2F0%2F%3Freferer%3Dgplus&followup=https%3A%2F%2Faboutme.google.com%2Fu%2F0%2F%3Freferer%3Dgplus&flowName=GlifWebSignIn&flowEntry=ServiceLogin" target="_blank"> <i class="fa fa-google-plus"></i> </a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="copy-right_text">
            <div class="container">
                <div class="footer_border"></div>
                <div class="row">
                    <div class="col-xl-12">
                        <p class="copy_right text-center wow fadeInUp" data-wow-duration="1s" data-wow-delay="1.3s">
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This website is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://www.instagram.com/zeeshandanish3/" target="_blank">AlphaTerms</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!--/ footer end  -->

    <!-- JS here -->
    <script src="js/vendor/modernizr-3.5.0.min.js"></script>
    <script src="js/vendor/jquery-1.12.4.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/isotope.pkgd.min.js"></script>
    <script src="js/ajax-form.js"></script>
    <script src="js/waypoints.min.js"></script>
    <script src="js/jquery.counterup.min.js"></script>
    <script src="js/imagesloaded.pkgd.min.js"></script>
    <script src="js/scrollIt.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
    <script src="js/wow.min.js"></script>
    <script src="js/nice-select.min.js"></script>
    <script src="js/jquery.slicknav.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/plugins.js"></script>
    <script src="js/gijgo.min.js"></script>

    <!--contact js-->
    <script src="js/contact.js"></script>
    <script src="js/jquery.ajaxchimp.min.js"></script>
    <script src="js/jquery.form.js"></script>
    <script src="js/jquery.validate.min.js"></script>
    <script src="js/mail-script.js"></script>

    <script src="js/main.js"></script>
	<script src='https://www.google.com/recaptcha/api.js'></script>
        <script>
            $(document).ready(function(){
                $('#cpwd').keyup(function(){
                    var pwd=$('#pwd').val();
                    var cpwd=$('#cpwd').val();
                    if(cpwd!==pwd){
                        $('#showErrorcPwd').html('**Password Does Not Match');
                        $('#showErrorcPwd').css('color','red');
                        return false;
                    }
                    else{
                        $('#showErrorcPwd').html('');
                        return true;
                    }
                });
            });
            </script>
</body>

</html>