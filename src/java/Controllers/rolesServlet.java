/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Models.Role;
import Service.CompanyService;
import Service.roleService;
import javax.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 *
 * @author Chris
 */
@WebServlet(name = "rolesServlet", urlPatterns = {"/rolesServlet"}) // this code is adapted from my own code from my 3rd year project. 
public class rolesServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
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

            CompanyService cServ = new CompanyService();
            roleService rServ = new roleService();
            List<String> industryList = rServ.getIndustryList();
            session.setAttribute("industryList", industryList);

            String industry = request.getParameter("industry");
            System.out.println(industry);// DEBUGGING: okay so it works here
            List<Role> roles;

            if (industry == null) {
                roles = rServ.getRolesByCourse(course);
            } else {
                roles = rServ.getRoleByIndustry(industry, course);

            }

            request.setAttribute("roles", roles);// sets the list of companies to the companies request
            RequestDispatcher dispatcher = request.getRequestDispatcher("roles.jsp"); //calls dispatcher to go to comapnies jsp
            dispatcher.forward(request, response); // sends the request

        }
    }

        @Override
        protected void doPost
        (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        }

    }
// Reference: Chris Ryan 'FlowerShop' project (Feb, 2023).
