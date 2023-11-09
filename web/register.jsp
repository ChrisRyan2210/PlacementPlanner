<%-- 
    Document   : register
    Created on : 13 Oct 2023, 18:18:14
    Author     : Chris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head> <!-- Bootstrap template received here https://mdbootstrap.com/docs/standard/extended/registration/ -->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Page</title>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="login.css">
    </head>

    <style>
        /* Style the select element to match the other input boxes. This comes from ChatGPT3.5 conversation here https://chat.openai.com/share/3b8a0028-46ba-4d4e-942d-35632330cb3a */
        select.form-select {
            width: 100%;
            padding: 0.375rem 0.75rem;
            font-size: 1rem;
            line-height: 1.5;
            border: 1px solid #ced4da;
            border-radius: 0.25rem;
            background-color: #fff;
            color: grey;
        }
    </style>
    <body>

        <%
             String usernameMessage = (String) request.getAttribute("usernameMessage");
             String emailMessage = (String) request.getAttribute("emailMessage");
             String courseMessage = (String) request.getAttribute("courseMessage");
             String passwordMessage = (String) request.getAttribute("passwordMessage");
             String repeatPasswordMessage = (String) request.getAttribute("repeatPasswordMessage");
             String exists = (String) request.getAttribute("userExists");
        %>
        <jsp:include page="header.jsp"/>


        <section class="vh-100" style="background-color: #eee;">
            <br>
            <br>
            <br>
            <br>
            <div class="container h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-lg-12 col-xl-11">
                        <div class="card text-black" style="border-radius: 25px;">
                            <div class="card-body p-md-5">
                                <div class="row justify-content-center">
                                    <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

                                        <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Register</p>

                                        <form action="RegistrationServlet" method="post" class="mx-1 mx-md-4"> <!-- TODO: input validation (doing on Servlet side/maybe use JS here to check client side-->

                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <div class="form-outline flex-fill mb-0">
                                                    <input name="userName" type="text" id="form3Example1c" class="form-control" placeholder="Enter a Username"/>
                                                </div>
                                            </div>
                                            <% 
                                                if (usernameMessage != null) {
                                            %>
                                            <p class="text-danger"><%= usernameMessage %></p>
                                            <%
                                                }
                                            %>
                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <div class="form-outline flex-fill mb-0">
                                                    <input name="email" type="email" id="form3Example3c" class="form-control" placeholder="Email"/>
                                                </div>
                                            </div>
                                            <% 
                                             if (emailMessage != null) {
                                            %>
                                            <p class="text-danger"><%= emailMessage %></p>
                                            <%
                                                }
                                            %>
                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <div class="form-outline flex-fill mb-0">
                                                    <select name="course" class="form-select" placeholder="Select Course">
                                                        <option value="" disabled selected>Select your course</option>
                                                        <option value="BIS">BIS</option>
                                                        <option value="Commerce">Commerce</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <% 
                                             if (courseMessage != null) {
                                            %>
                                            <p class="text-danger"><%= courseMessage %></p>
                                            <%
                                                }
                                            %>
                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <div class="form-outline flex-fill mb-0">
                                                    <input name="password" type="password" id="form3Example4c" class="form-control" placeholder="Password" />
                                                </div>
                                            </div>
                                            <% 
                                             if (passwordMessage != null) {
                                            %>
                                            <p class="text-danger"><%= passwordMessage %></p>
                                            <%
                                                }
                                            %>
                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <div class="form-outline flex-fill mb-0">
                                                    <input name="repeatPassword" type="password" id="form3Example4cd" class="form-control" placeholder="Repeat Password"/>
                                                </div>
                                            </div>
                                            <% 
                                             if (repeatPasswordMessage != null) {
                                            %>
                                            <p class="text-danger"><%= repeatPasswordMessage %></p>
                                            <%
                                                }
                                            %>
                                            <% 
                                             if (exists != null) {
                                            %>
                                            <p class="text-danger"><%= exists %></p>
                                            <%
                                                }
                                            %>
                                            <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                                                <button type="submit" class="btn btn-primary btn-lg">Register</button>
                                            </div>

                                        </form>
                                    </div>
                                    <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">
                                        <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/draw1.webp"
                                             class="img-fluid" alt="Sample image">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </body>
</html>
<!-- Bootstrap template received here https://mdbootstrap.com/docs/standard/extended/registration/ -->
<!-- How to create a dropdown box, https://www.shecodes.io/athena/39245-how-to-create-a-dropdown-with-stored-values-in-jsp-->
<!-- ChatGPT coversation here https://chat.openai.com/share/3b8a0028-46ba-4d4e-942d-35632330cb3a--> 
<!-- Dropdown Box default value/placeholder, https://stackoverflow.com/questions/5805059/how-do-i-make-a-placeholder-for-a-select-box