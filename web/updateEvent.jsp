<%-- 
    Document   : updateEvent
    Created on : Jul 28, 2018, 9:01:18 AM
    Author     : Andre
--%>

<%@page import="entity.Event"%>
<%@page import="model.EventModel"%>
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
        <title>Update Event</title>
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
                                        <li ><a href="homeStaff.jsp">Home</a></li>
                                        <li class="active"><a href="eventStaff.jsp">Event</a></li>
                                        <li ><a href="serviceStaff.jsp">Service</a></li>
                                        <li ><a href="faithStaff.jsp">Faith</a></li>
                                        <li><a href="Welcome">Logout</a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </header>
                </div>
            </div>
        <% String kodeevent = String.valueOf(request.getAttribute("kodeevent")); 
           EventModel model = new EventModel();
           Event e = model.getDetail(kodeevent);
        %>
        <h2>Form Update Event</h2>
        <form action="CekUpdateEvent" method="post">
            <table>
                <tr>
                    <td>Kode Event</td>
                    <td><input type="text" name="kodeevent2" value="<%= e.getKodeevent() %>"></td>
                </tr>
                <tr>
                    <td>Judul</td>
                    <td><input type="text" name="judul" value="<%= e.getJudul() %>"></td>
                </tr>
                <tr>
                    <td>Deskripsi</td>
                    <td><textarea name="deskripsi" rows="8" cols="50"><%= e.getDeskripsi() %></textarea></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="Update"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
