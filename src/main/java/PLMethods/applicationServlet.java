package PLMethods;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import businessoperationslayer.Applicants;
import businessoperationslayer.Experience;
import businessoperationslayer.Job;
import businessoperationslayer.Qualifications;
import businessoperationslayer.Skills;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author VABAYJE
 */
public class applicationServlet extends HttpServlet {

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

        int appid = 0;
        String user = null;
        try {
            if(request.getSession().getAttribute("role").toString().equals("user")){
            Applicants app = new Applicants();
            user = (String) request.getSession().getAttribute("username");
            app.setAppID(Integer.parseInt(request.getSession().getAttribute("appID").toString()));
            app.setName(request.getSession().getAttribute("name").toString());
            Skills skill = new Skills();

            skill.getSkillName().add(request.getParameter("txtSkill1"));
            skill.getSkillName().add(request.getParameter("txtSkill2"));
            skill.getSkillName().add(request.getParameter("txtSkill3"));
            skill.getSkillName().add(request.getParameter("txtSkill4"));
            skill.getSkillName().add(request.getParameter("txtSkill5"));
            
            Qualifications qua = new Qualifications();
            qua.setInstitute(request.getParameter("txtInstitute"));
            qua.setName(request.getParameter("txtQualification"));
            qua.setQClass(request.getParameter("txtClass"));
            
            Experience exp = new Experience();
            exp.setOrganization(request.getParameter("txtOrganization"));
            exp.setPost(request.getParameter("txtPost"));
            exp.setDuration(1);
            
            Job job = new Job();
            job.setJobid(1);
            presentationLayerMethods pm = new presentationLayerMethods();
            int r =pm.addUserInformation(app, job, qua, exp, skill) ;
            System.out.print(user);
            
                   if (r > 1) {
               request.setAttribute("result", "added");
                
            } if (r == 1) {
                request.setAttribute("result", "added");
            }else {
                     request.setAttribute("result", "failed");
                
            }
            request.getRequestDispatcher("/applicationAdded.jsp").forward(request, response);
            }else{
                 request.getRequestDispatcher("/application.jsp").forward(request, response);
            }
        } catch (Exception e) {

            e.printStackTrace();
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
