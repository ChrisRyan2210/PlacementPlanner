/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

/**
 *
 * @author Chris
 */
public class Company {
    
    private int companyID; 
    private String companyName;
    private String companyDescription;
    private String industry;
    private double salary;
    private String imageLocation;
    private String course;

    public Company(int companyID, String companyName, String companyDescription, String industry, double salary, String imageLocation, String course) {
        this.companyID = companyID;
        this.companyName = companyName;
        this.companyDescription = companyDescription;
        this.industry = industry;
        this.salary = salary;
        this.imageLocation = imageLocation;
        this.course = course;
    }
    
    public Company() {// empty constructor to use in DAO
        
    }

    public int getCompanyID() {
        return companyID;
    }

    public void setCompanyID(int companyID) {
        this.companyID = companyID;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getCompanyDescription() {
        return companyDescription;
    }

    public void setCompanyDescription(String companyDescription) {
        this.companyDescription = companyDescription;
    }

    public String getIndustry() {
        return industry;
    }

    public void setIndustry(String industry) {
        this.industry = industry;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    public String getImageLocation() {
        return imageLocation;
    }

    public void setImageLocation(String imageLocation) {
        this.imageLocation = imageLocation;
    }

    public String getCourse() {
        return course;
    }

    public void setCourse(String course) {
        this.course = course;
    }
            
}
