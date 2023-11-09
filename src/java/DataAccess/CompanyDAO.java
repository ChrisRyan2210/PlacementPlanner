/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DataAccess;

import Models.Company;
import Utils.DBManager;
import java.util.ArrayList;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import Models.Company;
import java.sql.SQLException;
import java.util.HashSet;
import java.util.Set;

/**
 *
 * @author Chris
 */
public class CompanyDAO {

     // This code is based off the DAO class from my 3rd year project which references Bill Emerson's 'Project Phase 1 & 2 Help Videos'.
    public ArrayList<Company> getAllCompanies() { //array list method that retrives all companies

        DBManager dm = new DBManager(); // creates object of DBManager class
        Connection con = dm.getConnection(); //calls connection method using built in connection class/methods
        //below we are creating local variables for this method
        int companyID = 0;
        String companyName = null;
        String companyDescription = null;
        String industry = null;
        double salary = 0;
        String imageLocation = null;
        
        ArrayList<Company> companyData = new ArrayList();// creates array list to be populated 

        String query = "SELECT * FROM company_data";
        try {
            PreparedStatement stmt = con.prepareStatement(query);// prepared statement allows us to pass a SQL query as a parameter. 
            ResultSet rs = stmt.executeQuery(); // rs populates and allows us to assign values to variables
            while (rs.next()) { // reads through each company picked from the DB 
                companyID = rs.getInt(1);
                companyName = rs.getString(2);
                companyDescription = rs.getString(3);
                industry = rs.getString(4);
                salary = rs.getDouble(5);
                imageLocation = rs.getString(6);

                Company company = new Company();// create object of the class Company using the empty constructor

                company.setCompanyID(companyID);//uses setter methods in model class
                company.setCompanyName(companyName);
                company.setCompanyDescription(companyDescription);
                company.setIndustry(industry);
                company.setSalary(salary);
                company.setImageLocation(imageLocation);
                
                companyData.add(company);// adds the companies to the array list

            }
        } catch (SQLException e) {
            e.printStackTrace();// this prints any errors if caught in console
        }
        return companyData;
    }
    
    public ArrayList<Company> getCompaniesByCourse(String course) { //array list method that retrives all companies by users course

        DBManager dm = new DBManager(); // creates object of DBManager class
        Connection con = dm.getConnection(); //calls connection method using built in connection class/methods
        //below we are creating local variables for this method
        int companyID = 0;
        String companyName = null;
        String companyDescription = null;
        String industry = null;
        double salary = 0;
        String imageLocation = null;
        
        ArrayList<Company> companyData = new ArrayList();// creates array list to be populated 

        String query = String.format("SELECT * FROM company_data WHERE course LIKE '%s'", course);
        try {
            PreparedStatement stmt = con.prepareStatement(query);// prepared statement allows us to pass a SQL query as a parameter. 
            ResultSet rs = stmt.executeQuery(); // rs populates and allows us to assign values to variables
            while (rs.next()) { // reads through each company picked from the DB 
                companyID = rs.getInt(1);
                companyName = rs.getString(2);
                companyDescription = rs.getString(3);
                industry = rs.getString(4);
                salary = rs.getDouble(5);
                imageLocation = rs.getString(6);

                Company company = new Company();// create object of the class Company using the empty constructor

                company.setCompanyID(companyID);//uses setter methods in model class
                company.setCompanyName(companyName);
                company.setCompanyDescription(companyDescription);
                company.setIndustry(industry);
                company.setSalary(salary);
                company.setImageLocation(imageLocation);
                company.setCourse(course);
                
                companyData.add(company);// adds the companies to the array list

            }
        } catch (SQLException e) {
            e.printStackTrace();// this prints any errors if caught in console
        }
        return companyData;
    }
    
    

