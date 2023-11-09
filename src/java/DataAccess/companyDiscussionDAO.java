/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataAccess;

import Models.companyDiscussion;
import Utils.DBManager;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Set;

/**
 *
 * @author Chris
 */
public class companyDiscussionDAO {

// This code is based off the DAO class from my 3rd year project which references Bill Emerson's 'Project Phase 1 & 2 Help Videos'.
    public ArrayList<companyDiscussion> getCommentsByCompanyID(int companyID) {

        DBManager dm = new DBManager(); // creates object of DBManager class
        Connection con = dm.getConnection(); //calls connection method using built in connection class/methods
        //below we are creating local variables for this method
        int discussionID = 0;
        String comment = null;
        int userID = 0;
        String commentTime = null;
        String username = null;

        ArrayList<companyDiscussion> companyDiscussionData = new ArrayList();

        String query = String.format("SELECT * FROM company_discussion_data WHERE company_id=%d", companyID);

        try {
            PreparedStatement stmt = con.prepareStatement(query);//same as above method
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                discussionID = (rs.getInt(1));
                comment = (rs.getString(3));
                userID = (rs.getInt(4));
                commentTime = (rs.getString(5));
                username = (rs.getString(6));

                companyDiscussion comments = new companyDiscussion();

                comments.setDiscussionID(discussionID);
                comments.setCompanyID(companyID);
                comments.setComment(comment);
                comments.setUserID(userID);
                comments.setCommentTime(commentTime);
                comments.setUsername(username);

                companyDiscussionData.add(comments);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return companyDiscussionData;
    }

    public void insertComment(companyDiscussion newComment) { //this is a hybrid of the code from my 3rd year project & the chatGPT convo seen here https://chat.openai.com/share/beb2b9cf-a652-4257-b38c-59b5c298aabc

        DBManager dbmgr = new DBManager();
        Connection conn = dbmgr.getConnection();

        try {

            int companyID = newComment.getCompanyID();
            String comment = newComment.getComment();
            int userID = newComment.getUserID();
            String commentTime = newComment.getCommentTime();
            String username = newComment.getUsername();

            String sql = "INSERT INTO company_discussion_data (company_id, discussion_comment, user_id, commentTime, username) VALUES (?, ?, ?, ?, ?)";

            try {

                PreparedStatement stmt = conn.prepareStatement(sql); //prepared statement good for safeguarding against sql injection
                stmt.setInt(1, companyID);
                stmt.setString(2, comment);
                stmt.setInt(3, userID);
                stmt.setString(4, commentTime);
                stmt.setString(5, username);
                stmt.executeUpdate();
                stmt.close();

            } catch (SQLException e) {
                e.printStackTrace();
            }

            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
// Reference: Bill Emerson, 'Project Phase 1 & 2 Help Videos' (Jan 2023), https://ucc.instructure.com/courses/51671/modules/items/1678366
// Reference: ChatGPT3.5 https://chat.openai.com/share/beb2b9cf-a652-4257-b38c-59b5c298aabc