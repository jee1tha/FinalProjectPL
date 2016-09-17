/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package PLMethods;

import businessoperationslayer.Skills;
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
public class updateSkillsCriteriaServlet extends HttpServlet {

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
             int arraysize = Integer.parseInt(request.getParameter("arraySize"));
             int result = 0;
           
            for(int x = 0; x< arraysize ;x++){
                String skillID = "txtSkillID" + x;
                String skillEligibility = "newEligibility" + x ;
                Skills sk = new Skills();
                String eligibility = request.getParameter(skillEligibility) ;
              //  System.out.println(eligibility);
                if(eligibility.equals("true")){
                    sk.setSeligibility(true);
                }else{
                    sk.setSeligibility(false);
                }
              //  String s = request.getParameter(skillID);
                sk.setSkillID(Integer.parseInt(request.getParameter(skillID)));
                
                presentationLayerMethods plm = new presentationLayerMethods();
               if( plm.updateSkills(sk) == 1){
                   result++;
               };
                
            }
            if(result > 1){
            request.setAttribute("result", "added");
            }else{
                request.setAttribute("result", "failed");
            }
            request.getRequestDispatcher("/skillsUpdated.jsp").forward(request, response);
            
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
