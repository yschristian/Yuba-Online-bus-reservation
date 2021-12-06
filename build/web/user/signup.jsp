<%-- 
    Document   : signup
    Created on : Nov 20, 2021, 3:12:25 PM
    Author     : Students
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@ page import="java.security.*, md5.*" %>
<%

    if(request.getParameter("submit")!=null){
        md5 md = new md5();
        String fullname = request.getParameter("fullname");
        String username = request.getParameter("username");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String password = md.getHashPass(request.getParameter("password"));
        
     Connection con;
     PreparedStatement stmt;
     ResultSet rst;
    

    
  try{
          Class.forName("com.mysql.jdbc.Driver");
          con =DriverManager.getConnection("jdbc:mysql://localhost:3306/booking","root","");
          stmt =con.prepareStatement ("insert into users(fname,username,phone,email,password)values(?,?,?,?,?) ");
     stmt.setString(1, fullname);
     stmt.setString(2, username);
     stmt.setString(3,  phone);
     stmt.setString(4, email);
     stmt.setString(5, password);
    
    stmt.executeUpdate();
    response.sendRedirect("dashboard.jsp");
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
  <link rel="stylesheet" href="../styles/style.css">
  <link rel="stylesheet" href="../styles/forms.css">
  <link rel="icon" href="../img/icon.png" type="image/png">
<title>Sign Up</title>
</head>
<body>
<nav class="navbar navbar-inverse">
        <div class="container-fluid">
          <div class="navbar-header">
            <a class="navbar-brand logo" href="index.jsp"><img src="../img/icon.png" width="40px" height="40px"/><span>BOOK IT</span></a>
          </div>
          <ul class="nav navbar-nav d-inline">
            <div class="d-inline">
              <li class="d-inline nav-link"><a href="../index.jsp">Home</a></li>
              <li class="d-inline nav-link activelink "><a href="login.jsp">Booking</a></li>
              <li class="d-inline nav-link"><a href="../contact.jsp">Contact Us</a></li>
            </div>
          </ul>
        </div>
    </nav>
      

        <div class="text-center form-cont">
          <h6 class=" mb-3">Fill the form to sign up</h6>
          <form action="signup.jsp" method="POST">
            <div class="row form-line">
                <div class="col-3">
                    <label class=" ">Fullname:</label>
                </div>
                <div class="col-8">
                    <input type="text" placeholder="fullname" name="fullname" class="form-booking"><br>
                </div>
            </div>
            <div class="row form-line">
                <div class="col-3">
                    <label class=" ">Username:</label>
                </div>
                <div class="col-8">
                    <input type="text" placeholder="Username"  name="username" class="form-booking"><br>
                </div>
            </div>
            <div class="row form-line">
                <div class="col-3">
                    <label class=" ">Phone Number:</label>
                </div>
                <div class="col-8">
                    <input type="text" placeholder="Phone Number"  name="phone" class="form-booking"><br>
                </div>
            </div>
            <div class="row form-line">
                <div class="col-3">
                    <label class=" ">Email:</label>
                </div>
                <div class="col-8">
                    <input type="Email" placeholder="Email"  name="email" class="form-booking"><br>
                </div>
            </div>
            <div class="row form-line mb-4">
                <div class="col-3">
                    <label class=" ">Password:</label>
                </div>
                <div class="col-8">
                    <input type="password" placeholder="password"  name="password" class="form-booking"><br>
                </div>
            </div>
            <!-- <p><?php echo $error; ?></p> -->
            <button type="submit" name="submit" class="btn form-button btn-danger">Sign Up</button>
            <p style="display:inline;">Or Click <a href="../login.jsp" style="color:red">LOGIN</a> If you already have an account.</p>
          </form>
        </div>


        <div class="color-bg-one" id="footer">
      &copy 2021 ABC | All Rights Reserved 
    </div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
</body>