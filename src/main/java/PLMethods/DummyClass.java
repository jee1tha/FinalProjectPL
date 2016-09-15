package PLMethods;

import PLMethods.presentationLayerMethods;
import businessoperationslayer.Applicants;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author VABAYJE
 */
public class DummyClass {
    public static void main(String[] args) {
//    presentationLayerMethods p = new presentationLayerMethods();
//   
//    System.out.print(p.getUserEvaluationAll().get(0).getFinalScore());

   Applicants app = new Applicants();
       app.setUsername("registerUserServlet");
       app.setName("registerUserServlet");
       app.setPassword("registerUserServlet");
       app.setNicNo("registerUserServlet");
       app.setEmail("registerUserServlet@qwe");
       app.setContactNo("123123123");
       app.setRole("User");
       presentationLayerMethods p = new presentationLayerMethods();
        System.out.println(p.RegisterUser(app));
    }
}
