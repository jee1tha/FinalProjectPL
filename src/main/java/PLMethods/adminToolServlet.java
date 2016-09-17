/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package PLMethods;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author VABAYJE
 */
public class adminToolServlet extends HttpServlet {

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
                     String skills = request.getParameter("skills" );
                      String expQua = request.getParameter("expQua" );
                       String reEvaluateRequest = request.getParameter("reEvaluate" );
                    
                       presentationLayerMethods pl = new presentationLayerMethods();
                       if(skills.equals("trainSkills")){
                         int skillsResult=  pl.trainSkillsNN();
                           if(skillsResult == 1){
                               request.setAttribute("skill", "done");
                           }
                       }
                        if(expQua.equals("trainExpQua")){
                           int expQuaResult =pl.trainQualificationsExperienceNN();
                           if(expQuaResult == 1){
                               request.setAttribute("expQua", "done");
                           }
                       }
                        if(reEvaluateRequest.equals("reEvaluate")){
                         int rev=  pl.evaluateAllApplicants();
                           
                           if(rev > 1)
                           {
                               request.setAttribute("reEvaluate", "done");
                           }}
                       
                       request.getRequestDispatcher("/adminToolsDone.jsp").forward(request, response);
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
