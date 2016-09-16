/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package PLMethods;
import businessoperationslayer.Admin;
import java.security.MessageDigest;
import businessoperationslayer.Applicants;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author VABAYJE
 */
public class registerAdminServlet extends HttpServlet {

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
        try {
            StringBuffer stringbuff = new StringBuffer();
            try {
                String password = request.getParameter("txtPassword");
                MessageDigest messageD = MessageDigest.getInstance("MD5");
                messageD.update(password.getBytes());

                byte byteData[] = messageD.digest();

                 //converting the byte to hex format 
                  
                 for (int i = 0; i < byteData.length; i++) {
                 stringbuff.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
                }

       
            } catch (Exception e) {
            }
            Admin obj = new Admin();
            obj.setUsername(request.getParameter("txtUsername"));
            obj.setName(request.getParameter("txtName"));
            obj.setPassword(stringbuff.toString());
            obj.setEmpNo(request.getParameter("txtEmpNo"));
            obj.setEmail(request.getParameter("txtEmail"));
            obj.setContactNo(request.getParameter("txtContactNo"));
            obj.setRole(request.getParameter("role"));

            presentationLayerMethods p = new presentationLayerMethods();
            int r = p.RegisterAdmin(obj);
            String registration = null;
            if (r == 1) {
                registration = "adminsuccessful";
                     HttpSession session = request.getSession(true);
                    session.setAttribute("registration", registration);
                request.getRequestDispatcher("/login.jsp").forward(request, response);
            } else {
                registration = "adminfailed";
                  HttpSession session = request.getSession(true);
            session.setAttribute("registration", registration);
                 request.getRequestDispatcher("/login.jsp").forward(request, response);
            }

          
            
        } finally {
            out.close();
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
