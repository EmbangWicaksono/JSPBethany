<%-- 
    Document   : tambahArtikel
    Created on : Jul 27, 2018, 1:18:58 AM
    Author     : Andre
--%>

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

        <title>Tambah Artikel</title>
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
            background-color: #0077b3;
            color: white;
        }
        input[type=submit] {
                background-color: #0066cc;
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
        <% String username = String.valueOf(session.getAttribute("username"));%>

        <form action="CekTambahArtikel" method="post">
            <table>
                <th colspan="2"> Form Tambah Artikel</th>
                <tr>
                    <td>Judul</td>
                    <td><input type="text" name="judul" maxlength="50"></td>
                </tr>
                <tr>
                    <td>Deskripsi</td>
                    <td><textarea name="deskripsi" rows="8" cols="50" maxlength="600"></textarea></td>
                </tr>
                <tr>
                    <td>Username</td>
                    <td><input type="text" name="username" value="<%= username%>" disabled></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="Tambah"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
