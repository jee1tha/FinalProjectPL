/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package PLMethods;
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
public class registerUserServlet extends HttpServlet {

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
            Applicants app = new Applicants();
            app.setUsername(request.getParameter("txtUsername"));
            app.setName(request.getParameter("txtName"));
            app.setPassword(stringbuff.toString());
            app.setNicNo(request.getParameter("txtNICNo"));
            app.setEmail(request.getParameter("txtEmail"));
            app.setContactNo(request.getParameter("txtContactNo"));
            app.setBirthDate(request.getParameter("txtbday"));
            app.setRole("User");

            presentationLayerMethods p = new presentationLayerMethods();
            int r = p.RegisterUser(app);
            String registration = null;
            if (r == 1) {
                registration = "successful";
                request.getRequestDispatcher("/login.jsp").forward(request, response);
            } else {
                registration = "failed";
                request.getRequestDispatcher("/index.jsp").forward(request, response);
            }

            HttpSession session = request.getSession(true);
            session.setAttribute("registration", registration);
            
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
