/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Models.companyDiscussion;
import Service.companyDiscussionService;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.Integer.parseInt;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Locale;

/**
 *
 * @author Chris
 */
@WebServlet(name = "companyDiscussionServlet", urlPatterns = {"/companyDiscussionServlet"})
public class companyDiscussionServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)// this methods code is adapted from my own code from my 3rd year project. 
            throws ServletException, IOException {

        String companyIDString = request.getParameter("companyID");

        if (companyIDString != null && !companyIDString.isEmpty()) {
            System.out.println("This is working");
            try {
                int companyID = Integer.parseInt(request.getParameter("companyID")); //declare variable and get the input from the "Discussion" button 
                companyDiscussionService cdServ = new companyDiscussionService();

                ArrayList<companyDiscussion> comments;

                comments = cdServ.getCommentsByCompanyID(companyID);

                request.setAttribute("commentList", comments);
                request.setAttribute("companyID", companyID);

                RequestDispatcher dispatcher = request.getRequestDispatcher("companyDiscussion.jsp");
                dispatcher.forward(request, response);

            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {

            RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");

        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)// this is my own new code, mix between the getMethod above and code used in the DAO 
            throws ServletException, IOException {
        try {
            String companyIDParam = request.getParameter("companyID");
            String userIDParam = request.getParameter("userID");
            System.out.println("userIDParam: " + userIDParam);//testing
            LocalDateTime currentTime = LocalDateTime.now();// timestamp variable and formatter below. Found here https://stackoverflow.com/questions/22463062/how-can-i-parse-format-dates-with-localdatetime-java-8
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
            String commentTime = currentTime.format(formatter);// formats the time as string to enter to DB
            
            if (companyIDParam != null && userIDParam != null) {
                int companyID = Integer.parseInt(companyIDParam);
                int userID = Integer.parseInt(userIDParam);

                HttpSession session = request.getSession(false);// calls the session 
                String username = (String) session.getAttribute("username");
                // make sure these match with the jsp arguments 
                String comment = request.getParameter("commentText");

                companyDiscussion newComment = new companyDiscussion();
                newComment.setCompanyID(companyID);
                newComment.setComment(comment);
                newComment.setUserID(userID);
                newComment.setCommentTime(commentTime);
                newComment.setUsername(username);

                companyDiscussionService cServ = new companyDiscussionService();
                cServ.insertNewComment(newComment);

                // If the comment is successfully inserted, return a success response.
                doGet(request, response);
            } else {
                response.sendRedirect("index.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
// Reference: Chris Ryan 'FlowerShop' project (Feb, 2023).
// Reference: Stackoverflow - Timestamp enter. https://stackoverflow.com/questions/22463062/how-can-i-parse-format-dates-with-localdatetime-java-8