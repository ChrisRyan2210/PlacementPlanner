/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataAccess;

import Models.Role;
import Utils.DBManager;
import java.util.ArrayList;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Chris
 */
public class rolesDAO {
    // This code is based off the DAO class from my 3rd year project which references Bill Emerson's 'Project Phase 1 & 2 Help Videos'.

    public ArrayList<Role> getAllRoles() {

        DBManager dm = new DBManager();
        Connection conn = dm.getConnection();

        int roleID = 0;
        String roleName = null;
        String roleDescription = null;
        String industry = null;
        double salary = 0;

        ArrayList<Role> roleData = new ArrayList();

        String query = "SELECT * FROM role_data";
        try {

            PreparedStatement stmt = conn.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                roleID = rs.getInt(1);
                roleName = rs.getString(2);
                roleDescription = rs.getString(3);
                industry = rs.getString(4);
                salary = rs.getDouble(5);

                Role role = new Role();

                role.setRoleID(roleID);
                role.setRoleName(roleName);
                role.setRoleDescription(roleDescription);
                role.setIndustry(industry);
                role.setSalary(salary);

                roleData.add(role);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return roleData;
    }
    
    public ArrayList<Role> getRolesByCourse(String course) {

        DBManager dm = new DBManager();
        Connection conn = dm.getConnection();
        
        int roleID = 0;
        String roleName = null;
        String roleDescription = null;
        String industry = null;
        double salary = 0;

        ArrayList<Role> roleData = new ArrayList();

        String query = String.format("SELECT * FROM role_data WHERE course LIKE '%s'", course);
        try {

            PreparedStatement stmt = conn.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                roleID = rs.getInt(1);
                roleName = rs.getString(2);
                roleDescription = rs.getString(3);
                industry = rs.getString(4);
                salary = rs.getDouble(5);

                Role role = new Role();

                role.setRoleID(roleID);
                role.setRoleName(roleName);
                role.setRoleDescription(roleDescription);
                role.setIndustry(industry);
                role.setSalary(salary);
                role.setCourse(course);

                roleData.add(role);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return roleData;
    }

    
    public static Role getRoleByID(int roleID) {
        
        DBManager dbmgr = new DBManager();
        Connection conn = dbmgr.getConnection();
        
        String roleName = null;
        String roleDescription = null;
        String industry = null;
        double salary = 0;
        
        Role tempRole = new Role();
        
        String query = String.format("SELECT * FROM role_data WHERE role_id = %d", roleID);
        
        try {
            PreparedStatement stmt = conn.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                
                roleName = rs.getString(2);
                roleDescription = rs.getString(3);
                industry = rs.getString(4);
                salary = rs.getDouble(5);
            }
        }catch (SQLException e) {
            e.printStackTrace();
        }
        
        tempRole.setRoleID(roleID);
        tempRole.setRoleName(roleName);
        tempRole.setRoleDescription(roleDescription);
        tempRole.setIndustry(industry);
        tempRole.setSalary(salary);
        
        return tempRole;
    }

    public ArrayList<Role> getRolesByIndustry(String industry, String course) {

        DBManager dm = new DBManager();
        Connection conn = dm.getConnection();

        int roleID = 0;
        String roleName = null;
        String roleDescription = null;
        double salary = 0;

        ArrayList<Role> roleData = new ArrayList();

        String query = String.format("SELECT * FROM role_data WHERE INDUSTRY LIKE '%s'", industry, "AND WHERE course LIKE '%s'", course);
        try {
            PreparedStatement stmt = conn.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {

                roleID = rs.getInt(1);
                roleName = rs.getString(2);
                roleDescription = rs.getString(3);
                salary = rs.getDouble(5);

                Role role = new Role();

                role.setRoleID(roleID);
                role.setRoleName(roleName);
                role.setRoleDescription(roleDescription);
                role.setIndustry(industry);
                role.setSalary(salary);
                role.setCourse(course);
                
                roleData.add(role);//DEBUGGING: this was the error, don't forget this
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return roleData;
    }
    
    public ArrayList<String> getIndustryList() {// this method will let me display a list of industtries for the user to filter by 

        DBManager dm = new DBManager();// same
        Connection con = dm.getConnection();// same
        ArrayList<String> industries = new ArrayList<String>(); //string type list 

        String query = String.format("SELECT DISTINCT industry FROM role_data"); // sql to get all unique types of industry 

        try {

            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {

                industries.add(rs.getString("industry")); // add to list

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return industries;
    }
}
// Reference: Bill Emerson, 'Project Phase 1 & 2 Help Videos' (Jan 2023), https://ucc.instructure.com/courses/51671/modules/items/1678366
