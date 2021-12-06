<%-- 
    Document   : updateAdmin
    Created on : Nov 20, 2021, 3:04:38 PM
    Author     : Students
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*"%>


<%          
String updateId = request.getParameter("updateId");
    Connection con;
    PreparedStatement stmt;
    ResultSet result;
    Class.forName("com.mysql.jdbc.Driver");
    con =DriverManager.getConnection("jdbc:mysql://localhost:3306/booking","root","");
    
    if(request.getParameter("submit")!=null){
      String id = request.getParameter("admin_id");
      String name = request.getParameter("username");
      String fname = request.getParameter("fullname");
      String password = request.getParameter("password");
        
     ResultSet rst;
    try{
    Class.forName("com.mysql.jdbc.Driver");
    con =DriverManager.getConnection("jdbc:mysql://localhost:3306/booking","root","");
    
    stmt =con.prepareStatement ("update admin set username=?,password=?,fullname=? where admin_id=?");
    stmt.setString(1, name);
    stmt.setString(2, password);
    stmt.setString(3, fname);
    stmt.setString(4,id);
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
    <title>Update Admin</title>
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
              <li class="nav-item ml-3"><button type="button" class="btn btn-warning py-1 mt-3"><a href="allAdmin.jsp" class="text-dark">Back</a></button></li>
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
            Update Admin Username and Password
          </h4>

          <div class="container mt-5">
            <form action="updateAdmin.jsp" method="POST" class="dash-form">

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
                <label htmlFor="plateNo">fullname</label>
                <div class="input-group">
                  <input
                    type="text"
                    class="form-control my-input no-shadow"
                    placeholder="Enter a fullname."
                    
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

              <input type="hidden" name="admin_id" value="<%=updateId%>" >
              <div class="form-group mt-5 ml-3">
                <button
                type="submit"
                class="text-white btn btn-dark px-5 mt-2"
                style="border-radius: 20"
                name="submit"
              >
                + Update Admin
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