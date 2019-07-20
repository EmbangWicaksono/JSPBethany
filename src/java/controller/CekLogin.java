/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

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
import model.UserModel;

/**
 *
 * @author Andre
 */
@WebServlet(name = "CekLogin_1", urlPatterns = {"/CekLogin_1"})
public class CekLogin extends HttpServlet {

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
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        HttpSession session = request.getSession();
        
        UserModel model = new UserModel();
        List <User> listUser = model.getAll();
        for (User u : listUser) {
            if(username.equals(u.getUsername()) && password.equals(u.getPassword())){
                cek = 1;
            }
        }
        
        if(username.equals("")){
            RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
            rd.include(request, response);
            out.print("<div style=\" margin-top: 1px; margin-left: 500px; margin-right: 500px;\n"
                   + "    border: 2px solid #ff3333;color:#ff0000; text-align :"
                   + " center; background-color: #ffffff; opacity: 0.8; border-radius: 10px;\">"
                   + "<p>Username tidak boleh kosong</p>"
                   + "</div>");
        }else if(password.equals("")){
            RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
            rd.include(request, response);
            out.print("<div style=\" margin-top: 1px; margin-left: 500px; margin-right: 500px;\n"
                   + "    border: 2px solid #ff3333;color:#ff0000; text-align :"
                   + " center; background-color: #ffffff; opacity: 0.8; border-radius: 10px;\">"
                   + "<p>Password tidak boleh kosong</p>"
                   + "</div>");
        }else if(cek==1 && username.equals("admin") && password.equals("staff")){
            session.setAttribute("username", username);
            response.sendRedirect("HomeStaff");
        }else if(cek==1){
            session.setAttribute("username", username);
            response.sendRedirect("home.jsp");
        }else{
            RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
            rd.include(request, response);
            out.print("<div style=\" margin-top: 1px; margin-left: 500px; margin-right: 500px;\n"
                   + "    border: 2px solid #ff3333;color:#ff0000; text-align :"
                   + " center; background-color: #ffffff; opacity: 0.8; border-radius: 10px;\">"
                   + "<p>Cek kembali username dan password Anda</p>"
                   + "</div>");
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
