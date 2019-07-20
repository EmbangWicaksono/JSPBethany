/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entity.Babtis;
import entity.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.BabtisModel;
import model.UserModel;

/**
 *
 * @author Andre
 */
@WebServlet(name = "CekRegisterBabtis_1", urlPatterns = {"/CekRegisterBabtis_1"})
public class CekRegisterBabtis extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        HttpSession session = request.getSession();
        String username = String.valueOf(session.getAttribute("username"));
        UserModel model = new UserModel();
        User u = model.getDetail(username);
        String tanggal = request.getParameter("tanggal");
        String tgl = tanggal.substring(8)+"-"+tanggal.substring(5,7)+"-"+tanggal.substring(0, 4);
        Babtis b = new Babtis();
        b.setNama(u.getNama());
        b.setNik(request.getParameter("nik"));
        b.setTtl(request.getParameter("tempat")+", "+tgl);
        b.setAlamat(request.getParameter("alamat"));
        b.setJeniskelamin(request.getParameter("jeniskelamin"));
        b.setKontak(u.getKontak());
        
        BabtisModel model2 = new BabtisModel();
        String info = model2.insert(b);
        if (info.equals("success")) {
            response.sendRedirect("Service");
        } else {
            out.println(info);
            RequestDispatcher rd = null;
            rd = request.getRequestDispatcher("registerBabtis.jsp");
            rd.include(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
