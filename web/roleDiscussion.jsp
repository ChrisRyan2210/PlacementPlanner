<%-- 
    Document   : roleDiscussion
    Created on : 2 Oct 2023, 13:07:27
    Author     : Chris
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="Models.roleDiscussion"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Role Discussions</title>
        <link rel="stylesheet" href="companyDiscussion.css"> 
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"> <!-- this allows resising for screens--> 
    </head>
    <body style="background-color: #ebebeb;">

        <%
            ArrayList<roleDiscussion> comments = (ArrayList<roleDiscussion>) request.getAttribute("commentList");
            String roleID = request.getParameter("roleID");
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
                            <form action="roleDiscussionServlet" method="post">
                                <%
                                    int userID = sessionUser; //  change this to dynamic when user class is set up 
                                %>
                                <div class="form-group">
                                    <textarea class="form-control" name="commentText" placeholder="Write your comment here..." rows="3"></textarea>
                                </div>
                                <input type="hidden" name="roleID" value="<%=roleID%>">
                                <input type="hidden" name="userID" value="<%= userID%>">
                                <button type="submit" class="btn btn-sm btn-info float-left">Post Comment</button>
                            </form>
                        </div>
                        <div class="card-body">
                            <h4 class="card-title">Recent Comments</h4>
                        </div>
                        <hr>
                        <div class="container-fluid">
                            <div class="comment-widgets m-b-20">
                                <%
                                    for (roleDiscussion comment : comments) {
                                %>
                                <div class="d-flex flex-row comment-row">
                                    <div class="p-2"><span class="round"></span></div>
                                    <div style="white-space: pre-line;" class="comment-text w-100">
                                        <h6 style="padding: 0; margin: 0;"><img src="Images/userIMG_1.png">   <%= comment.getUsername()%></h6> <!--  User icon by Icons8. https://icons8.com/icons/set/favicon-user -->
                                        <p class="m-b-5 m-t-10"><%=comment.getComment()%></p>
                                        <p class="m-b-5 m-t-10"><small><%=comment.getCommentTime()%></small></p>
                                    </div>
                                </div>
                                <hr>
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
