/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

import DataAccess.rolesDAO;
import Models.Role;
import java.util.ArrayList;

/**
 *
 * @author Chris
 */
public class roleService {

    public ArrayList<Role> getAllRoles() {

        rolesDAO roles = new rolesDAO();
        return roles.getAllRoles();

    }
    
    public ArrayList<Role> getRolesByCourse(String course) { //new method for roles by course
        
        rolesDAO roles = new rolesDAO();
        return roles.getRolesByCourse(course);
        
    }
    
     public ArrayList<String> getIndustryList() {
         
         rolesDAO industryList = new rolesDAO();
         return industryList.getIndustryList();
         
     }

    public ArrayList<Role> getRoleByIndustry(String industry, String course) {
        
        rolesDAO roles = new rolesDAO();
        System.out.println(industry);// DEBUGGING: works here, lets try DAO
        return roles.getRolesByIndustry(industry, course);
    }
}
