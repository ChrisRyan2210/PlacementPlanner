<%-- 
    Document   : index
    Created on : 19 Sep 2023, 18:00:42
    Author     : Chris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta  content="text/html; charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"> <!-- this allows resizing for screens--> 
        <title>PlacementPlanner - Homepage</title>
        <link rel="stylesheet" href="css/index.css">
        <link rel="stylesheet" href="https://unpkg.com/bs-brain@2.0.2/components/heroes/hero-1/assets/css/hero-1.css" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"> 
    </head>

    <body>
        <!-- Grid Layout https://stackoverflow.com/questions/70448594/how-to-create-an-alternating-grid-layout-->
        <jsp:include page="header.jsp"/>

        <!-- hero section --> <!-- https://bootstrapbrain.com/component/bootstrap-5-hero-image-section-example/#preview -->
        <!-- Linear Gradient Tutorial - https://www.w3schools.com/css/css3_gradients.asp-->
        <section class="bsb-hero-1 px-3 bsb-overlay" style="background-image: linear-gradient(rgba(0, 0, 0, 0.3), rgba(0, 0, 0, 0.7)), url('Images/HeroImage.jpg');"> <!-- Image got here https://www.pexels.com/photo/interracial-group-of-people-discussing-at-the-table-5685770/ -->
            <div class="container"> 
                <div class="row justify-content-md-center">
                    <div class="col-12 col-md-11 col-lg-9 col-xl-7 col-xxl-6 text-center">
                        <!-- Set a transparent background for the text container -->
                        <div class="text-container p-5" style="background-color: transparent;">
                            <h1 class="display-3 fw-bold mb-3 text-light text-xl-start"><b>Kickstart Your Internship</b></h1>
                            <p class="lead mb-5 text-light"><b>PlacementPlanner provides students with a place to find genuine information to help you secure the right internship.</b></p>
                        </div>
                        <div class="d-grid gap-2 d-sm-flex justify-content-sm-center">
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <hr>
        <!-- How to align center, https://getbootstrap.com/docs/4.0/utilities/flex/-->
        <section class="section">
            <div class="wrapper">
                <div class="content d-flex flex-column justify-content-center align-items-center">
                    <h2><a style="background-color: #ffcccc; border-radius: 25% 10%; padding: 10px;" href="CompaniesServlet">Search Companies</a></h2>
                    <br>
                    <p>
                        Explore our dynamic "Companies" section, where you can discover a curated list of potential companies across various industries. Whether you're a student seeking valuable work experience or a recent fourth year who wants to share their experience, this platform is your gateway to connecting with other like-minded individuals. We've made it easy for users to share their thoughts and experiences by posting comments about these companies. Your feedback can help others make informed decisions and foster a vibrant community of aspiring professionals. Dive into the world of internship possibilities and engage in meaningful conversations to shape your career path.
                    </p>
                </div>
                <div><img src="Images/Highrise.jpg"></div>
            </div>
        </section>

        <hr>

        <div>
            <section class="section">
                <div class="wrapper">
                    <div><img src="Images/Roles.jpg"></div>
                    <div class="content text-center d-flex flex-column align-items-center">
                        <h2><a style="background-color: #ffcccc; border-radius: 25% 10%; padding: 10px;" href="rolesServlet">Search Roles</a></h2> <!-- Button border. https://developer.mozilla.org/en-US/docs/Web/CSS/border-radius -->
                        <br>
                        <p>
                            Step into the realm of "Internship Roles" on our website, where you can embark on an exciting journey of exploration through a diverse array of internship positions spanning various industries. This platform offers a comprehensive range of jobs for the student looking to delve into the intricacies of each role. Moreover, we've designed an interactive space for users to share their insights and experiences by posting comments specific to each internship role. Your contributions can become a wellspring of knowledge, nurturing an engaged community of aspiring professionals. Immerse yourself in the world of internship possibilities and participate in illuminating conversations as you navigate your path of role discovery.
                        </p>
                    </div>
                </div>
            </section>
        </div>
        <hr>

        <section class="section">
            <div class="wrapper">
                <div class="content text-center d-flex flex-column align-items-center">
                    <h2><a style="background-color: #ffcccc; border-radius: 25% 10%; padding: 10px;" href="FAQ.jsp">FAQ</a></h2>
                    <br>
                    <p>
                        Our FAQ section is your ultimate resource, offering quick and comprehensive answers to the most common questions that arise throughout the entire placement process. In collaboration with the BIS placement team, we've meticulously curated a knowledge bank, focusing on the most pressing inquiries. Our goal is to provide students with a one-stop solution, streamlining the entire placement journey. Whether you're a newcomer seeking guidance or an experienced hand looking for quick references, we're here to ensure your placement process is as smooth and hassle-free as possible. Dive into our FAQ section today, and let us be your guide through the intricate world of placements.
                    </p>
                </div>
                <div><img src="Images/FAQ.jpg"></div>
            </div>
        </section>

        <hr>

        <section class="section">
            <div class="wrapper">
                <div><img src="Images/Compare.jpg"></div>
                <div class="content text-center d-flex flex-column align-items-center">
                    <h2><a style="background-color: #ffcccc; border-radius: 25% 10%; padding: 10px;" href="#">Compare Companies & Roles</a></h2>
                    <br>
                    <p>
                        Welcome to our "Compare Roles and Companies" section, a powerful tool that empowers you to make informed decisions about your career or internship choices. Here, you can easily assess and contrast various opportunities based on a multitude of essential factors. Whether you're seeking to find the best-fit roles or companies, or simply looking to explore the top and bottom contenders, this section is your compass. We've incorporated a comprehensive set of criteria, from salary and work-life balance to growth potential and company culture. By leveraging this valuable feature, you can visualize and analyze the opportunities that align most closely with your aspirations. Take the guesswork out of your career path and let data-driven insights guide your way.
                    </p>
                </div>
            </div>
        </section>



        <jsp:include page="footer.jsp"/>
    </body>
</html>
<!-- Grid Layout https://stackoverflow.com/questions/70448594/how-to-create-an-alternating-grid-layout -->
<!-- Hero Section Bootstrap from https://bootstrapbrain.com/component/bootstrap-5-hero-image-section-example/#preview-->
<!-- W3Schools Linear Gradient - https://www.w3schools.com/css/css3_gradients.asp-->
<!-- How to align center, https://getbootstrap.com/docs/4.0/utilities/flex/-->
<!-- Button border. https://developer.mozilla.org/en-US/docs/Web/CSS/border-radius -->