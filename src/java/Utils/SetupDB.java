/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Utils;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.InputStream;
import static java.lang.Double.parseDouble;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Chris
 */
public class SetupDB { // this code comes from Bill Emerson 'SampleProductViewer' project 

    Logger logger = Logger.getLogger(DBManager.class.getName());

    public void createTable() { // this method creates the table

        DBManager dbmgr = new DBManager(); //creates object of the DBManager Class to set up connection to DB
        Connection con = dbmgr.getConnection(); // creates the connection 
        InputStream inpStr = this.getClass().getResourceAsStream("createdb.sql"); // calls the createsql file and adds it to the inputstream variable
        executeSqlScript(con, inpStr); // executes the script
    }

    public void insertSetupData() { // same as above but for insertingdata file.

        DBManager dbmgr = new DBManager();
        Connection con = dbmgr.getConnection();
        InputStream inpStr = this.getClass().getResourceAsStream("insertdata.sql");
        executeSqlScript(con, inpStr); // executes the script
    }

    public void executeSqlScript(Connection conn, InputStream inputStream) { // this method is used to ensure SQL scripts are run one at a time. Mainly as a way to make sure 
        // that the SQL to create table is run before the SQL to input data.
        String delimiter = ";";

        Scanner scanner;
        scanner = new Scanner(inputStream).useDelimiter(delimiter);

        //Loop through the SQL file statements
        Statement currentStatement = null;
        while (scanner.hasNext()) {

            //get that sql statement
            String rawStatement = scanner.next();
            try {
                currentStatement = conn.createStatement();
                currentStatement.execute(rawStatement);
            } catch (SQLException e) {
                logger.log(Level.SEVERE, null, e);// logger stores the information incase of this event happening 
            } finally {
                //release the resources
                if (currentStatement != null) {
                    try {
                        currentStatement.close();
                    } catch (SQLException e) {
                        logger.log(Level.SEVERE, null, e);// logger stores the information incase of this event happening 
                    }
                }
                currentStatement = null;
            }
        }

    }
}
// Reference: Bill Emerson, 'SampleProductViewer' (Jan, 2023)