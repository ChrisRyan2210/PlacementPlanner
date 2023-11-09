/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Models.Company;
import Service.CompanyService;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Chris
 */
@WebServlet(name = "CompaniesServlet", urlPatterns = {"/CompaniesServlet"})
public class CompaniesServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)// this code is adapted from my own code from my 3rd year project. 
            throws ServletException, IOException {

        //insert code to check if logged in here later!!!!!!!!!!!!!!!!!!
        //insert codet to retrieve usercourse from the session here later!!!!!!!!!!!!!!!!!
        HttpSession session = request.getSession(false); //checks if session is active
        //checking if user is logged in
        String email = (String) session.getAttribute("email");

        if (email == null) {
            request.setAttribute("loginMessage", "Please login to access this page"); // sets the message for the login page if they have to login. Got from https://chat.openai.com/c/e3e4edaf-7ace-4e79-a808-8cc02d337740
            RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp"); //send to login page
            dispatcher.forward(request, response); // sends the request
        } else {

            String course = (String) session.getAttribute("course");// get course of user

            CompanyService cServ = new CompanyService(); // creat object of CompanyService class
            List<String> industryList = cServ.getIndustryList(); // creates array list and retrieve arraylist method from CService
            session.setAttribute("industryList", industryList); //name value pair. here we assign industyList to "industryList, add to session to be sent to jsp

            String industry = request.getParameter("industry");// this gets the industry selected from the JSP - not created yet 

            List<Company> companies;

            if (industry == null) { // this checks is an industry is selected and filiters by industry if it is. 
                companies = cServ.getCompaniesByCourse(course); //changing this for v1.2
            } else {
                companies = cServ.getCompanyByIndustry(industry, course); //need to change this in service/dao
            }

            request.setAttribute("companies", companies);// sets the list of companies to the companies request
            RequestDispatcher dispatcher = request.getRequestDispatcher("Companies.jsp"); //calls dispatcher to go to comapnies jsp
            dispatcher.forward(request, response); // sends the request

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
// Reference: Chris Ryan 'FlowerShop' project (Feb, 2023).
// Reference: ChatGPTv3.5, Please Login Dynamic Message, https://chat.openai.com/c/e3e4edaf-7ace-4e79-a808-8cc02d337740
