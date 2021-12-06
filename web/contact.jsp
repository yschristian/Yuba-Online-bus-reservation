<%-- 
    Document   : contact
    Created on : Nov 20, 2021, 2:42:31 PM
    Author     : Students
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%

    if(request.getParameter("submit")!=null){
   
        String fullname = request.getParameter("fullname");
        String email = request.getParameter("email");
        String subject = request.getParameter("subject");
        String message = request.getParameter("message");
     
        
     Connection con;
     PreparedStatement stmt;
     ResultSet rst;
    

    
  try{
          Class.forName("com.mysql.jdbc.Driver");
    con =DriverManager.getConnection("jdbc:mysql://localhost:3306/booking","root","");
          con =DriverManager.getConnection("jdbc:mysql://localhost:3306/booking","root","");
           stmt =con.prepareStatement ("insert into message(fname,email,subject,message)values(?,?,?,?) ");
     
     stmt.setString(1, fullname);
     stmt.setString(2, email);
     stmt.setString(3, subject);
     stmt.setString(4, message);
    
    
    stmt.executeUpdate();
    response.sendRedirect("index.jsp");
  }
  catch(Exception e){
      
      out.print(e); 

  }
    

    }
    %>


<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
  <link rel="stylesheet" href="styles/style.css">
  <link rel="stylesheet" href="styles/forms.css">
  <link rel="icon" href="img/icon.png" type="image/png">
<title>Contact Us</title>
</head>
<body>
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
          <div class="navbar-header">
            <a class="navbar-brand logo" href="index.jsp"><img src="img/icon.png" width="40px" height="40px"/><span>BOOK IT</span></a>
          </div>
          <ul class="nav navbar-nav d-inline">
            <div class="d-inline">
              <li class="d-inline nav-link"><a href="index.jsp">Home</a></li>
              <li class="d-inline nav-link"><a href="login.jsp">Booking</a></li>
              <li class="d-inline nav-link activelink "><a href="contact.jsp">Contact Us</a></li>
              <li class="d-inline nav-link "><a href="login.jsp">Login</a></li>
            </div>
          </ul>
        </div>
    </nav>



<div class="text-center form-cont">
  <h3>Contact Us</h3>
  <p>Let us Get in Touch, We are just one click away.</p>
  <form action="contact.jsp" method="POST">
    <div class="row form-line">
      <div class="col-3">
        <label class=" ">Name:</label>
      </div>
      <div class="col-8">
        <input type="text" placeholder="FullName" class="form-booking" name="fullname"><br>
      </div>
    </div>
    <div class="row form-line">
      <div class="col-3">
        <label class=" ">Email:</label>
      </div>
      <div class="col-8">
        <input type="email" placeholder="email" class="form-booking" name="email"><br>
      </div>
    </div>
    <div class="row form-line">
      <div class="col-3">
        <label class=" ">Subject:</label>
      </div>
      <div class="col-8">
        <input type="text" placeholder="Subject" class="form-booking" name="subject"><br>
      </div>
    </div>
    <div class="row form-line">
      <div class="col-3">
        <label class=" ">Message:</label>
      </div>
      <div class="col-8">
        <textarea id="message" name="message" rows="3" cols="40">
          </textarea>
      </div>
    </div>
      <button type="submit" class="btn form-button btn-secondary" name="submit">Send Message</button>
  </form>
</div>

<div class="color-bg-one" id="footer">
      &copy 2021 ABC | All Rights Reserved 
    </div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
</body>
</html>