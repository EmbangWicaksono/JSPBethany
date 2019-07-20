<%-- 
    Document   : previewDownloadEventWord
    Created on : Jul 28, 2018, 12:49:36 AM
    Author     : Andre
--%>

<%@page import="entity.Peserta"%>
<%@page import="model.EventModel"%>
<%@page import="entity.Event"%>
<%@page import="model.PesertaModel"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Preview Download</title>
    </head>
    <body>
        <style>
            body{
                padding: 0.01em 10px;
                margin: 16px 16px;
            }
        </style>
        <% String judul = String.valueOf(request.getAttribute("judul"));
            EventModel model2 = new EventModel();
            Event e = model2.getDetailJudul(String.valueOf(request.getAttribute("judul")));
            PesertaModel model = new PesertaModel();
            out.println("<h1><b>Tabel Peserta Acara " + judul + "</b></h1>");
            out.println("<table border='1'>");
            out.println("<tr>");
            out.println("<td>Nama</td>");
            out.println("<td>Kontak</td>");
            out.println("<tr>");
            List<Peserta> listPeserta = model.getAll2(e.getKodeevent());
            for (Peserta p : listPeserta) {
                out.println("<tr>");
                out.println("<td>" + p.getNama() + "</td>");
                out.println("<td>" + p.getKontak() + "</td>");
                out.println("<tr>");
            }
            out.println("</table>");
            response.setContentType("application/vnd.ms-word");
            response.setHeader("Content-Disposition", "inline;filename=PesertaAcara" + judul + ".doc");
        %>
    </body>
</html>
