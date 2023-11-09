<%-- 
    Document   : roles
    Created on : 1 Oct 2023, 12:54:10
    Author     : Chris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Models.Role"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"> <!-- this allows resizing for screens--> 
        <link rel="stylesheet" href="companyDiscussion.css">
        <title>Roles</title>
    </head>
    <body>

        <%
            HttpSession roleSession = request.getSession(false);
            ArrayList<Role> roles = (ArrayList<Role>) request.getAttribute("roles");
            ArrayList<String> industryList = (ArrayList<String>) roleSession.getAttribute("industryList");     
        %>

        <jsp:include page="header.jsp"/>
        <header>                                                 
            <div class="collapse bg-dark" id="navbarHeader">  <!-- HTML/CSS for this header section was retrieved from Bootstrap template at this link https://getbootstrap.com/docs/4.0/examples/album/# . The java code is mine. -->
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-md-7 py-4">
                            <h4 class="text-white">About</h4>
                            <p class="text-muted">On this page you can find important information about some of the roles that previous students or interns have worked in. You can refine your selection by filtering using the buttons below or see what some of the students had to say about their experiences by clicking on the "Discussions" button. </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="navbar navbar-dark bg-dark box-shadow">
                <div class="container d-flex justify-content-between">
                    <a href="#" class="navbar-brand d-flex align-items-center">
                        <strong>Roles</strong>
                    </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarHeader" aria-controls="navbarHeader" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                </div>
            </div>
        </header>

        <section class="jumbotron text-center">
            <div class="container">
                <h1 class="jumbotron-heading">Roles/Industries</h1>
                <p class="lead text-muted">Interested in a specific role or industry? Use the buttons below to refine your search!</p>
                <!--https://chat.openai.com/share/f54464fd-3b34-4785-9205-54753a07fecb used this chatGPT conversation to help make the buttons look nicer -->
                <div class="container">
                    <div class="d-flex justify-content-center mb-4"> <!-- this center aligns the buttons -->
                        <div class ="btn-group" role="group">
                            <%           
                                for (String industry : industryList) {
                            %>
                            <a class="btn bbtn btn-outline-primary mx-2 my-2 industryButtons" href="rolesServlet?industry=<%= industry%>"><%=industry%></a>
                            <%
                                }
                            %>
                            <a class="btn btn-outline-primary mx-2 my-2 industryButtons" href="rolesServlet">All Roles</a>
                        </div>
                    </div>
                </div>

            </div>
        </section>



        <div class="container-fluid mt-100 mb-100">
            <div class="row justify-content-center">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-footer">
                        </div>
                        <div class="card-body">
                            <h4 class="card-title">Role List</h4>
                        </div>
                        <hr>
                        <%
                                for (Role role : roles) {
                        %>
                        <div class="container-fluid">
                            <div class="comment-widgets m-b-20">

                                <div class="d-flex flex-row comment-row">
                                    <div class="p-2"><span class="round"></span></div>
                                    <div class="comment-text w-100">
                                        <h5><%= role.getRoleName()%></h5>
                                        <div class="comment-footer">
                                        </div>
                                        <p class="m-b-5 m-t-10"><%= role.getRoleDescription()%></p>
                                        <p class="card-text">2023 Salary: €<%=role.getSalary() - 2500%>0 - <%= role.getSalary() + 2500%>0</p>
                                        <div class="btn-group">
                                            <a href="roleDiscussionServlet?roleID=<%= role.getRoleID()%>&method=GET" class="btn btn-sm btn-outline-secondary">Discussion Page</a>
                                        </div>
                                    </div>
                                </div>
                                <hr>

                            </div>
                        </div>
                        <%
                            }
                        %>
                    </div>
                </div>
            </div>
        </div>

        <jsp:include page="footer.jsp"/>

        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
        <!-- these go at bottom for dashboard pages. Used for bootstrap--> 
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
</html>
<!-- Reference: Ask SNB, 'Bootstrap 4 recent comment section from users', https://bbbootstrap.com/snippets/bootstrap-recent-comment-section-users-75685715 -->
<!-- Reference: ChatGTPv3.5, https://chat.openai.com/share/f54464fd-3b34-4785-9205-54753a07fecb-->