/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

import DataAccess.roleDiscussionDAO;
import Models.roleDiscussion;
import java.util.ArrayList;

/**
 *
 * @author Chris
 */
public class roleDiscussionService {
    
    public ArrayList<roleDiscussion> getCommentsByRoleID(int roleID) {
        
        roleDiscussionDAO commentList = new roleDiscussionDAO();
        return commentList.getCommentsByRoleID(roleID);
        
    }
    
    public void insertNewComment(roleDiscussion newComment) {
        
        roleDiscussionDAO roleComment = new roleDiscussionDAO();
        roleComment.insertComment(newComment);
        
    }
    
}
