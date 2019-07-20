<%-- 
    Document   : previewDownloadService
    Created on : Jul 27, 2018, 11:35:00 PM
    Author     : Andre
--%>

<%@page import="java.io.OutputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="entity.Babtis"%>
<%@page import="model.BabtisModel"%>
<%@page import="entity.Pelayan"%>
<%@page import="model.PelayanModel"%>
<%@page import="java.util.List"%>
<%@page import="entity.Pesan"%>
<%@page import="model.PesanModel"%>
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
        <% String service = String.valueOf(request.getAttribute("service"));
            if (service.equals("Pesan")) {
                PesanModel model = new PesanModel();
                out.println("<h1><b>Tabel Data " + service + "</b></h1>");
                out.println("<table border='1'>");
                out.println("<tr>");
                out.println("<td>Nama</td>");
                out.println("<td>Email</td>");
                out.println("<td>Isi Pesan</td>");
                out.println("<tr>");
                List<Pesan> listPesan = model.getAll();
                for (Pesan pe : listPesan) {
                    out.println("<tr>");
                    out.println("<td>" + pe.getNama() + "</td>");
                    out.println("<td>" + pe.getEmail() + "</td>");
                    out.println("<td>" + pe.getIsipesan() + "</td>");
                    out.println("<tr>");
                }
                out.println("</table>");
                String pdfFileName = "TabelPesan.pdf";
                String contextPath = getServletContext().getRealPath(File.separator);
                File pdfFile = new File(contextPath + pdfFileName);

                response.setContentType("application/pdf");
                response.addHeader("Content-Disposition", "attachment; filename=" + pdfFileName);
                response.setContentLength((int) pdfFile.length());
            } else if (service.equals("Pelayan")) {
                PelayanModel model = new PelayanModel();
                out.println("<h1><b>Tabel Data " + service + "</b></h1>");
                out.println("<table border='1'>");
                out.println("<tr>");
                out.println("<td>Nama</td>");
                out.println("<td>Umur</td>");
                out.println("<td>Jenis Kelamin</td>");
                out.println("<td>Motivasi</td>");
                out.println("<td>Posisi Pelayan</td>");
                out.println("<td>Kontak</td>");
                out.println("<tr>");
                List<Pelayan> listPelayan = model.getAll();
                for (Pelayan p : listPelayan) {
                    out.println("<tr>");
                    out.println("<td>" + p.getNama() + "</td>");
                    out.println("<td>" + p.getUmur() + "</td>");
                    out.println("<td>" + p.getJeniskelamin() + "</td>");
                    out.println("<td>" + p.getMotivasi() + "</td>");
                    out.println("<td>" + p.getPosisipelayan() + "</td>");
                    out.println("<td>" + p.getKontak() + "</td>");
                    out.println("<tr>");
                }
                out.println("</table>");
                String pdfFileName = "TabelPelayan.pdf";
                String contextPath = getServletContext().getRealPath(File.separator);
                File pdfFile = new File(contextPath + pdfFileName);

                response.setContentType("application/pdf");
                response.addHeader("Content-Disposition", "attachment; filename=" + pdfFileName);
                response.setContentLength((int) pdfFile.length());
                
            } else if (service.equals("Babtis")) {
                BabtisModel model = new BabtisModel();
                out.println("<h1><b>Tabel Data " + service + "</b></h1>");
                out.println("<table border='1'>");
                out.println("<tr>");
                out.println("<td>Nama</td>");
                out.println("<td>NIK</td>");
                out.println("<td>Tempat, tanggal lahir</td>");
                out.println("<td>Alamat</td>");
                out.println("<td>Jenis Kelamin</td>");
                out.println("<td>Kontak</td>");
                out.println("<tr>");
                List<Babtis> listBabtis = model.getAll();
                for (Babtis b : listBabtis) {
                    out.println("<tr>");
                    out.println("<td>" + b.getNama() + "</td>");
                    out.println("<td>" + b.getNik() + "</td>");
                    out.println("<td>" + b.getTtl() + "</td>");
                    out.println("<td>" + b.getAlamat() + "</td>");
                    out.println("<td>" + b.getJeniskelamin() + "</td>");
                    out.println("<td>" + b.getKontak() + "</td>");
                    out.println("<tr>");
                }
                out.println("</table>");
                String pdfFileName = "TabelBabtis.pdf";
                String contextPath = getServletContext().getRealPath(File.separator);
                File pdfFile = new File(contextPath + pdfFileName);

                response.setContentType("application/pdf");
                response.addHeader("Content-Disposition", "attachment; filename=" + pdfFileName);
                response.setContentLength((int) pdfFile.length());
            }
            out.println("<br/>");
        %>
    </body>
</html>
