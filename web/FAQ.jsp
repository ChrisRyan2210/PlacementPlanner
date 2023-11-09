<%-- 
    Document   : FAQ
    Created on : 16 Oct 2023, 14:11:17
    Author     : Chris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"> <!-- this allows resizing for screens--> 
        <link rel="stylesheet" href="css/FAQ.css">
        <title>FAQ</title>
    </head>
    <body style="background-color: #ffffff; color: #000000;"> <!-- this is a bootstrap page I got from here https://www.bootdey.com/snippets/view/Frequently-Asked-Questions-section#html -->
        <jsp:include page="header.jsp"/>
        <div class="faq_area section_padding_130" id="faq">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 col-sm-8 col-lg-6">
                        <!-- Section Heading-->
                        <div class="section_heading text-center wow fadeInUp" data-wow-delay="0.2s" style="visibility: visible; animation-delay: 0.2s; animation-name: fadeInUp;">
                            <h3><span>Frequently </span> Asked Questions</h3>
                            <p>Find answers to the most frequently asked questions regarding the entire placement process</p>
                            <div class="line"></div>
                        </div>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <!-- FAQ Area-->
                    <div class="col-12 col-sm-10 col-lg-8">
                        <div class="accordion faq-accordian" id="faqAccordion">

                            <div class="card border-0 wow fadeInUp" data-wow-delay="0.2s" style="visibility: visible; animation-delay: 0.2s; animation-name: fadeInUp; background-color:#ebebeb; ">
                                <div class="card-header" id="headingOne">
                                    <h6 class="mb-0 collapsed" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne" style="background-color: gainsboro;">What is the normal BIS placement time period?<span class="lni-chevron-up"></span></h6>
                                </div>
                                <div class="collapse" id="collapseOne" aria-labelledby="headingOne" data-parent="#faqAccordion">
                                    <div class="card-body">
                                        <p>Second week in March to the end of August. This may vary based on company preference but all students should be started by the end of March.</p>                       
                                    </div>
                                </div>
                            </div>

                            <div class="card border-0 wow fadeInUp" data-wow-delay="0.3s" style="visibility: visible; animation-delay: 0.3s; animation-name: fadeInUp; background-color:#ebebeb;">
                                <div class="card-header" id="headingTwo">
                                    <h6 class="mb-0 collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo" style="background-color: gainsboro;">What are the contact details for the UCC Placement Team?<span class="lni-chevron-up"></span></h6>
                                </div>
                                <div class="collapse" id="collapseTwo" aria-labelledby="headingTwo" data-parent="#faqAccordion">
                                    <div class="card-body">
                                        <p><b>BIS Placement Manager:</b> Stephanie Larkin - s.larkin@ucc.ie - Room 3.81, 3rd Floor, ORB</p>
                                        <p><b>BIS Placement Administrator:</b> Amanda Gallagher - a.gallagher@ucc.ie/bis3placement@ucc.ie - Room 3.82, 3rd Floor, ORB</p>
                                        <p><b>BIS Placement Administrator:</b> Ann O'Riordan - a.oriordan@ucc.ie/bis3placement@ucc.ie - Room 3.81, 3rd Floor, ORB</p>
                                    </div>
                                </div>
                            </div>

                            <div class="card border-0 wow fadeInUp" data-wow-delay="0.4s" style="visibility: visible; animation-delay: 0.4s; animation-name: fadeInUp; background-color:#ebebeb;">
                                <div class="card-header" id="headingThree">
                                    <h6 class="mb-0 collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="true" aria-controls="collapseThree" style="background-color: gainsboro;">How do I apply for a BIS Placement Role?<span class="lni-chevron-up"></span></h6>
                                </div>
                                <div class="collapse" id="collapseThree" aria-labelledby="headingThree" data-parent="#faqAccordion">
                                    <div class="card-body">
                                        <p><a href="https://ucc.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=6bcb532b-8bd5-4499-a2a8-af0400f89ad7&start=0" target="_blank">This</a> presentation video outlines how to apply for for a BIS placement role.</p>
                                    </div>
                                </div>
                            </div>

                            <div class="card border-0 wow fadeInUp" data-wow-delay="0.4s" style="visibility: visible; animation-delay: 0.4s; animation-name: fadeInUp; background-color:#ebebeb;">
                                <div class="card-header" id="headingFour">
                                    <h6 class="mb-0 collapsed" data-toggle="collapse" data-target="#collapseFour" aria-expanded="true" aria-controls="collapseFour" style="background-color: gainsboro;">What do I do if I find a Placement myself?<span class="lni-chevron-up"></span></h6>
                                </div>
                                <div class="collapse" id="collapseFour" aria-labelledby="headingFour" data-parent="#faqAccordion">
                                    <div class="card-body">
                                        <p><a href="https://ucc.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=48d1d736-a89f-467f-a712-af0700b0b173&start=2.609873" target="_blank">This</a> presentation outlines the details on what is required if you wish to source your own placement.</p>
                                    </div>
                                </div>
                            </div>

                            <div class="card border-0 wow fadeInUp" data-wow-delay="0.3s" style="visibility: visible; animation-delay: 0.3s; animation-name: fadeInUp; background-color:#ebebeb;">
                                <div class="card-header" id="headingFive">
                                    <h6 class="mb-0 collapsed" data-toggle="collapse" data-target="#collapseFive" aria-expanded="true" aria-controls="collapseFive" style="background-color: gainsboro;">Can I try to source my own placement and also apply through Canvas?<span class="lni-chevron-up"></span></h6>
                                </div>
                                <div class="collapse" id="collapseFive" aria-labelledby="headingFiver" data-parent="#faqAccordion">
                                    <div class="card-body">
                                        <p>If you are looking for a placement outside of the BIS process the role needs to be approved by the BIS department first, see details in the seeking your own placement in the question above.</p>
                                        <p>If the role gets approved and you get called for an interview, you need to let the BIS Placement know the interview time and date. The reason for this is because if you are also applying for roles offered through BIS, the placement team may also be scheduling you also for interviews. The team wants to avoid you being scheduled for more than one interviews at a time.</p>
                                        <p>If you are offered a placement through BIS/Canvas before you get offered a placement externally <b>you will be expected to accept the BIS offer.</b></p>
                                    </div>
                                </div>
                            </div>

                            <div class="card border-0 wow fadeInUp" data-wow-delay="0.4s" style="visibility: visible; animation-delay: 0.4s; animation-name: fadeInUp; background-color:#ebebeb;">
                                <div class="card-header" id="headingSix">
                                    <h6 class="mb-0 collapsed" data-toggle="collapse" data-target="#collapseSix" aria-expanded="true" aria-controls="collapseSix" style="background-color: gainsboro;">If a company from Canvas contacts me to make interview arrangements what should I do?<span class="lni-chevron-up"></span></h6>
                                </div>
                                <div class="collapse" id="collapseSix" aria-labelledby="headingSix" data-parent="#faqAccordion">
                                    <div class="card-body">
                                        <p>Redirect them to the BIS placement team, all interview arrangements are made through the BIS placement office and team.</p>
                                    </div>
                                </div>
                            </div>

                            <div class="card border-0 wow fadeInUp" data-wow-delay="0.4s" style="visibility: visible; animation-delay: 0.4s; animation-name: fadeInUp; background-color:#ebebeb;">
                                <div class="card-header" id="headingSeven">
                                    <h6 class="mb-0 collapsed" data-toggle="collapse" data-target="#collapseSeven" aria-expanded="true" aria-controls="collapseSeven" style="background-color: gainsboro;">Do I need to include references in my CV?<span class="lni-chevron-up"></span></h6>
                                </div>
                                <div class="collapse" id="collapseSeven" aria-labelledby="headingSeven" data-parent="#faqAccordion">
                                    <div class="card-body">
                                        <p>Yes, you need to include 2 references. Ideally, you should have one UCC Reference. You can include Stephanie Larkin. If you have a work referee, that should also be included. If not, you can include a referee from a volunteer position or a sports person if you are into sports. Referees need to be contactable so ensure that you include an email or telephone number for both referees.</p>
                                    </div>
                                </div>
                            </div>

                            <div class="card border-0 wow fadeInUp" data-wow-delay="0.4s" style="visibility: visible; animation-delay: 0.4s; animation-name: fadeInUp; background-color:#ebebeb;">
                                <div class="card-header" id="headingEight">
                                    <h6 class="mb-0 collapsed" data-toggle="collapse" data-target="#collapseEight" aria-expanded="true" aria-controls="collapseEight" style="background-color: gainsboro;">Will my placement be remote or in a physical office?<span class="lni-chevron-up"></span></h6>
                                </div>
                                <div class="collapse" id="collapseEight" aria-labelledby="headingEight" data-parent="#faqAccordion">
                                    <div class="card-body">
                                        <p>This is dependent on the placement organisation. Many placement companies are offering flexible and/or remote working options.</p>
                                    </div>
                                </div>
                            </div>

                            <div class="card border-0 wow fadeInUp" data-wow-delay="0.4s" style="visibility: visible; animation-delay: 0.4s; animation-name: fadeInUp; background-color:#ebebeb;">
                                <div class="card-header" id="headingNine">
                                    <h6 class="mb-0 collapsed" data-toggle="collapse" data-target="#collapseNine" aria-expanded="true" aria-controls="collapseNine" style="background-color: gainsboro;">Will a lack of work experience hurt my chances to get a placement opportunity?<span class="lni-chevron-up"></span></h6>
                                </div>
                                <div class="collapse" id="collapseNine" aria-labelledby="headingNine" data-parent="#faqAccordion">
                                    <div class="card-body">
                                        <p>You are students and not yet graduates and therefore it cannot be expected that you will have directly relevant work experience. You will however have experience from other areas of your life and how you approach your studies. You just need to think about the things you do and where you use skills such as <b>time management, meeting deadlines, communications skills, self-motivation, etc. </b></p>

                                        <p>Have you caring duties, do you play sport, do you volunteer? Have you worked on any personal projects? Where do you excel? Thinking about these questions will help you realise the skills you have and create stories to share during your interviews.</p>
                                    </div>
                                </div>
                            </div>


                            <div class="card border-0 wow fadeInUp" data-wow-delay="0.4s" style="visibility: visible; animation-delay: 0.4s; animation-name: fadeInUp; background-color:#ebebeb;">
                                <div class="card-header" id="headingTen">
                                    <h6 class="mb-0 collapsed" data-toggle="collapse" data-target="#collapseTen" aria-expanded="true" aria-controls="collapseTen" style="background-color: gainsboro;">What is the difference between Reference and Referee?<span class="lni-chevron-up"></span></h6>
                                </div>
                                <div class="collapse" id="collapseTen" aria-labelledby="headingTen" data-parent="#faqAccordion">
                                    <div class="card-body">
                                        <p>References are usually letters written by your referees that can be sent with your CV and then read by your potential employer. Referees are the people that have agreed for you to put their name and contact details on your CV for them to be called to be asked to give their opinion on your work or talents.</p>
                                    </div>
                                </div>
                            </div>

                            <div class="card border-0 wow fadeInUp" data-wow-delay="0.4s" style="visibility: visible; animation-delay: 0.4s; animation-name: fadeInUp; background-color:#ebebeb;">
                                <div class="card-header" id="headingEleven">
                                    <h6 class="mb-0 collapsed" data-toggle="collapse" data-target="#collapseEleven" aria-expanded="true" aria-controls="collapseEleven" style="background-color: gainsboro;">What does it mean if a company states that submissions are closed and the role is no longer available?<span class="lni-chevron-up"></span></h6>
                                </div>
                                <div class="collapse" id="collapseEleven" aria-labelledby="headingEleven" data-parent="#faqAccordion">
                                    <div class="card-body">
                                        <p>If the placement company have filled the opportunities, they will no longer review CV's, therefore submissions will be closed. In a case where they have also received enough applicants for the role, the placement company can decide to close the submission, therefore making the role unavailable.</p>
                                    </div>
                                </div>
                            </div>

                            <div class="card border-0 wow fadeInUp" data-wow-delay="0.4s" style="visibility: visible; animation-delay: 0.4s; animation-name: fadeInUp; background-color:#ebebeb;">
                                <div class="card-header" id="headingTwelve">
                                    <h6 class="mb-0 collapsed" data-toggle="collapse" data-target="#collapseTwelve" aria-expanded="true" aria-controls="collapseTwelve" style="background-color: gainsboro;">What are the alternatives if I don’t secure a placement?<span class="lni-chevron-up"></span></h6>
                                </div>
                                <div class="collapse" id="collapseTwelve" aria-labelledby="headingTwelve" data-parent="#faqAccordion">
                                    <div class="card-body">
                                        <p>If you do not get a placement, you will go through the skill building program.</p>
                                    </div>
                                </div>
                            </div>

                            <div class="card border-0 wow fadeInUp" data-wow-delay="0.4s" style="visibility: visible; animation-delay: 0.4s; animation-name: fadeInUp; background-color:#ebebeb;">
                                <div class="card-header" id="headingThirteen">
                                    <h6 class="mb-0 collapsed" data-toggle="collapse" data-target="#collapseThirteen" aria-expanded="true" aria-controls="collapseThirteen" style="background-color: gainsboro;">Brief overview of the BIS placement process<span class="lni-chevron-up"></span></h6>
                                </div>
                                <div class="collapse" id="collapseThirteen" aria-labelledby="headingThirteen" data-parent="#faqAccordion">
                                    <div class="card-body">
                                        <p>All BIS Placement opportunities advertised on CANVAS – apply with your CV through CANVAS</p>
                                        <p>BIS Placement Interviews – notified via CANVAS & CANVAS calendar. Interview invites will be sent to your UCC Email account / Teams Calendar. In some cases Zoom & Google Meets will be used.</p>
                                        <p>BIS Placement Offers – if you are successful you will be notified to your UCC Email account. <b>It is important that all offers are accepted by email. </b>  All BIS Placement offers are posted on CANVAS.</p>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp"/>

        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
</html>
<!--Bootdey. Bootstrap Template, https://www.bootdey.com/snippets/view/Frequently-Asked-Questions-section#html-->