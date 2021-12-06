<%-- 
    Document   : admin
    Created on : Nov 20, 2021, 3:01:35 PM
    Author     : Students
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.security.*, md5.*" %>
<%@page import="java.sql.*"%>
<%@ page import = " java.util.* " %>



<%
    if(request.getParameter("submit")!=null){
      boolean status;
      md5 md = new md5();
      String username = request.getParameter("username");
      String password = md.getHashPass(request.getParameter("password"));
        
     Connection con;
     Statement statement = null;
     ResultSet rst;
    

    
  try{
          Class.forName("com.mysql.jdbc.Driver");
          con =DriverManager.getConnection("jdbc:mysql://localhost:3306/booking","root","");;
          PreparedStatement ps=con.prepareStatement(  "select * from admin where username=? and password=?");  
          ps.setString(1,username);  
          ps.setString(2, password);  
              
          ResultSet rs=ps.executeQuery(); 
          status=rs.next();  
         if(status){
             session.setAttribute("username",username); 
             session.setAttribute("admin_id",rs.getString("admin_id")); 
             response.sendRedirect("dashboard.jsp");
                }else{
                      out.print("Sorry, username or password is Incorrect");  
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
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous"> 
  <link rel="stylesheet" href="../styles/style.css">
  <link rel="stylesheet" href="../styles/forms.css">
  <link rel="icon" href="../img/icon.png" type="image/png">
<title>Login</title>
</head>
<body>
        <div class="text-center form-cont">
          <h6 class=" mb-5">Admin Login</h6>
          <form action="admin.jsp" method="POST">
            <div class="row form-line">
                <div class="col-3">
                    <label class=" ">Username:</label>
                </div>
                <div class="col-8">
                    <input type="text" placeholder="Username" name="username" class="form-booking"><br>
                </div>
            </div>
            <div class="row form-line">
                <div class="col-3">
                    <label class=" ">Password:</label>
                </div>
                <div class="col-8">
                    <input type="password" placeholder="password"  name="password" class="form-booking"><br>
                </div>
            </div>
            <p><?php echo $error; ?></p>
            <button type="submit" name="submit" class="btn form-button btn-danger mr-2">Login</button>
          </form>
        </div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
</body>
