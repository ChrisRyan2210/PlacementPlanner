<%-- 
    Document   : header
    Created on : 19 Sep 2023, 18:51:43
    Author     : Chris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Navbar</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://fonts.googleapis.com/css?family=Raleway:400,500,500i,700,800i" rel="stylesheet">
    </head>
    <body>

        <!-- Reference: Designer: Priyanshu28696. Obtained at https://www.mockplus.com/blog/post/bootstrap-navbar-template on 19/09/2023 -->
        
        <%
            String email = (String) session.getAttribute("email");
        %>

        <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #f8f9fa;">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
                <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">About</a>
                    </li>
                    <li class="nav-item dropdown dmenu">
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Contribute</a>
                    </li>
                    <%
                        if (email == null) {
                    %>
                    <li class="nav-item">
                        <a class="nav-link" href="login.jsp">Sign In/Register</a>
                    </li>
                    <%} else {%>
                    <li class="nav-item">
                        <a class="nav-link" href="LogoutServlet">Sign Out</a>
                    </li>
                    <%
                        }
                    %>
                </ul>
                <div class="Title "><b>PlacementPlanner</b></div>
            </div>
        </nav>
    </body>
</html>
<!-- Reference: Designer: Priyanshu28696. Obtained at https://www.mockplus.com/blog/post/bootstrap-navbar-template on 19/09/2023 -->