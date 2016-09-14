/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package PLMethods;

import businessoperationslayer.Applicants;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author VABAYJE
 */

public class registerUser extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */




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
      
       Applicants app = new Applicants();
       app.setUsername(request.getParameter("txtUsername"));
       app.setName(request.getParameter("txtName"));
       app.setPassword(request.getParameter("txtPassword"));
       app.setNicNo(request.getParameter("txtNICNo"));
       app.setEmail(request.getParameter("txtEmail"));
       app.setContactNo(request.getParameter("txtContactNo"));
       
       presentationLayerMethods p = new presentationLayerMethods();
       int r = p.RegisterUser(app);
       request.getRequestDispatcher("/WEB-INF/zzz.jsp").forward(request, response);;
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
