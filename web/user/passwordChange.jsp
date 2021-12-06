<%-- 
    Document   : changepassword
    Created on : Nov 20, 2021, 3:10:50 PM
    Author     : Students
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.security.*, md5.*" %>
<%@page import="java.sql.*"%>
<%@ page import = " java.util.* " %>

<%  
    if((String)session.getAttribute("username") == null){
        response.sendRedirect("../login.jsp");
    }
    String user_id = (String)session.getAttribute("user_id");
%>

<%

    if(request.getParameter("submit")!=null){
      boolean status;
      md5 md = new md5();
      String cpassword = md.getHashPass(request.getParameter("cpassword"));
      String newpassword = md.getHashPass(request.getParameter("newpassword"));
        
     Connection con;
     Statement statement = null;
     ResultSet rst;
    

    
  try{
          Class.forName("com.mysql.jdbc.Driver");
          con =DriverManager.getConnection("jdbc:mysql://localhost:3306/booking","root","");;
          PreparedStatement ps=con.prepareStatement(  "select * from users where user_id=?");  
          ps.setString(1,user_id);  
              
          ResultSet rs=ps.executeQuery(); 

                     while(rs.next()){
                         if(cpassword == rs.getString("password")){
                        PreparedStatement pst =con.prepareStatement ("update users set password=? where user_id=?");    
                        pst.setString(1,newpassword); 
                        pst.setString(2,user_id); 
                        pst.executeUpdate();
                        response.sendRedirect("dashboard.jsp");
                         }else{
                        out.print("Sorry, old password is Incorrect");                         
                         }
                     }
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
    <title>Change Password</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <link rel="stylesheet" href="../styles/bootstrap-4.3.1-dist/css/bootstrap.min.css">
  <script type="text/javascript" src="../styles/bootstrap-4.3.1-dist/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../styles/Sidebar.css">
    <link rel="stylesheet" href="../styles/index.css">
    <link rel="icon" href="../img/icon.png" type="image/png">
</head>
<body>   
    <div class="wrapper" style="background-color: #f6f5fa">
        <div class="container-fluid">
          <div class="row">
            <!-- Nav start -->
<!--            <nav class="col-md-2 d-none d-md-block sidebar">
                <div class="sidebar-sticky">
                  <div class="sidebar-img text-center mt-5">
                    <p><img src="../img/icon.png" alt="Logo" width="150" height="150" /></p>
                  </div>
                  <ul class="nav flex-column dash-nav">
                  <li class="nav-item"><a href="dashboard.jsp" class="nav-link">Dashboard</a></li>
                    <li class="nav-item"><a href="booking.jsp" class="nav-link">Book Ticket</a></li>
                    <li class="nav-item"><a href="activeTickets.jsp" class="nav-link">Active Tickets</a></li>
                    <li class="nav-item"><a href="expiredTickets.jsp" class="nav-link">Expired Tickets</a></li>
                    <li class="nav-item"><a href="passwordChange.jsp" class="nav-link active">Change Password</a></li>
                    <li class="nav-item ml-3"><button type="button" class="btn btn-warning py-1 mt-3"><a href="logout.jsp" class="text-dark">Logout</a></button></li>
                  </ul>
                </div>
              </nav>-->
            <!-- nav end -->
            <main
          role="main"
          class="col-md-9 ml-sm-auto col-lg-10 main-content pb-4"
          style="background-color: #f6f5fa"
        >
          <h4 class=" font-weight-bold mt-5" style="font-size: 18">
            Change Password
          </h4>
          <div class="container mt-5">
            <form action="passwordChange.jsp" method="POST" class="dash-form">
              <div class="form-group mt-3 col-6">
                <label htmlFor="plate">Current Password</label>
                <div class="input-group">
                  <input
                    type="text"
                    class="form-control my-input no-shadow"
                    placeholder="Enter a Your current Password."
                    name="cpassword"/>
                </div>
              </div>
              <div class="form-group mt-3 col-6">
                <label htmlFor="seats">New Password</label>
                <div class="input-group">
                  <input
                    type="text"
                    class="form-control my-input no-shadow"
                    placeholder="Enter A new Password."
                    name="newpassword"/>
                </div>
              </div>
            <p style="color:red"><?php echo $error; ?></p>
              <div class="form-group mt-5 ml-3">
                <button
                type="submit"
                class="text-white btn btn-dark px-5 mt-2"
                style="border-radius: 20"
                name="submit"
              >
                Change Password
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