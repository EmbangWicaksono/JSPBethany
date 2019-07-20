
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
            table {
                border-collapse: collapse;
                width: 100%;
            }

            th, td {
                text-align: left;
                padding: 8px;
            }

            tr:nth-child(even){background-color: #f2f2f2}

            th {
                background-color: #0086b3;
                color: white;
            }
            
            input[type=submit] {
                background-color: #034F84;
                color: white;
                padding: 12px 20px;
                border: none;
                border-radius: 4px;
                cursor: pointer;
                float: right;
            }

            input[type=submit]:hover {
                background-color: #92A8D1;
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
                                        <li><a href="home.jsp">Home</a></li>
                                        <li><a href="event.jsp">Event</a></li>
                                        <li ><a href="about.jsp">About</a></li>
                                        <li><a href="service.jsp">Service</a></li>
                                        <li><a href="faith.jsp">Faith</a></li>
                                        <li class="active"><a href="myProfile.jsp">My Profile</a></li>
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
            %>
            <br/>

            <br/>
            <table border="1">
                <form action="UpdateMyProfile" method="post">
                    <th colspan="2">Profile Saya</th>
                    <tr>
                        <td>Username</td>
                        <td><% out.println(u.getUsername());%></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><% out.println(u.getPassword());%></td>
                    </tr>
                    <tr>
                        <td>Nama</td>
                        <td><% out.println(u.getNama());%></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><% out.println(u.getEmail());%></td>
                    </tr>
                    <tr>
                        <td>Kontak</td>
                        <td><% out.println(u.getKontak());%></td>
                    </tr>
                    <tr>
                        <td colspan="2"><input type="submit" value="Ubah Profil"></td>
                    </tr>
                </form>
            </table>

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
