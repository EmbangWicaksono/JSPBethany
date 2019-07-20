<%-- 
    Document   : homeStaff
    Created on : Jul 26, 2018, 9:32:02 PM
    Author     : Andre
--%>

<%@page import="entity.User"%>
<%@page import="model.UserModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
        <link rel="shortcut icon" href="favicon.ico">

        <!-- <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'> -->

        <!-- Animate.css -->
        <link href="css/animate.css" rel="stylesheet" type="text/css"/>

        <!-- Icomoon Icon Fonts-->
        <link href="css/icomoon.css" rel="stylesheet" type="text/css"/>
        <!-- Bootstrap  -->

        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <!-- Superfish -->

        <link href="css/superfish.css" rel="stylesheet" type="text/css"/>
        <!-- Magnific Popup -->

        <link href="css/magnific-popup.css" rel="stylesheet" type="text/css"/>


        <link href="css/style.css" rel="stylesheet" type="text/css"/>


        <!-- Modernizr JS -->
        <script src="js/modernizr-2.6.2.min.js"></script>
        <!-- FOR IE9 below -->
        <!--[if lt IE 9]>
        <script src="js/respond.min.js"></script>
        <![endif]-->
        <title>Home Staff</title>

    </head>
    <body>
        <div id="fh5co-wrapper">
            <div id="fh5co-page">
                <header id="fh5co-header-section" class="sticky-banner">
                    <div class="container">
                        <div class="nav-header">
                            <a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle dark"><i></i></a>
                            <h1 id="fh5co-logo"><a href="homeStaff.jsp">Bethany</a></h1>

                            <!-- START #fh5co-menu-wrap -->
                            <nav id="fh5co-menu-wrap" role="navigation">
                                <ul class="sf-menu" id="fh5co-primary-menu">
                                    <li class="active"><a href="homeStaff.jsp">Home</a></li>
                                    <li><a href="eventStaff.jsp">Event</a></li>
                                    <li ><a href="serviceStaff.jsp">Service</a></li>
                                    <li><a href="faithStaff.jsp">Faith</a></li>
                                    <li><a href="Welcome">Logout</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </header>
            </div>
        </div>

        <div class="fh5co-hero">
            <div class="fh5co-overlay"></div>
            <div class="fh5co-cover text-center" data-stellar-background-ratio="0.5" style="background-image: url(images/bg_1.jpg);">
                <div class="desc">

                    <div class="container">
                        <div class="col-md-10 col-md-offset-1">

                            <div class="animate-box">
                                <% String username = String.valueOf(session.getAttribute("username"));
                                    UserModel model = new UserModel();
                                    User u = model.getDetail(username);
                                %>
                                <h2 align="center">Welcome <% out.println(u.getNama());%></h2>
                            </div>


                        </div>
                    </div>
                </div>
            </div>

        </div>




        <script src="js/jquery.min.js"></script>
        <!-- jQuery Easing -->
        <script src="js/jquery.easing.1.3.js"></script>
        <!-- Bootstrap -->
        <script src="js/bootstrap.min.js"></script>
        <!-- Waypoints -->
        <script src="js/jquery.waypoints.min.js"></script>
        <script src="js/sticky.js"></script>

        <!-- Stellar -->
        <script src="js/jquery.stellar.min.js"></script>
        <!-- Superfish -->
        <script src="js/hoverIntent.js"></script>
        <script src="js/superfish.js"></script>
        <!-- Magnific Popup -->
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/magnific-popup-options.js"></script>

        <!-- Main JS -->
        <script src="js/main.js"></script>

    </body>
</html>
