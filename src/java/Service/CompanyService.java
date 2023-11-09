/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Service;

import DataAccess.CompanyDAO;
import Models.Company;
import java.util.ArrayList;

/**
 *
 * @author Chris
 */
public class CompanyService {
    
     public ArrayList<Company> getAllCompanies() {

        CompanyDAO companies = new CompanyDAO();
        return companies.getAllCompanies();

    }
     
     public ArrayList<Company> getCompaniesByCourse(String course) { //new method to limit companies seen
         
         CompanyDAO companies = new CompanyDAO();
         return companies.getCompaniesByCourse(course);
     }
     
     public Company getCompanyByID(int companyID) {
        
        CompanyDAO companyData = new CompanyDAO();// creates object of companyDAO to allow access
        Company company = CompanyDAO.getCompanyByID(companyID); //object of company class and assings it to the value of the method of the companyDAO class with ID param 
        return company;
    }
     
     public ArrayList<String> getIndustryList() {
         
         CompanyDAO industryList = new CompanyDAO();
         return industryList.getIndustryList();
         
     }
     
     public ArrayList<Company> getCompanyByIndustry(String industry, String course) {
         
         CompanyDAO companies = new CompanyDAO();
         return companies.getCompaniesByIndustry(industry, course);
     }
    // need to add CRUD methods to here and DAO class
}
