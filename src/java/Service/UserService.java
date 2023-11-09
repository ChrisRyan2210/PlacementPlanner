/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

import DataAccess.UserDAO;
import Models.User;

/**
 *
 * @author Chris
 */
public class UserService {

    public User loginUser(String email, String password) { //proud of this one

        UserDAO userDAO = new UserDAO();// creat object of dao class
        User user = userDAO.getUserByEmail(email); // create user object and asign value of method(email). This returns all attributes (id, email, password, username, type)
        if (user == null) { // if the user doesnt exist (via email check)
            System.out.println("TOTM: user not found");// testing
            return null;
        } else { // so if the user is found (via email). Need to check if the password is correct
            if (user.getPassword().equals(password)) { // if user object password (from DAO) = password from method param are equal, return user.
                System.out.println("TOTM: User is found");// testing
                return user;
            }
        }
        return null;
    }

    public User checkIfUserExists(String email) {

        UserDAO userDAO = new UserDAO();
        User user = userDAO.getUserByEmail(email);
        return user;
    }

    public User checkIfUserExistsByUsername(String userName) {

        UserDAO userDAO = new UserDAO();
        User user = userDAO.getUserByUsername(userName);
        return user;
    }

    public void insertUser(User newUser) {

        UserDAO user = new UserDAO();
        user.insertUser(newUser);
    }
}
