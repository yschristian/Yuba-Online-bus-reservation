<%-- 
    Document   : home
    Created on : Nov 20, 2021, 2:24:33 PM
    Author     : Students
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Book It</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
  <link rel="stylesheet" href="styles/bootstrap-4.3.1-dist/css/bootstrap.min.css">
  <script type="text/javascript" src="styles/bootstrap-4.3.1-dist/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="styles/style.css">
  <link rel="stylesheet" href="styles/forms.css">
  <link rel="icon" href="img/icon.png" type="image/png">
</head>
<body>

<!-- navbar -->
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
          <div class="navbar-header">
            <a class="navbar-brand logo" href="index.jsp"><img src="img/icon.png" width="40px" height="40px"/><span>BOOK IT</span></a>
          </div>
          <ul class="nav navbar-nav d-inline">
            <div class="d-inline">
              <li class="d-inline nav-link activelink "><a href="index.jsp">Home</a></li>
              <li class="d-inline nav-link"><a href="login.jsp">Booking</a></li>
              <li class="d-inline nav-link"><a href="contact.jsp">Contact Us</a></li>
              <li class="d-inline nav-link "><a href="login.jsp">Login</a></li>
            </div>
          </ul>
        </div>
    </nav>
<!-- landing image -->
    <div class=" nav-background">
        <h1 class="h-title">Book Your Ticket Online</h1>
        <a class="btn btn-success book-now-btn" href="login.jsp">Book Now</a>
    </div>
    <div class="section-cont">
        <div class="about-home pb-5">
            <h1 class="text-center price-t">Book It</h1>
            <div class=" pl-5 pt-1 text-center">
                <p style="font-size: 24px;font-family: 'Brush Script MT', cursive;"><span>Book It</span> is a bus and ticket management web app that helps Passengers book their tickets online<br> 
                and helps transportation companies manage their buses online,<br>
                streamline their business and maximise their revenue.<br>
                We help your movements acrros the country as easy as it comes.</p>
            </div>
        </div>
          <!-- services -->

        <div class="row pl-4 pr-4 mbr-justify-content-center">
            <div class="col-lg-4 mbr-col-md-10">
                <div class="wrap">
                    <div class="text-wrap vcenter">
                        <h2 class=" mbr-bold mbr-section-title3 display-5">Reschedule Your ticket
                        </h2>
                        <p class=" text1 mbr-text display-6">You can postpone or even cancel your tickets as long as your ticket is 15 min behind its due time. </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 mbr-col-md-10">
                <div class="wrap">
                    <div class="text-wrap vcenter">
                        <h2 class=" mbr-bold mbr-section-title3 display-5">Book Ticket Online
                        </h2>
                        <p class=" text1 mbr-text display-6">You can now book your tickets Online,To hell with those long lines. </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 mbr-col-md-10">
                <div class="wrap">
                    <div class="text-wrap vcenter">
                        <h2 class=" mbr-bold mbr-section-title3 display-5">Pay Online
                        </h2>
                        <p class=" text1 mbr-text display-6">It is just one click and you are done with payments,payments have never been simpler </p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <section id="price-sec">
      <h1 class="text-center price-t">We connect people with places</h1>
      <div class="container">
          <div class="text-center">
              <div class="row ">
                  <div class="col-md-3">
                      <ul class="plan">
                          <li class="plan-head c-b">Southern province</li>
                          <li>Kamonyi</li>
                          <li>Muhanga</li>
                          <li>Ruhango</li>
                          <li>Huye</li>
                          <li class="bottom"><a href="login.jsp" class="btn btn-danger">Book Now</a></li>
                      </ul>
                  </div>
                  <div class="col-md-3">
                      <ul class="plan">
                          <li class="plan-head">Northern Province</li>
                          <li>Rulindo</li>
                          <li>Musanze</li>
                          <li>Gicumbi</li>
                          <li>Burera</li>
                          <li class="bottom"><a href="login.jsp" class="btn btn-primary">Book Now</a></li>
                      </ul>
                  </div>
                  <div class="col-md-3">
                      <ul class="plan">
                          <li class="plan-head c-v">Eastern Province</li>
                          <li>Bugesera</li>
                          <li>Rwamagana</li>
                          <li>Kayonza</li>
                          <li>Nyagatare</li>
                          <li class="bottom"><a href="login.jsp" class="btn btn-success">Book Now</a></li>
                      </ul>
                  </div>
                  <div class="col-md-3">
                      <ul class="plan">
                          <li class="plan-head c-a">Western Province</li>
                          <li>Ngororero</li>
                          <li>Karongi</li>
                          <li>Rubavu</li>
                          <li>Rusizi</li>
                          <li class="bottom"><a href="login.jsp" class="btn btn-secondary">Book Now</a></li>
                      </ul>
                  </div>

              </div>
          </div>
      </div>
  </section>
  <!-- END PRICE SECTION-->
  <div class="color-bg-one" id="footer1">
      &copy 2021 ABC ltd | All Right Reserved 
    </div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
</body>

