package PLMethods;

import PLMethods.presentationLayerMethods;

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
    presentationLayerMethods p = new presentationLayerMethods();
   
    System.out.print(p.getUserEvaluationAll().get(0).getFinalScore());
    }
}
