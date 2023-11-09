/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

/**
 *
 * @author Chris
 */
public class Role {
    
    private int roleID;
    private String roleName;
    private String roleDescription;
    private String industry;
    private double salary;    
    private String course;

    public Role(int roleID, String roleName, String roleDescription, String industry, double salary, String course) {
        this.roleID = roleID;
        this.roleName = roleName;
        this.roleDescription = roleDescription;
        this.industry = industry;
        this.salary = salary;
        this.course = course;
    }
    
    public Role() {
        
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    public int getRoleID() {
        return roleID;
    }

    public void setRoleID(int roleID) {
        this.roleID = roleID;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public String getRoleDescription() {
        return roleDescription;
    }

    public void setRoleDescription(String roleDescription) {
        this.roleDescription = roleDescription;
    }

    public String getIndustry() {
        return industry;
    }

    public void setIndustry(String industry) {
        this.industry = industry;
    }

    public String getCourse() {
        return course;
    }

    public void setCourse(String course) {
        this.course = course;
    }
            
}
