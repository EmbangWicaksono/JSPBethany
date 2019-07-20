<%-- 
    Document   : registerBabtis
    Created on : Jul 26, 2018, 11:27:04 PM
    Author     : Andre
--%>

<%@page import="entity.User"%>
<%@page import="model.UserModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Babtis</title>
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
    <script>
        function isNumber(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
        return false;
    }
    return true;
}
    </script>
    <style>
        input[type=text], select {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        input[name=tempat], select {
            width: 25%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        input[name=tanggal], select {
            width: 25%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        

        input[type=submit]{
            width: 100%;
            height: 50px;
            border-radius: 4px;
            background-color: #33cc33;
            color: #ffffff;
            font-size: 20px;
        }



        input[type=submit]:hover {
            background-color: #45a049;
        }

        .box {
            border-radius: 5px;
            background-color: #f2f2f2;
            padding: 20px;
        }

        .box label{
            color:#223A5E;
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
            String kontak = u.getKontak();
        %>
        <h2 align="center">Form Register Babtis</h2>
        <div class="box">
            <form action="CekRegisterBabtis" method="post">
                <label for="fname">Nama</label>
                <input type="text" name="nama" value="<%= nama%>" disabled>

                <label for="fname">NIK</label>
                <input type="text" name="nik" maxlength="16" minlength="16" onkeypress="return isNumber(event)" required>

                <label for="fname">Tempat tanggal lahir</label>
                <br><input type="text" name="tempat" required> , <input type="date" name="tanggal" min="1950-01-01" max="2005-12-31"><br>

                <label for="fname">Alamat</label>
                <input type="text" name="alamat" maxlength="50" required>

                <label for="fname">Jenis Kelamin</label><br/>
                <input type="radio" name="jeniskelamin" value="Laki-laki" required>Laki-laki
                <input type="radio" name="jeniskelamin" value="Perempuan" required>Perempuan

                <br/><br/><label for="fname">Kontak</label>
                <input type="text" name="kontak" value="<%= kontak%>" disabled>

                <input type="submit" value="Daftar">

            </form>
        </div>
    </body>
</html>
