<%-- 
    Document   : faithStaff
    Created on : Jul 27, 2018, 7:43:49 AM
    Author     : Andre
--%>

<%@page import="entity.User"%>
<%@page import="entity.Artikel"%>
<%@page import="entity.Artikel"%>
<%@page import="java.util.List"%>
<%@page import="model.ArtikelModel"%>
<%@page import="model.UserModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
        <title>Faith Staff</title>
    </head>
    <style>
 
        
        .ark {
    border: 1px solid gray;
    padding: 8px;
}

h3 {
    text-align: center;
    text-transform: uppercase;
    color: #4CAF50;
}

p {
    text-indent: 50px;
    text-align: justify;
    letter-spacing: 3px;
}

        </style>
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
                                        <li ><a href="homeStaff.jsp">Home</a></li>
                                        <li><a href="eventStaff.jsp">Event</a></li>
                                        <li ><a href="serviceStaff.jsp">Service</a></li>
                                        <li class="active"><a href="faithStaff.jsp">Faith</a></li>
                                        <li><a href="Welcome">Logout</a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </header>
                </div>
            </div>
        
        <form action="TambahArtikelStaff" method="post">
            <br/><input type="submit" value="Tambah Artikel" style="background-color: #091D34;
            border: none;
            color: white;
            padding: 16px 32px;
            text-decoration: none;
            margin: 4px 2px;
            cursor: pointer;
            align-content: center;
            width: 100%;">
        </form>
        <% String username = String.valueOf(session.getAttribute("username"));
           UserModel model = new UserModel();
           
           ArtikelModel model2 = new ArtikelModel();
           List <Artikel> listArtikel = model2.getAll();
        %>

        <div class="artikel" style="border-collapse: collapse;
            width: 100%;">
        <%  String judul = "";
            for(Artikel a : listArtikel){
            judul = a.getJudul();
            User u = model.getDetail(a.getUsername());%>
            <div class="ark" style=" text-align: center;
            color:#0f3d0f;">
        <%
            out.println("<h3>" + a.getJudul() + "</h3>");
            out.println(a.getDeskripsi());
            out.println("<br/>" + "Ditulis oleh " + "<b>" +u.getNama() + "</b>" + "<br/>");%>
                    <form action="HapusArtikel?judul=<%= judul %>" method="post">
                        <input type="submit" value="Hapus Artikel">
                    </form>
            </div>
        <%
        }
        %>
        </div>
        
    </body>
</html>
