/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package PLMethods;

import businessoperationslayer.Experience;
import businessoperationslayer.Qualifications;
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
public class updateExpQuaCriteriaServlet extends HttpServlet {

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
          int arraysizeExp = Integer.parseInt(request.getParameter("arraysizeExp"));
          
             int result = 0;
           
            for(int x = 0; x< arraysizeExp ;x++){
                String expID = "txtExpID" + x;
                String ExpEligibility = "newExpEligibility" + x ;
                Experience ex = new Experience();
                String ExperienceEligibility = request.getParameter(ExpEligibility) ;
              //  System.out.println(eligibility);
                if(ExperienceEligibility.equals("true")){
                    ex.setExeligibility(true);
                }else{
                    ex.setExeligibility(false);
                }
              //  String s = request.getParameter(skillID);
                ex.setExpid(Integer.parseInt(request.getParameter(expID)));
                
                presentationLayerMethods plm = new presentationLayerMethods();
               if( plm.updateExperience(ex) == 1){
                   result++;
               };
                
            }
            
             int arraysizeQua = Integer.parseInt(request.getParameter("arraysizeQua"));
          
             int resultQua = 0;
           
            for(int x = 0; x< arraysizeExp ;x++){
                String quaID = "txtQuaID" + x;
                String QuaEligibility = "newQuaEligibility" + x ;
                Qualifications qua = new Qualifications();
                String ExperienceEligibility = request.getParameter(QuaEligibility) ;
              //  System.out.println(eligibility);
                if(ExperienceEligibility.equals("true")){
                    qua.setQualificationsEligibility(true);
                }else{
                    qua.setQualificationsEligibility(false);
                }
              //  String s = request.getParameter(skillID);
                qua.setId(Integer.parseInt(request.getParameter(quaID)));
                
                presentationLayerMethods plm = new presentationLayerMethods();
               if( plm.updateQualifications(qua) == 1){
                   resultQua++;
               };
                
            }    if(result > 1 && resultQua > 1){
            request.setAttribute("result", "added");
            }else{
                request.setAttribute("result", "failed");
            }
            request.getRequestDispatcher("/ExpQuaUpdated.jsp").forward(request, response);
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
