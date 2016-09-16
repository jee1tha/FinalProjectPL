/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package PLMethods;

import businessoperationslayer.Admin;
import businessoperationslayer.Applicants;
import businessoperationslayer.Users;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.MessageDigest;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.log4j.Logger;

/**
 *
 * @author VABAYJE
 */
public class loginServlet extends HttpServlet {
	private static final Logger log = Logger.getLogger(loginServlet.class);
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
                log.debug("failed at encrypting password", e);
            }
            Users user = new Users();
            user.setUsername(request.getParameter("txtUsername"));

            user.setPassword(stringbuff.toString());

            presentationLayerMethods p = new presentationLayerMethods();
            String r = p.LoginUser(user);
            String role = null;
            String email = null;
            int appID = 0;
            String birthdate = null;
            String contactNo = null;
            String name = null;
            String NicNo = null;
            int AdminID = 0;
            String EmpNo = null;
            String username = request.getParameter("txtUsername");
            if (r.equals("fail")) {
                role = null;
                HttpSession session = request.getSession(true);
                session.setAttribute("role", role);
                request.setAttribute("reponselogin", "Incorrect Username/Password. Please try again.");
                request.getRequestDispatcher("/login.jsp").forward(request, response);
            } else {
                if (r.equals("user")) {
                    role = "user";
                    Applicants app = new Applicants();
                    app.setUsername(username);
                   
                    role = p.getApplicants(app).get(0).getRole();
                    email = p.getApplicants(app).get(0).getEmail();
                    appID = p.getApplicants(app).get(0).getAppID();
                    birthdate = p.getApplicants(app).get(0).getBirthDate();
                    contactNo = p.getApplicants(app).get(0).getContactNo();
                    name = p.getApplicants(app).get(0).getName();
                    NicNo = p.getApplicants(app).get(0).getNicNo();
                    HttpSession session = request.getSession(true);
                    
                    session.setAttribute("role", role);
                    session.setAttribute("email", email);
                    session.setAttribute("appID", appID);
                    session.setAttribute("birthdate", birthdate);
                    session.setAttribute("contactNo", contactNo);
                    session.setAttribute("name", name);
                    session.setAttribute("NicNo", NicNo);
                    session.setAttribute("username", username);    
                    request.getRequestDispatcher("/login.jsp").forward(request, response);
                }
                else if (r.equals("admin") || r.equals("masteradmin")) {
                      
                    Admin admin = new Admin();
                    admin.setUsername(username);
                   
                    role = p.getAdminInfo(admin).get(0).getRole();
                    email = p.getAdminInfo(admin).get(0).getEmail();
                    AdminID = p.getAdminInfo(admin).get(0).getAdminID();
                    contactNo = p.getAdminInfo(admin).get(0).getContactNo();
                    name = p.getAdminInfo(admin).get(0).getName();
                    EmpNo = p.getAdminInfo(admin).get(0).getEmpNo();
                    HttpSession session = request.getSession(true);
                    
                    session.setAttribute("role", role);
                    session.setAttribute("email", email);
                    session.setAttribute("AdminID", AdminID);
                    session.setAttribute("contactNo", contactNo);
                    session.setAttribute("name", name);
                    session.setAttribute("EmpNo", EmpNo);
                    session.setAttribute("username", username);    
                    request.getRequestDispatcher("/login.jsp").forward(request, response);       
                }

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
