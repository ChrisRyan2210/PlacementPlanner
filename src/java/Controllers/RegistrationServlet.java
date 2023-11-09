/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Models.User;
import Service.UserService;
import javax.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 *
 * @author Chris
 */
@WebServlet(name = "RegistrationServlet", urlPatterns = {"/RegistrationServlet"})
public class RegistrationServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {

            String userName = (String) request.getParameter("userName");
            String email = (String) request.getParameter("email");
            String course = (String) request.getParameter("course");
            String password = (String) request.getParameter("password");
            String repeatPassword = (String) request.getParameter("repeatPassword");
            String emailRegex = "\\d{9}@umail\\.ucc\\.ie"; //regex referenced below

            System.out.println(repeatPassword);//TESTING
            //The below two links are how I learned regex
            //https://www.geeksforgeeks.org/check-email-address-valid-not-java/
            //https://www3.ntu.edu.sg/home/ehchua/programming/howto/Regexe.html#:~:text=A%20Regular%20Expression%20(or%20Regex,strings%20and%20rejects%20the%20rest.
            Pattern pattern = Pattern.compile(emailRegex); //compile the regex pattern 
            Matcher matcher = pattern.matcher(email); //matches the email enterred

            boolean isWrong = false;

            if (userName == null || userName.isEmpty() || userName.length() < 1) { //check firstname for 
                request.setAttribute("usernameMessage", "Please enter a valid  username (At least 1 character)");
                isWrong = true;
            }

            if (email == null || email.isEmpty()) {
                request.setAttribute("emailMessage", "Please enter an email address.");
                isWrong = true;
            } else if (!matcher.matches()) {
                request.setAttribute("emailMessage", "Please enter a valid UCC umail address.");
                isWrong = true;
            }

            if (course == null || course.isEmpty()) { //check lastname for  validation
                request.setAttribute("courseMessage", "Please select your course");
                isWrong = true;
            }

            if (password == null || password.isEmpty() || password.length() < 8) {
                request.setAttribute("passwordMessage", "Passwords must be 8 characters long");
                isWrong = true;
            }

            if (repeatPassword == null ? password != null : !repeatPassword.equals(password)) {
                request.setAttribute("repeatPasswordMessage", "Passwords do not match");
                isWrong = true;
            }

            if (isWrong) {
                RequestDispatcher dispatcher = request.getRequestDispatcher("register.jsp");
                dispatcher.forward(request, response);
            } else {

                UserService uServ = new UserService();
                //Check if user already exists with this email or username 

                User checkUser = uServ.checkIfUserExists(email);
                System.out.print(email + "I hate this");//testing
                if (checkUser == null) { // if the user doesnt exists. THIS NOW WORKS AS OF 20/10/2023

                    User checkUserByUsername = uServ.checkIfUserExistsByUsername(userName);//now check for username

                    if (checkUserByUsername == null) {

                        User newUser = new User();

                        newUser.setEmail(email);
                        newUser.setPassword(password);
                        newUser.setUsername(userName);
                        newUser.setUserType("user");
                        newUser.setCourse(course);

                        uServ.insertUser(newUser);

                        request.setAttribute("successfulRegister", "You have registered successfully! Please sign-in now.");
                        RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
                        dispatcher.forward(request, response);

                    } else {
                        request.setAttribute("userExists", "A user with this email or username username already exists");
                        RequestDispatcher dispatcher = request.getRequestDispatcher("register.jsp");
                        dispatcher.forward(request, response);
                    }
                } else {

                    request.setAttribute("userExists", "A user with this email or username already exists");
                    RequestDispatcher dispatcher = request.getRequestDispatcher("register.jsp");
                    dispatcher.forward(request, response);

                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

}
//Regular Expression Tutorial, https://www3.ntu.edu.sg/home/ehchua/programming/howto/Regexe.html#:~:text=A%20Regular%20Expression%20(or%20Regex,strings%20and%20rejects%20the%20rest.
//GeeksforGeeks. Check email address valid not Java, https://www.geeksforgeeks.org/check-email-address-valid-not-java/
