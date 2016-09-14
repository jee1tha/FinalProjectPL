package PLMethods;
import businessoperationslayer.Admin;
import businessoperationslayer.Applicants;
import businessoperationslayer.Bws;
import businessoperationslayer.Experience;
import businessoperationslayer.Job;
import businessoperationslayer.Qualifications;
import businessoperationslayer.Skills;
import java.util.ArrayList;
import java.util.List;
import org.apache.log4j.chainsaw.Main;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author VABAYJE
 */
public class presentationLayerMethods {

    public List<Job> getUserEvaluationAll() {
        Bws proxy = SingletonCon.getInstance().getBwsPort();
        return proxy.getUserEvaluationAll();
    }

    public int RegisterUser(Applicants app) {
        Bws proxy = SingletonCon.getInstance().getBwsPort();
        return proxy.registerUser(app);
    }

    public int RegisterAdmin(Admin admin) {
        Bws proxy = SingletonCon.getInstance().getBwsPort();
        return proxy.registerAdmin(admin);
    }

    public int deleteAdmins(Admin admin) {
        Bws proxy = SingletonCon.getInstance().getBwsPort();
        return proxy.deleteAdmin(admin);
    }

    public int deleteUsers(Applicants app) {
        Bws proxy = SingletonCon.getInstance().getBwsPort();
        return proxy.deleteUser(app);
    }

    public int LoginUser(Applicants app) {
        Bws proxy = SingletonCon.getInstance().getBwsPort();
        return proxy.loginUser(app);
    }

    public int LoginAdmin(Admin admin) {
        Bws proxy = SingletonCon.getInstance().getBwsPort();
        return proxy.loginAdmin(admin);
    }

    public int addSkills(Skills skill) {
        Bws proxy = SingletonCon.getInstance().getBwsPort();
        return proxy.addSkills(skill);
    }

    public int addExperience(Experience exp) {
        Bws proxy = SingletonCon.getInstance().getBwsPort();
        return proxy.addExperience(exp);
    }

    public int addQualifications(Qualifications qualification) {
        Bws proxy = SingletonCon.getInstance().getBwsPort();
        return proxy.addQualifications(qualification);
    }

    public int addJob(Job job) {
        Bws proxy = SingletonCon.getInstance().getBwsPort();
        return proxy.addJob(job);
    }

    public int updateSkills(Skills skill) {
        Bws proxy = SingletonCon.getInstance().getBwsPort();
        return proxy.updateSkills(skill);
    }

    public int updateExperience(Experience exp) {
        Bws proxy = SingletonCon.getInstance().getBwsPort();
        return proxy.updateExperience(exp);
    }

    public int updateQualifications(Qualifications qualification) {
        Bws proxy = SingletonCon.getInstance().getBwsPort();
        return proxy.updateQualifications(qualification);
    }

    public List<Applicants> getApplicants(Applicants app) {
        Bws proxy = SingletonCon.getInstance().getBwsPort();
        return proxy.getApplicants(app);
    }

    public List<Job> getJobInfo(Job job) {
        Bws proxy = SingletonCon.getInstance().getBwsPort();
        return proxy.getJobInfo(job);
    }

    public List<Admin> getAdminInfo(Admin admin) {
        Bws proxy = SingletonCon.getInstance().getBwsPort();
        return proxy.getAdminInfo(admin);
    }

    public List<Job> getUserJobInfo(Applicants app) {
        Bws proxy = SingletonCon.getInstance().getBwsPort();
        return proxy.getUserJobInfo(app);
    }

    public List<Skills> getSkillInfo(Skills skill) {
        Bws proxy = SingletonCon.getInstance().getBwsPort();
        return proxy.getSkillInfo(skill);
    }

    public List<Experience> getExpInfo(Experience exp) {
        Bws proxy = SingletonCon.getInstance().getBwsPort();
        return proxy.getExpInfo(exp);
    }

    public List<Qualifications> getQualificationsInfo(Qualifications qualification) {
        Bws proxy = SingletonCon.getInstance().getBwsPort();
        return proxy.getQualificationsInfo(qualification);
    }

    public List<Skills> getApplicantSkills(Applicants app) {
        Bws proxy = SingletonCon.getInstance().getBwsPort();
        return proxy.getApplicantSkills(app);
    }

    public List<Experience> getApplicantExp(Applicants app) {
        Bws proxy = SingletonCon.getInstance().getBwsPort();
        return proxy.getApplicantExp(app);
    }

    public List<Qualifications> getApplicantQualifications(Applicants app) {
        Bws proxy = SingletonCon.getInstance().getBwsPort();
        return proxy.getApplicantQualifications(app);
    }

    public int deleteskill(Skills skill) {
        Bws proxy = SingletonCon.getInstance().getBwsPort();
        return proxy.deleteskill(skill);
    }

    public int deleteExp(Experience exp) {
        Bws proxy = SingletonCon.getInstance().getBwsPort();
        return proxy.deleteExp(exp);
    }

    public int deleteQualifications(Qualifications qualifications) {
        Bws proxy = SingletonCon.getInstance().getBwsPort();
        return proxy.deleteQualifications(qualifications);
    }

    public int deleteJob(Job job) {
        Bws proxy = SingletonCon.getInstance().getBwsPort();
        return proxy.deleteJob(job);
    }
    
    public int addUserInformation(Applicants app,Job job,Qualifications qua,Experience exp,Skills skill){
         Bws proxy = SingletonCon.getInstance().getBwsPort();
         return proxy.addUserInformation(app,job,qua,exp,skill);
    }
}
