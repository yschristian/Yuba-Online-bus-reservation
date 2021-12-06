<%-- 
    Document   : addAdmin
    Created on : Nov 20, 2021, 3:00:57 PM
    Author     : Students
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*"%>
<%@ page import="java.security.*, md5.*" %>

<%  
    if((String)session.getAttribute("username") == null){
        response.sendRedirect("admin.jsp");
    }
%>

<%

    if(request.getParameter("submit")!=null){
        md5 md = new md5();
        String fullname = request.getParameter("fullname");
        String username = request.getParameter("username");
        String password = md.getHashPass(request.getParameter("password"));
        
     Connection con;
     PreparedStatement stmt;
     ResultSet rst;
    

    
  try{
          Class.forName("com.mysql.jdbc.Driver");
    con =DriverManager.getConnection("jdbc:mysql://localhost:3306/booking","root","");
          con =DriverManager.getConnection("jdbc:mysql://localhost:3306/booking","root","");
           stmt =con.prepareStatement ("insert into admin(fullname,username,password)values(?,?,?) ");
     stmt.setString(1, fullname);
     stmt.setString(2, username);
     stmt.setString(3, password);
    
    stmt.executeUpdate();
    response.sendRedirect("allAdmin.jsp");
  }
  catch(Exception e){
      
      out.print(e); 

  }
    

    }
    %>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>New Admin</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <link rel="stylesheet" href="../styles/bootstrap-4.3.1-dist/css/bootstrap.min.css">
   <script type="text/javascript" src="../styles/bootstrap-4.3.1-dist/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../styles/Sidebar.css">
    <link rel="stylesheet" href="../styles/forms.css">
    <link rel="stylesheet" href="../styles/index.css">
    <link rel="icon" href="../img/icon.png" type="image/png">
</head>
<body>   
     <div class="wrapper" style="background-color: #f6f5fa">
    <div class="container-fluid">
      <div class="row">
        <!-- Nav start -->
        <nav class="col-md-2 d-none d-md-block sidebar">
          <div class="sidebar-sticky">
            <div class="sidebar-img text-center mt-5">
              <p><img src="../img/icon.png" alt="Logo" width="150" height="150" /></p>
            </div>
            <ul class="nav flex-column dash-nav">
            <li class="nav-item"><a href="dashboard.jsp" class="nav-link">Dashboard</a></li>
                    <li class="nav-item"><a href="addAdmin.jsp" class="nav-link active">Add Admin</a></li>
                    <li class="nav-item"><a href="addLigne.jsp" class="nav-link">Add Ligne</a></li>
                    <li class="nav-item"><a href="addBus.jsp" class="nav-link">Add Bus</a></li>
                    <li class="nav-item"><a href="allAdmin.jsp"class="nav-link">All Admin</a></li>
                    <li class="nav-item"><a href="allTickets.jsp"class="nav-link">All Tickets</a></li>
                    <li class="nav-item"><a href="allUsers.jsp"class="nav-link">All Users</a></li>
                    <li class="nav-item"><a href="allLigne.jsp"class="nav-link">All Ligne</a></li>
                    <li class="nav-item"><a href="allBuses.jsp"class="nav-link">All Buses</a></li>
                    <li class="nav-item"><a href="allMessages.jsp"class="nav-link">All Messages</a></li>
              <li class="nav-item ml-3"><button type="button" class="btn btn-warning py-1 mt-3"><a href="logout.jsp" class="text-dark">Logout</a></button></li>
            </ul>
          </div>
        </nav>
        <!-- nav end -->
        <main
          role="main"
          class="col-md-9 ml-sm-auto col-lg-10 main-content pb-4"
          style="background-color: #f6f5fa"
        >
          <h4 class=" font-weight-bold mt-5" style="font-size: 18">
            Add a new Admin
          </h4>
          <div class="container mt-5">
            <form action="addAdmin.jsp" method="POST" class="dash-form">
              <div class="form-group mt-3 col-6">
                <label htmlFor="plateNo">Username</label>
                <div class="input-group">
                  <input
                    type="text"
                    class="form-control my-input no-shadow"
                    placeholder="Enter a Username."
                    name="username"/>
                </div>
              </div>
              <div class="form-group mt-3 col-6">
                <label htmlFor="plateNo">Fullname</label>
                <div class="input-group">
                  <input
                    type="text"
                    class="form-control my-input no-shadow"
                    placeholder="Enter Your Fullname."
                    name="fullname"/>
                </div>
              </div>
              <div class="form-group mt-3 col-6">
                <label htmlFor="seats">Password</label>
                <div class="input-group">
                  <input
                    type="password"
                    class="form-control my-input no-shadow"
                    placeholder="Enter a Password"
                    name="password"
                  />
                </div>
              </div>
              <div class="form-group mt-5 ml-3">
                <button
                type="submit"
                class="text-white btn btn-dark px-5 mt-2"
                style="border-radius: 20"
                name="submit"
              >
                + Add Admin
              </button>
              </div>
            </form>
          </div>
        </main>
      </div>
    </div>
  </div>
      <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
      <footer>
</body>
</html>