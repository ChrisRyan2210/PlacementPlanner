/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

import DataAccess.companyDiscussionDAO;
import Models.companyDiscussion;
import java.util.ArrayList;

/**
 *
 * @author Chris
 */
public class companyDiscussionService {
    
    public ArrayList<companyDiscussion> getCommentsByCompanyID(int companyID) {
        
        companyDiscussionDAO commentList = new companyDiscussionDAO();
        return commentList.getCommentsByCompanyID(companyID);
    }
    
    public void insertNewComment(companyDiscussion newComment) {
        
        companyDiscussionDAO company = new companyDiscussionDAO();
        company.insertComment(newComment);
        
    }
}
