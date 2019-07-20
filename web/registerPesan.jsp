<%-- 
    Document   : registerPesan
    Created on : Jul 28, 2018, 1:53:21 AM
    Author     : Andre
--%>

<%@page import="entity.User"%>
<%@page import="model.UserModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tulis Pesan</title>
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

        .box {
            border-radius: 5px;
            background-color: #898E8C;
            padding: 20px;
/*            background-image: url(images/bg_5.jpg);
            background-size: cover;*/
        }

        .col-25 {
            float: left;
            width: 25%;
            margin-top: 6px;
        }

        .col-75 {
            float: left;
            width: 75%;
            margin-top: 6px;
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
                margin-top: 50;
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
                                        <li><a href="home.jsp">Home</a></li>
                                        <li><a href="event.jsp">Event</a></li>
                                        <li ><a href="about.jsp">About</a></li>
                                        <li class="active"><a href="service.jsp">Service</a></li>
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
            String nama = u.getNama();
            String email = u.getEmail();
        %>
        <h2 style="color:#004B8D; text-align: center;">Form Pesan Doa/Kritik/Saran</h2>
        <form action="CekRegisterPesan" method="post">
            <div class="box">
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
                    <label for="fname">Email</label>
                </div>
                <div class="col-75">
                   <input type="text" name="email" value="<%= email%>" disabled>
                </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label for="subject">Isi Pesan</label>
                    </div>
                    <div class="col-75">
                        <textarea id="subject" name="isipesan" maxlength="200" style="height:200px"></textarea>
                    </div>
                </div>
                <div class="row">
                    <input type="submit" value="Kirim">
                </div>
            </div>
                
        </form>   
                
</body>
</html>
