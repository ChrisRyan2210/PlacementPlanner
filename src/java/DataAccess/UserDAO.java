/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataAccess;

import Models.User;
import Utils.DBManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Chris
 */
public class UserDAO {
    // This code is based off the DAO class from my 3rd year project which references Bill Emerson's 'Project Phase 1 & 2 Help Videos'.

    public User getUserByEmail(String email) { // using this method to check if the user account exists during login 

        DBManager dbmgr = new DBManager();
        Connection conn = dbmgr.getConnection();

        int userID = 0;
        String password = null;
        String username = null;
        String userType = null;
        String course = null;

        String query = "SELECT * FROM user_data WHERE email =?"; // https://stackoverflow.com/questions/4333015/does-the-preparedstatement-avoid-sql-injection this is where I learned how to stop SQL injection

        try {
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setString(1, email);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                userID = (rs.getInt(1));
                password = (rs.getString(3));
                username = (rs.getString(4));
                userType = (rs.getString(5));
                course = (rs.getString(6));

                User tempUser = new User();

                tempUser.setUserID(userID);
                tempUser.setEmail(email);
                tempUser.setPassword(password);
                tempUser.setUsername(username);
                tempUser.setUserType(userType);
                tempUser.setCourse(course);

                return tempUser;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null; //if user is not found
    }
    
     public User getUserByUsername(String username) { // using this method to check if the user account exists during login 

        DBManager dbmgr = new DBManager();
        Connection conn = dbmgr.getConnection();

        int userID = 0;
        String email = null;
        String password = null;
        String userType = null;
        String course = null;

        String query = "SELECT * FROM user_data WHERE username =?"; // https://stackoverflow.com/questions/4333015/does-the-preparedstatement-avoid-sql-injection this is where I learned how to stop SQL injection

        try {
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setString(1, username);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                userID = (rs.getInt(1));
                email = (rs.getString(2));
                password = (rs.getString(3));
                userType = (rs.getString(5));
                course = (rs.getString(6));

                User tempUser = new User();

                tempUser.setUserID(userID);
                tempUser.setEmail(email);
                tempUser.setPassword(password);
                tempUser.setUsername(username);
                tempUser.setUserType(userType);
                tempUser.setCourse(course);

                return tempUser;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null; //if user is not found
    }

    public void insertUser(User newUser) { //this method was adapted from the same Bill video but mixed with the method seen in companyDiscussionDAO.java

        DBManager dbmgr = new DBManager();
        Connection conn = dbmgr.getConnection();

        PreparedStatement stmt = null;

        try {
            String sql = "INSERT INTO user_data (email, password, username, user_type, course) " + "VALUES (?, ?, ?, ?, ?)";
            stmt = conn.prepareStatement(sql);

            stmt.setString(1, newUser.getEmail());
            stmt.setString(2, newUser.getPassword());
            stmt.setString(3, newUser.getUsername());
            stmt.setString(4, newUser.getUserType());
            stmt.setString(5, newUser.getCourse());

            stmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        } finally { //just makes sure the block is closed
            try {
                if (stmt != null) {
                    stmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
// Reference: Bill Emerson, 'Project Phase 1 & 2 Help Videos' (Jan 2023), https://ucc.instructure.com/courses/51671/modules/items/1678366
//StackOverflow, SQLInjection. https://stackoverflow.com/questions/4333015/does-the-preparedstatement-avoid-sql-injection
