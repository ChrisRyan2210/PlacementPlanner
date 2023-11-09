/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Models.roleDiscussion;
import Service.roleDiscussionService;
import javax.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;

/**
 *
 * @author Chris
 */
@WebServlet(name = "roleDiscussionServlet", urlPatterns = {"/roleDiscussionServlet"})// this methods code is adapted from my own code from my 3rd year project. 
public class roleDiscussionServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String roleIDString = request.getParameter("roleID"); // getting from jsp as String

        if (roleIDString != null && !roleIDString.isEmpty()) {
            System.out.println("checker");//TESTING
            try {

                int roleID = Integer.parseInt(request.getParameter("roleID"));// could change this to use session ID but leave it for now 22/10//2023
                roleDiscussionService rServ = new roleDiscussionService();
                
                ArrayList<roleDiscussion> comments;

                comments = rServ.getCommentsByRoleID(roleID);

                request.setAttribute("commentList", comments);
                request.setAttribute("roleID", roleID);

                RequestDispatcher dispatcher = request.getRequestDispatcher("roleDiscussion.jsp");
                dispatcher.forward(request, response);

            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {

            RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");// if error

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)// this is my own new code, mix between the getMethod above and code used in the DAO 
            throws ServletException, IOException {
        try {
            String roleIDParam = request.getParameter("roleID");
            String userIDParam = request.getParameter("userID");
            LocalDateTime currentTime = LocalDateTime.now();// timestamp variable and formatter below. Found here https://stackoverflow.com/questions/22463062/how-can-i-parse-format-dates-with-localdatetime-java-8
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
            String commentTime = currentTime.format(formatter);// formats the time as string to enter to DB

            if (roleIDParam != null && userIDParam != null) {
                int roleID = Integer.parseInt(roleIDParam);
                int userID = Integer.parseInt(userIDParam);
               
                HttpSession session = request.getSession(false);// calls the session 
                
                String username = (String) session.getAttribute("username");
                String comment = request.getParameter("commentText");

                roleDiscussion newComment = new roleDiscussion();
                newComment.setRoleID(roleID);
                newComment.setComment(comment);
                newComment.setUserID(userID);
                newComment.setCommentTime(commentTime);
                newComment.setUsername(username);

                roleDiscussionService rServ = new roleDiscussionService();
                rServ.insertNewComment(newComment);

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
