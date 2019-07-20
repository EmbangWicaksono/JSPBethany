

<%@page import="entity.Peserta"%>
<%@page import="model.PesertaModel"%>
<%@page import="entity.Event"%>
<%@page import="java.util.List"%>
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


        <!-- Modernizr JS -->
        <script src="js/modernizr-2.6.2.min.js"></script>
        <!-- FOR IE9 below -->
        <!--[if lt IE 9]>
        <script src="js/respond.min.js"></script>
        <![endif]-->
        <title>Event Staff</title>
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
            background-color: #4CAF50;
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
                                    <li class="active"><a href="eventStaff.jsp">Event</a></li>
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
								<h2>EVENTS </h2>
								<p><a class="btn btn-primary btn-lg" href="tambahEvent.jsp">Tambah Event</a></p>
							</div>
                                                  
                                                
						</div>
					</div>
				</div>
			</div>

        


        <div class="event">
            <%  String kode = "";
                String pilihan = "";
                EventModel model = new EventModel();
                List<Event> listEvent = model.getAll();
                PesertaModel model2 = new PesertaModel();
                for (Event e : listEvent) {
                    kode = e.getKodeevent();
                    pilihan = e.getJudul();
                    List<Peserta> listPeserta = model2.getAll2(e.getKodeevent());%>
            <div style="color: #091D34;
                 width: 100%;
                 border: 3px solid #133863;
                 padding: 10px; text-align: center">
                <h3 style="color: #236AB9;
                    width: 100%;
                    border: none;
                    padding: 10px; text-align: center
                    ; background-color: #E1ECF9 "><%=e.getJudul()%></h3>
                <p><%=e.getDeskripsi()%></p>
                <br/>
            
            <b>Tabel Peserta</b>
            <table border='1'>
                <tr>
                    <td>Nama</td>
                    <td>Kontak</td>
                </tr>
                <% for (Peserta p : listPeserta) {%>
                <tr>
                    <td><%= p.getNama()%></td>
                    <td><%= p.getKontak()%></td>
                </tr>
                <%  }
                %>
            </table><br/> 
            </div>
            <table>
            <tr><form action="UpdateEvent?kodeevent=<%= kode%>" method="post">
                <input type="submit" value="Update Event"/>
            </form>
            </tr>
            <tr>
            <form action="HapusEvent?kodeevent=<%= kode%>" method="post">
                <input type="submit" value="Hapus Event">
            </form>
                </tr>
            <form action="PreviewDownloadEventWord?pilihancetak=<%= pilihan%>"  method="post">
                <input type="submit" value="Get File Word">
            </form>
            <form action="PreviewDownloadEventPDF?pilihancetak=<%= pilihan%>"  method="post">
                <input type="submit" value="Get File PDF">
            </form>
            </table>

            <br/>
            
            <%
                }
            %>
      
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
