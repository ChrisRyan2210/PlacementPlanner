/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataAccess;

import Models.roleDiscussion;
import Utils.DBManager;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.ResultSet;
/**
 *
 * @author Chris
 */
public class roleDiscussionDAO {// This code is based off the DAO class from my 3rd year project which references Bill Emerson's 'Project Phase 1 & 2 Help Videos'.
    
    public ArrayList<roleDiscussion> getCommentsByRoleID(int roleID) {
        
        DBManager dm = new DBManager();
        Connection conn = dm.getConnection();
        
        int discussionID = 0;
        String comment = null;
        int userID = 0;
        String commentTime = null;
        String username = null;
        
        ArrayList<roleDiscussion> roleDiscussionData = new ArrayList();
        
        String query = String.format("SELECT * FROM role_discussion_data WHERE role_id = %d", roleID);
        
        try {
            PreparedStatement stmt = conn.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                
                discussionID = (rs.getInt(1));
                comment = (rs.getString(3));
                userID = (rs.getInt(4));
                commentTime = (rs.getString(5));
                username = (rs.getString(6));
                
                roleDiscussion comments = new roleDiscussion();
                
                comments.setRoleID(roleID);
                comments.setDiscussionID(discussionID);
                comments.setComment(comment);
                comments.setUserID(userID);
                comments.setCommentTime(commentTime);
                comments.setUsername(username);
                
                roleDiscussionData.add(comments);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return roleDiscussionData;
    }
    
    public void insertComment(roleDiscussion newComment) {
        
        DBManager dm = new DBManager();
        Connection conn = dm.getConnection();
        
        try {
            
            int roleID = newComment.getRoleID();
            String comment = newComment.getComment();
            int userID = newComment.getUserID();
            String commentTime = newComment.getCommentTime();
            String username = newComment.getUsername();
            
            String sql = "INSERT INTO role_discussion_data (role_id, discussion_comment, user_id, commentTime, username) VALUES (?, ?, ?, ?, ?)";
            
            try {
                
                PreparedStatement stmt = conn.prepareStatement(sql);
                stmt.setInt(1, roleID);
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
// Reference: SQL Inejection - ChatGPT3.5 https://chat.openai.com/share/beb2b9cf-a652-4257-b38c-59b5c298aabc