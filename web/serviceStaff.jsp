<%-- 
    Document   : serviceStaff
    Created on : Jul 27, 2018, 7:43:32 AM
    Author     : Andre
--%>

<%@page import="entity.Pesan"%>
<%@page import="model.PesanModel"%>
<%@page import="entity.Babtis"%>
<%@page import="model.BabtisModel"%>
<%@page import="java.util.List"%>
<%@page import="entity.Pelayan"%>
<%@page import="model.PelayanModel"%>
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
        <title>Service Staff</title>
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
            background-color: #5cd65c;
            color: white;
        }
        input[type=submit] {
            background-color: #091D34;
            border: none;
            color: white;
            padding: 16px 32px;
            text-decoration: none;
            margin: 4px 2px;
            cursor: pointer;
            align-content: center;
            width: 100%;
        }
        h2{
            text-align: center;
            color:#0f3d0f;
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
                                    <li class="active"><a href="serviceStaff.jsp">Service</a></li>
                                    <li ><a href="faithStaff.jsp">Faith</a></li>
                                    <li><a href="Welcome">Logout</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </header>
            </div>
        </div>
        <%  PesanModel model1 = new PesanModel();
            List<Pesan> listPesan = model1.getAll();
            PelayanModel model2 = new PelayanModel();
            List<Pelayan> listPelayan = model2.getAll();
            BabtisModel model3 = new BabtisModel();
            List<Babtis> listBabtis = model3.getAll();
        %>
        <h2>Daftar Permohonan Doa/Kritik/Saran</h2>
        <table border="1">
            <tr>
                <th>Nama</th>
                <th>Email</th>
                <th>Isi Pesan</th>
            </tr>
            <%
                for (Pesan pe : listPesan) {
                    out.println("<tr>");
                    out.println("<td>" + pe.getNama() + "</td>");
                    out.println("<td>" + pe.getEmail() + "</td>");
                    out.println("<td>" + pe.getIsipesan() + "</td>");
                    out.println("</tr>");
                }
            %>
        </table>
        <br/>
        <table>
            <form action="PreviewDownloadServiceWord?pilihancetak=Pesan" method="post">
                <input type="submit" value="Get File Word">
            </form>
            <form action="PreviewDownloadServicePDF?pilihancetak=Pesan" method="post">
                <input type="submit" value="Get File Pdf">
            </form>
        </table>
        <br/><h2>Daftar Pelayan</h2>
        <table border="1">
            <tr>
                <th>Nama</th>
                <th>Umur</th>
                <th>Jenis Kelamin</th>
                <th>Motivasi</th>
                <th>Posisi Pelayan</th>
                <th>Kontak</th>
            </tr>
            <%
                for (Pelayan p : listPelayan) {
                    out.println("<tr>");
                    out.println("<td>" + p.getNama() + "</td>");
                    out.println("<td>" + p.getUmur() + "</td>");
                    out.println("<td>" + p.getJeniskelamin() + "</td>");
                    out.println("<td>" + p.getMotivasi() + "</td>");
                    out.println("<td>" + p.getPosisipelayan() + "</td>");
                    out.println("<td>" + p.getKontak() + "</td>");
                    out.println("</tr>");
                }
            %>
        </table>
        <br/>
       
            <form action="PreviewDownloadServiceWord?pilihancetak=Pelayan" method="post">
                <input type="submit" value="Get File Word">
            </form>
            <form action="PreviewDownloadServicePDF?pilihancetak=Pelayan" method="post">
                <input type="submit" value="Get File Pdf">
            </form>
       
        <br/><h2>Daftar Babtis</h2>
        <table border="1">
            <tr>
                <th>Nama</th>
                <th>NIK</th>
                <th>Tempat, tanggal lahir</th>
                <th>Alamat</th>
                <th>Jenis Kelamin</th>
                <th>Kontak</th>
            </tr>
            <%
                for (Babtis b : listBabtis) {
                    out.println("<tr>");
                    out.println("<td>" + b.getNama() + "</td>");
                    out.println("<td>" + b.getNik() + "</td>");
                    out.println("<td>" + b.getTtl() + "</td>");
                    out.println("<td>" + b.getAlamat() + "</td>");
                    out.println("<td>" + b.getJeniskelamin() + "</td>");
                    out.println("<td>" + b.getKontak() + "</td>");
                    out.println("</tr>");
                }
            %>
        </table>
        <br/>
        
            <form action="PreviewDownloadServiceWord?pilihancetak=Babtis" method="post">
                <input type="submit" value="Get File Word">
            </form>
            <form action="PreviewDownloadServicePDF?pilihancetak=Babtis" method="post">
                <input type="submit" value="Get File Pdf">
            </form>
        
    </body>
</html>
