<%-- 
    Document   : Companies
    Created on : 19 Sep 2023, 18:07:19
    Author     : Chris
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Models.Company"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
    <head>    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"> <!-- this allows resizing for screens--> 
        <title>Companies</title>
        <link rel="stylesheet" href="companies.css">  
        <!-- this is for bootstrap css--> 
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"> 
    </head>
    <body>

        <!-- HTML/CSS for this pages was retrieved from Bootstrap template at this link https://getbootstrap.com/docs/4.0/examples/album/# . The java code is mine. -->

        <%
            // get the company info from the servlets
            HttpSession companySession = request.getSession(false);
            ArrayList<Company> companies = (ArrayList<Company>) request.getAttribute("companies");
            ArrayList<String> industryList = (ArrayList<String>) companySession.getAttribute("industryList");
        %>

        <jsp:include page="header.jsp"/>

        <header>
            <div class="collapse bg-dark" id="navbarHeader">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-md-7 py-4">
                            <h4 class="text-white">About</h4>
                            <p class="text-muted">On this page you can find important information about some of the companies that students have previously completed their work placement at. You can refine your selection by filtering using the buttons below or see what some of the students had to say about their experiences by clicking on the "Discussions" button. </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="navbar navbar-dark bg-dark box-shadow">
                <div class="container d-flex justify-content-between">
                    <a href="#" class="navbar-brand d-flex align-items-center">
                        <strong>Companies</strong>
                    </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarHeader" aria-controls="navbarHeader" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                </div>
            </div>
        </header>

        <main role="main">

            <section class="jumbotron text-center">
                <div class="container">
                    <h1 class="jumbotron-heading">Industries</h1>
                    <p class="lead text-muted">Interested in a specific industry? Use the buttons below to refine your search!</p>
                    <!--https://chat.openai.com/share/f54464fd-3b34-4785-9205-54753a07fecb used this chatGPT conversation to help make the buttons look nicer -->
                    <div class="container">
                        <div class="d-flex justify-content-center mb-4"> <!-- this center aligns the buttons -->
                            <div class ="btn-group" role="group">
                                <%           
                                    for (String industry : industryList) {
                                %>
                                <a class="btn bbtn btn-outline-primary mx-2 my-2 industryButtons" href="CompaniesServlet?industry=<%= industry%>"><%=industry%></a>
                                <%
                                    }
                                %>
                                <a class="btn btn-outline-primary mx-2 my-2 industryButtons" href="CompaniesServlet">All Companies</a>
                            </div>
                        </div>
                    </div>

                </div>
            </section>

            <div class="container ">
                <div class="row">
                    <%
                    for (Company company : companies) {
                    %>
                    <div class="col-md-4">
                        <div class="card mb-4 box-shadow">
                            <img class="card-img-top" src="Images/<%= company.getImageLocation()%>" alt="Card image cap" width="450" height="200">
                            <div class="card-body">
                                <h2 class="card-text"><%=company.getCompanyName()%></h2>
                                <a href="#" class="text-dark" data-toggle="collapse" data-target="#companyDescription<%=company.getCompanyID()%>"> <!-- collapsable https://getbootstrap.com/docs/4.0/components/collapse/ -->
                                    Read Description
                                </a>
                                    
                                <div id="companyDescription<%=company.getCompanyID()%>" class="collapse">
                                    <p class="card-text"><%=company.getCompanyDescription()%></p>
                                </div>
                                <br>
                                <p class="card-text">2023 Salary: €<%=company.getSalary() - 2000%>0 - <%=company.getSalary() + 2000%>0</p>
                                <div class="btn-group">
                                    <a href="companyDiscussionServlet?companyID=<%= company.getCompanyID()%>&method=GET" class="btn btn-sm btn-outline-secondary">Discussion Page</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%
                    }
                    %>
                </div>
            </div>
        </main>

        <jsp:include page="footer.jsp"/>

        <!-- these 2 for this page specifically--> 
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
        <!-- these go at bottom always. Used for bootstrap--> 
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
</html>

<!-- Reference: GetBootstrap.com (Sep 2023), https://getbootstrap.com/docs/4.0/examples/album/#
Reference: ChatGTPv3.5, https://chat.openai.com/share/f54464fd-3b34-4785-9205-54753a07fecb 
Reference Bootstrap - Collapsable: https://getbootstrap.com/docs/4.0/components/collapse/-->