    public static Company getCompanyByID(int companyID) { // this is a static method as it doesnt matter if it gets overriden 

        DBManager dm = new DBManager(); // creates object of DBManager class
        Connection con = dm.getConnection(); //calls connection method using built in connection class/methods
        //no ID variable as its passed in as a an argument above
        String companyName = null;
        String companyDescription = null;
        String industry = null;
        double salary = 0;
        String imageLocation = null; 
       

        Company tempCompany = new Company();//same as above method

        String query = String.format("SELECT * FROM company_data WHERE COMPANY_ID=%d", companyID); //sql query using the argument passed in to retrieve the company

        try {
            PreparedStatement stmt = con.prepareStatement(query);//same as above method
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                companyName = (rs.getString(2));
                companyDescription = (rs.getString(3));
                industry = (rs.getString(4));
                salary = (rs.getDouble(5));
                imageLocation = rs.getString(6);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        tempCompany.setCompanyID(companyID);//same as above method
        tempCompany.setCompanyName(companyName);
        tempCompany.setCompanyDescription(companyDescription);
        tempCompany.setIndustry(industry);
        tempCompany.setSalary(salary);
        tempCompany.setImageLocation(imageLocation);

        return tempCompany;
    }

    public static Company getCompanyByName(String companyName) { // this method can be used as back up for above method/ also potentially for search bar(not sure yet but maybe ajax is used instead)

        DBManager dm = new DBManager(); // creates object of DBManager class
        Connection con = dm.getConnection(); //calls connection method using built in connection class/methods

        int companyID = 0;
        String companyDescription = null;
        String industry = null;
        double salary = 0;
        String imageLocation = null;

        Company tempCompany = new Company();//same as above method

        String query = String.format("SELECT * FROM company_data WHERE COMPANY_NAME LIKE '%s'", companyName); //sql query using the argument passed in to retrieve the company

        try {
            PreparedStatement stmt = con.prepareStatement(query);//same as above method
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                companyID = rs.getInt(1);
                companyDescription = (rs.getString(3));
                industry = (rs.getString(4));
                salary = (rs.getDouble(5));
                imageLocation = (rs.getString(6));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        tempCompany.setCompanyID(companyID);//same as above method
        tempCompany.setCompanyName(companyName);
        tempCompany.setCompanyDescription(companyDescription);
        tempCompany.setIndustry(industry);
        tempCompany.setSalary(salary);
        tempCompany.setImageLocation(imageLocation);

        return tempCompany;
    }

    public ArrayList<String> getIndustryList() {// this method will let me display a list of industtries for the user to filter by 

        DBManager dm = new DBManager();// same
        Connection con = dm.getConnection();// same
        ArrayList<String> industries = new ArrayList<String>(); //string type list 

        String query = String.format("SELECT DISTINCT industry FROM company_data"); // sql to get all unique types of industry 

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

    public ArrayList<Company> getCompaniesByIndustry(String industry, String course) { //change this to include course

        DBManager dm = new DBManager();
        Connection con = dm.getConnection();

        int companyID = 0;
        String companyName = null;
        String companyDescription = null;
        double salary = 0;
        String imageLocation = null;

        ArrayList<Company> companyData = new ArrayList();

        String query = String.format("SELECT * FROM company_data WHERE INDUSTRY LIKE '%s'", industry, "AND WHERE course LIKE '%s'", course);
        try {
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                companyID = (rs.getInt(1));
                companyName = (rs.getString(2));
                companyDescription = (rs.getString(3));
                salary = (rs.getDouble(5));
                imageLocation = rs.getString(6);

                Company company = new Company();

                company.setCompanyID(companyID);//same as above method
                company.setCompanyName(companyName);
                company.setCompanyDescription(companyDescription);
                company.setIndustry(industry);
                company.setSalary(salary);
                company.setImageLocation(imageLocation);
                company.setCourse(course);
                companyData.add(company);
                
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return companyData;

    }

    
    
}
// Reference: Bill Emerson, 'Project Phase 1 & 2 Help Videos' (Jan 2023), https://ucc.instructure.com/courses/51671/modules/items/1678366