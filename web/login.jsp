<%-- 
    Document   : login
    Created on : 13 Oct 2023, 16:39:39
    Author     : Chris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <head>
        <!-- this html was found at https://freefrontend.com/bootstrap-login-forms/. Created by 'Bootdey' on October 8th 2017-->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Login</title>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="login.css">
    </head>
    <body>

        <%
            String loginMessage = (String) request.getAttribute("loginMessage");
            String successMessage = (String) request.getAttribute("successfulRegister");
            String notFound = (String) request.getAttribute("incorrectLogin");
        %>
        <jsp:include page="header.jsp"/>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br> <br>
        <br>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <div class="card-group mb-0">
                        <div class="card p-4">
                            <div class="card-body">
                                <h1>Login</h1>

                                <p class="text-muted">Sign In to your account</p>
                                <form action ="LoginServlet" method="Post">
                                    <div class="input-group mb-3">
                                        <input type="text" name="email" class="form-control" placeholder="Email">
                                    </div>
                                    <div class="input-group mb-4">
                                        <input type="password" name="password" class="form-control" placeholder="Password">
                                    </div>
                                    <% 
                                    if (loginMessage != null) {
                                    %>
                                    <p class="text-danger"><%= loginMessage %></p>
                                    <%
                                        }
                                    %>
                                     <% 
                                    if (notFound != null) {
                                    %>
                                    <p class="text-danger"><%= notFound %></p>
                                    <%
                                        }
                                    %>
                                    <% 
                                     if (successMessage != null) {
                                    %>
                                    <p class="text-success"><%= successMessage %></p>
                                    <%
                                        }
                                    %>

                                    <div class="row">
                                        <div class="col-6">
                                            <button type="submit" class="btn btn-primary px-4">Login</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="card text-white bg-primary py-5 d-md-down-none" style="width:44%">
                            <div class="card-body text-center">
                                <div>
                                    <h2>Sign up</h2>
                                    <p>Haven't got an account? Sign up now to join out ever growing community and help kick-start your career!</p>
                                    <a href="register.jsp" class="btn btn-primary active mt-3">Register Now!</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>

<!-- Vinay Kumar (Nov 2021), https://freefrontend.com/bootstrap-login-forms/ -->
<!-- How to make writing red for login message: https://getbootstrap.com/docs/4.0/utilities/colors/ -->