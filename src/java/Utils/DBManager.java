/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Chris
 */
public class DBManager { // this code comes from Bill Emerson 'SampleProductViewer' project 
                         // used in a conversation with ChatGPT which can be found here https://chat.openai.com/c/412988d0-bead-413a-800d-4a20b5f62534 to learn how to 
                         // change it to PostGre DB.
    // this class is used to define the connection strings to the Database. This will be a local DB first. Change to Heroku Postrge once at go-live
    String url = "jdbc:postgresql://localhost:5432/placementplanner";
    String user ="postgres";
    String password = "admin";

    Logger logger = Logger.getLogger(DBManager.class.getName()); // declares the logger than will be used throughout the class to catch and log errors

    public DBManager() {

        try {
            Class.forName("org.postgresql.Driver"); // this loads the driver class for the postgre DB. This was same as Bill Emersons from 3rd year but changed to use a postgres DB
        } catch (ClassNotFoundException ex) {
            logger.log(Level.SEVERE, null, ex);
        }
    }

    public Connection getConnection() { // this method is used to create the connection with the database and
                                        // is called upon in the SetupDB class 
        Connection dbConnection = null;
        
        
        try {
            dbConnection = DriverManager.getConnection(url, user, password);// uses the variables outlined at top of page to direct to the proper db
        } catch (SQLException e) {
            logger.log(Level.SEVERE, null, e.getStackTrace()); // logs an errors if exception hadler catches something and returns it in console
        }
        return dbConnection;
    }

}
// Reference: Bill Emerson, 'SampleProductViewer' (Jan, 2023)