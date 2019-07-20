/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entity.Peserta;
import entity.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.PesertaModel;
import model.UserModel;

/**
 *
 * @author Andre
 */
@WebServlet(name = "CekRegisterEvent_1", urlPatterns = {"/CekRegisterEvent_1"})
public class CekRegisterEvent extends HttpServlet {

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

        int cek = 0;
        HttpSession session = request.getSession();
        String username = String.valueOf(session.getAttribute("username"));
        UserModel model = new UserModel();
        User u = model.getDetail(username);

        PesertaModel model2 = new PesertaModel();
        List<Peserta> listPeserta = model2.getAll();
        for (Peserta pe : listPeserta) {
            if (u.getNama().equals(pe.getNama()) && request.getParameter("kodeevent").equals(pe.getKodeevent())) {
                cek = 1;
            }
        }
        RequestDispatcher rd = null;
        if (cek == 1) {
            rd = request.getRequestDispatcher("sudahregistrasiEvent.jsp");
            rd.forward(request, response);
        } else {
            Peserta p = new Peserta();
            p.setNama(u.getNama());
            p.setKontak(u.getKontak());
            p.setKodeevent(request.getParameter("kodeevent"));
            String info = model2.insert(p);
            if (info.equals("success")) {
                response.sendRedirect("Event");
            } else {
                out.println(info);
                rd = request.getRequestDispatcher("view/registerEvent.jsp");
                rd.include(request, response);
            }
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
