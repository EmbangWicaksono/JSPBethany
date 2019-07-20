<%@page import="entity.Artikel"%>
<%@page import="java.util.List"%>
<%@page import="model.ArtikelModel"%>
<%@page import="entity.User"%>
<%@page import="model.UserModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <style>

        .faith {
            color: #101010;
            width: 100%;
            border: 3px solid #133863;
            padding: 10px; text-align: center


        }
        .faith h3{
            color: #E1ECF9;
            width: 100%;
            border: 3px solid #133863;
            padding: 10px; 
            text-align: center; 
            background-color: #003366;

        }
    </style>
    <body>

        <!DOCTYPE html>
    <!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
    <!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
    <!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
    <!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
        <head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">




            <!-- Facebook and Twitter integration -->
            <meta property="og:title" content=""/>
            <meta property="og:image" content=""/>
            <meta property="og:url" content=""/>
            <meta property="og:site_name" content=""/>
            <meta property="og:description" content=""/>
            <meta name="twitter:title" content="" />
            <meta name="twitter:image" content="" />
            <meta name="twitter:url" content="" />
            <meta name="twitter:card" content="" />

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

        </head>
        <body>
            <div id="fh5co-wrapper">
                <div id="fh5co-page">
                    <header id="fh5co-header-section" class="sticky-banner">
                        <div class="container">
                            <div class="nav-header">
                                <a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle dark"><i></i></a>
                                <h1 id="fh5co-logo"><a href="home.jsp">Bethany</a></h1>

                                <!-- START #fh5co-menu-wrap -->
                                <nav id="fh5co-menu-wrap" role="navigation">
                                    <ul class="sf-menu" id="fh5co-primary-menu">
                                        <li><a href="home.jsp">Home</a></li>
                                        <li><a href="event.jsp">Event</a></li>
                                        <li ><a href="about.jsp">About</a></li>
                                        <li><a href="service.jsp">Service</a></li>
                                        <li class="active"><a href="faith.jsp">Faith</a></li>
                                        <li><a href="myProfile.jsp">My Profile</a></li>
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
                <div class="fh5co-cover text-center" data-stellar-background-ratio="0.5" style="background-image: url(images/bg_7.jpg);">
                    <div class="desc">

                        <div class="container">
                            <div class="col-md-10 col-md-offset-1">

                                <div class="animate-box">
                                    <h2>FAITH</h2>
                                    <p><a class="btn btn-primary btn-lg" href="tambahArtikel.jsp">SHARE YOUR FAITH</a></p>
                                </div>


                            </div>
                        </div>
                    </div>
                </div>

                <% String username = String.valueOf(session.getAttribute("username"));
                    UserModel model = new UserModel();

                    ArtikelModel model2 = new ArtikelModel();
                    List<Artikel> listArtikel = model2.getAll();
                %>

                <div class="faith">
                    <% for (Artikel a : listArtikel) {
                            User u = model.getDetail(a.getUsername());
                            out.println("<h3>" + a.getJudul() + "</h3>");
                            out.println(a.getDeskripsi());
                            out.println("<br/>" + "Ditulis oleh " + "<b>" + u.getNama() + "</b>" + "<br/>");

                }%>
                </div>
                <br/>
              

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
