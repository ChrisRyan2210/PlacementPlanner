/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Utils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

/**
 *
 * @author Chris
 */
public class DBCreationRunner extends HttpServlet {// this code comes from Bill Emerson 'SampleProductViewer' project 
                                                    // it is mapped to run on start up in the xml file. 
    @Override
    public void init() throws ServletException { 
        super.init(); // initialises the attributes of the HttpServlet class type
        SetupDB sdb = new SetupDB(); // creates object of other class
        sdb.createTable(); // calls on the method from the SetupDB class
        sdb.insertSetupData(); // same as above
    }
}
// Reference: Bill Emerson, 'SampleProductViewer' (Jan, 2023)