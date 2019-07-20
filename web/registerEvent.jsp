<%-- 
    Document   : welcome
    Created on : Jul 26, 2018, 3:45:54 PM
    Author     : Andre
--%>
<%@page import="java.util.List"%>
<%@page import="entity.Event"%>
<%@page import="model.EventModel"%>
<%@page import="entity.User"%>
<%@page import="model.UserModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
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
        <style>
            * {
                box-sizing: border-box;
            }

            input[type=text], select, textarea {
                width: 100%;
                padding: 12px;
                border: 1px solid #ccc;
                border-radius: 4px;
                resize: vertical;
            }

            label {
                padding: 12px 12px 12px 0;
                display: inline-block;
            }

            input[type=submit] {
                background-color: #4CAF50;
                color: white;
                padding: 12px 20px;
                border: none;
                border-radius: 4px;
                cursor: pointer;
                float: right;
            }

            input[type=submit]:hover {
                background-color: #45a049;
            }

            .box {
                border-radius: 5px;
                background-color: #f2f2f2;
                padding: 20px;
            }

            .col-25 {
                float: left;
                width: 25%;
                margin-top: 30px;
            }

            .col-75 {
                float: left;
                width: 75%;
                margin-top: 30px;
            }

            /* Clear floats after the columns */
            .row:after {
                content: "";
                display: table;
                clear: both;
            }

            /* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
            @media screen and (max-width: 600px) {
                .col-25, .col-75, input[type=submit] {
                    width: 100%;
                    margin-top: 30;
                }
            }
        </style>
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
                                        <li><a href="welcome.jsp">Home</a></li>
                                        <li class="active"><a href="event.jsp">Event</a></li>
                                        <li><a href="about.jsp">About</a></li>
                                        <li><a href="service.jsp">Service</a></li>
                                        <li><a href="faith.jsp">Faith</a></li>
                                        <li><a href="myProfile.jsp">My Profile</a></li>
                                        <li><a href="Welcome">Logout</a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </header>
                </div>
            </div>

            <% String username = String.valueOf(session.getAttribute("username"));
                UserModel model = new UserModel();
                User u = model.getDetail(username);
                EventModel model2 = new EventModel();
                List<Event> listEvent = model2.getAll();
                String nama = u.getNama();
                String kontak = u.getKontak();
            %>
            <h2 align="center" style="color:#375F1B">Form Register Event</h2>
            <div class="box">
                <form action="CekRegisterEvent" method="post">
                    <div class="row">
                        <div class="col-25">
                            <label for="fname">Nama</label>
                        </div>
                        <div class="col-75">
                            <input type="text" name="nama" value="<%= nama%>" disabled>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-25">
                            <label for="lname">Kontak</label>
                        </div>
                        <div class="col-75">
                            <input type="text" name="kontak" value="<%= kontak%>" disabled>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-25">
                            <label for="lname">Kode Event</label>
                        </div>
                        <div class="col-75">
                            <select name="kodeevent">
                                <% for (Event e : listEvent) {
                                        out.println("<option>" + e.getKodeevent() + "</option>");
                                    }%>
                            </select>
                        </div>
                    </div>

                    <div class="row">
                        <input type="submit" value="Submit">
                    </div>
                </form>
            </div>
              </body>
          

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




      
    </html>
