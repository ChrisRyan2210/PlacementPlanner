/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Models.User;
import Service.UserService;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Chris
 */
@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        
        String email = request.getParameter("email"); // gets input email from jps
        String password = request.getParameter("password"); // same 
        System.out.println(email + password);
        if (email == null || email.isEmpty() || password == null || password.isEmpty()) { // check if the param values are empty THIS IS WHERE ITS GOING WRONG
            request.getRequestDispatcher("login.jsp").include(request, response);
        } else {
            // now im gonna check the input params against the DB users. 
            UserService uServ = new UserService();
            User user = uServ.loginUser(email, password); // create object of user class and assign valu of method with params of above vars from jsp.
            // now gonna check if user is found 
            if (user == null) {
                request.setAttribute("incorrectLogin", "A user with that email and password was not found");
                RequestDispatcher rd = request.getRequestDispatcher("login.jsp");// if fail to find user then reload page (maybe change to show message saying failed if possible) 
                rd.forward(request, response);
            } else {
                HttpSession session = request.getSession(); //call session

                int userID = user.getUserID();
                String username = user.getUsername();
                String userType = user.getUserType();
                String course = user.getCourse();

                if ("admin".equals(userType)) {
                    session.setAttribute("userID", userID);
                    session.setAttribute("username", username);
                    session.setAttribute("email", email);
                    session.setAttribute("course", course);

                    RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");// change this to be an admin page potentially
                    dispatcher.forward(request, response);
                    
                } else if ("user".equals(userType)) {
                    session.setAttribute("userID", userID);
                    session.setAttribute("username", username);
                    session.setAttribute("email", email);
                    session.setAttribute("course", course);

                    RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
                    dispatcher.forward(request, response);
                }
            }
        }
    }
}
