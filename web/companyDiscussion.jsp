<%-- 
    Document   : companyDiscussion
    Created on : 24 Sep 2023, 15:06:14
    Author     : Chris
--%>

<%@ page import="Models.companyDiscussion"%>
<%@ page import="java.util.ArrayList"%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Company Discussions</title>
        <link rel="stylesheet" href="companyDiscussion.css"> 
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"> <!-- this allows resising for screens--> 
    </head>
    
       <body style="background-color: #ebebeb;">

        <%
            ArrayList<companyDiscussion> comments = (ArrayList<companyDiscussion>) request.getAttribute("commentList");
            String companyID = request.getParameter("companyID");
            String username = (String) session.getAttribute("username");
            int sessionUser = (int) session.getAttribute("userID");
        %>
        <!-- the idea for the post comment box bootstrap was received here https://bbbootstrap.com/snippets/bootstrap-recent-comment-section-users-75685715 and changed to have a form action so I could post to a servlet-->
        <!-- ChatGTPv3.5 conversation to align thins correclty in the right spot using bootstrap class https://chat.openai.com/share/f54464fd-3b34-4785-9205-54753a07fecb-->
        <jsp:include page="header.jsp"/>
        <br>
        <br>
        <div class="container-fluid mt-100 mb-100" style="padding-left: 20%; padding-right: 20%;">
            <div class="row justify-content-center">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-footer">
                            <!-- formaction is my own but I used this ChatGTPv3.5 conversation to align it in the right spot using bootstrap class https://chat.openai.com/share/f54464fd-3b34-4785-9205-54753a07fecb-->
                            <form action="companyDiscussionServlet" method="post">
                                <%
                                    int userID = sessionUser;
                                %>
                                <div class="form-group">
                                    <textarea class="form-control" name="commentText" placeholder="Please sign in to write a comment..." rows="3"></textarea>
                                </div>
                                <input type="hidden" name="companyID" value="<%=companyID%>">
                                <input type="hidden" name="userID" value="<%= userID%>">
                                <button type="submit" class="btn btn-sm btn-info float-left">Post Comment</button>
                            </form>
                        </div>
                        <div class="card-body">
                            <h4 class="card-title">Recent Comments</h4>
                        </div>
                        <hr style="padding: 0; margin: 0;">
                        <div class="container-fluid">
                            <div class="comment-widgets m-b-20">
                                <%
                                    for (companyDiscussion comment : comments) {
                                %>
                                <div class="d-flex flex-row comment-row" >
                                    <div class="p-2"><span class="round"></span></div>
                                    <div class="comment-text w-100 " style="white-space: pre-line;"><!-- Format Paragraphs properly https://developer.mozilla.org/en-US/docs/Web/CSS/white-space -->                                       
                                        <h6 style="padding: 0; margin: 0;"><img src="Images/userIMG_1.png">   <%= comment.getUsername()%></h6> <!--  User icon by Icons8. https://icons8.com/icons/set/favicon-user -->            
                                        <p class="m-b-5 m-t-10"><%=comment.getComment()%></p>
                                        <p class="m-b-5 m-t-10"><small><%=comment.getCommentTime()%></small></p>
                                    </div>
                                </div>
                                <hr style="padding: 0; margin: 0;">
                                <%
                                    }
                                %>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
<!-- Reference: Ask SNB, 'Bootstrap 4 recent comment section from users', https://bbbootstrap.com/snippets/bootstrap-recent-comment-section-users-75685715 -->
<!-- Reference: ChatGTPv3.5, https://chat.openai.com/share/f54464fd-3b34-4785-9205-54753a07fecb-->
<!--  User icon by Icons8. https://icons8.com/icons/set/favicon-user -->
<!-- Format Paragraphs properly https://developer.mozilla.org/en-US/docs/Web/CSS/white-space -->