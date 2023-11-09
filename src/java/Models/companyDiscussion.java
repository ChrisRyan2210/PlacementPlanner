/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

/**
 *
 * @author Chris
 */
public class companyDiscussion {

    private int discussionID;
    private int companyID;
    private String comment;
    private int userID;
    private String commentTime;
    private String username;

    public companyDiscussion(int discussionID, int companyID, String comment, int userID, String commentTime) {
        this.discussionID = discussionID;
        this.companyID = companyID;
        this.comment = comment;
        this.userID = userID;
        this.commentTime = commentTime;
    }
        
    public companyDiscussion() {

    }

    public int getDiscussionID() {
        return discussionID;
    }

    public void setDiscussionID(int discussionID) {
        this.discussionID = discussionID;
    }

    public int getCompanyID() {
        return companyID;
    }

    public void setCompanyID(int companyID) {
        this.companyID = companyID;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public String getCommentTime() {
        return commentTime;
    }

    public void setCommentTime(String commentTime) {
        this.commentTime = commentTime;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

   
}
