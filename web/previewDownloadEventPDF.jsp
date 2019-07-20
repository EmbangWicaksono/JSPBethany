<%-- 
    Document   : previewDownload
    Created on : Jul 27, 2018, 10:01:43 PM
    Author     : Andre
--%>

<%@page import="java.io.OutputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="entity.Peserta"%>
<%@page import="java.util.List"%>
<%@page import="entity.Event"%>
<%@page import="model.EventModel"%>
<%@page import="model.PesertaModel"%>
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
            String pdfFileName = "PesertaAcara" + judul + ".pdf";
            String contextPath = getServletContext().getRealPath(File.separator);
            File pdfFile = new File(contextPath + pdfFileName);

            response.setContentType("application/pdf");
            response.addHeader("Content-Disposition", "attachment; filename=" + pdfFileName);
            response.setContentLength((int) pdfFile.length());
        %>
    </body>
</html>
