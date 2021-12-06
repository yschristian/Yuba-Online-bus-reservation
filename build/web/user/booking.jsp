<%-- 
    Document   : booking
    Created on : Nov 20, 2021, 3:10:33 PM
    Author     : Students
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%  
    if((String)session.getAttribute("username") == null){
        response.sendRedirect("../login.jsp");
    }
%>

<%  
        Connection con;
        Statement statement = null;
        Class.forName("com.mysql.jdbc.Driver");
        con =DriverManager.getConnection("jdbc:mysql://localhost:3306/booking","root","");
        String s_user_id = (String)session.getAttribute("user_id");
%>
      <%
        if(request.getParameter("submit")!=null){
        String ticket_time = request.getParameter("ticket_time");
        String ligne_id = request.getParameter("ligne");
        try{
          PreparedStatement ps=con.prepareStatement(  "select * from tickets where ticket_time=? and ligne=?");  
          ps.setString(1,ticket_time);  
          ps.setString(2, ligne_id);   
          ResultSet rs=ps.executeQuery(); 
          int no_tickets = 0;
        while(rs.next()){
            ++no_tickets;
        }
        if(no_tickets>1){
      %>
      <script>
              alert("Bus is full, book for the next one!");
      </script>
      <%
        }
      else{
           Class.forName("com.mysql.jdbc.Driver");
           PreparedStatement stmt;
           con =DriverManager.getConnection("jdbc:mysql://localhost:3306/booking","root","");
           stmt =con.prepareStatement ("insert into tickets(user,ligne,ticket_time)values(?,?,?) ");
           stmt.setString(1, s_user_id);
           stmt.setString(2, ligne_id);
           stmt.setString(3, ticket_time);
           stmt.executeUpdate();
           response.sendRedirect("activeTickets.jsp");
            }
        }catch(Exception e){
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
    <title>Ticket Booking</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <link rel="stylesheet" href="../styles/bootstrap-4.3.1-dist/css/bootstrap.min.css">
  <script type="text/javascript" src="../styles/bootstrap-4.3.1-dist/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../styles/Sidebar.css">
    <link rel="stylesheet" href="../styles/StatCard.css">
  <link rel="stylesheet" href="../styles/forms.css">
    <link rel="stylesheet" href="../styles/index.css">
    <link rel="icon" href="../img/icon.png" type="image/png">
</head>
<body>   
    <div class="wrapper" style="background-color: '#f6f5fa'">
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
                    <li class="nav-item"><a href="booking.jsp" class="nav-link active">Book Ticket</a></li>
                    <li class="nav-item"><a href="activeTickets.jsp" class="nav-link">Active Tickets</a></li>
                    <li class="nav-item"><a href="expiredTickets.jsp" class="nav-link">Expired Tickets</a></li>
                    <!-- <li class="nav-item"><a href="passwordChange.jsp" class="nav-link">Change Password</a></li> -->
                    <li class="nav-item ml-3"><button type="button" class="btn btn-warning py-1 mt-3"><a href="logout.jsp" class="text-dark">Logout</a></button></li>
                  </ul>
                </div>
              </nav>
          </div>
            <!-- nav end -->
            <main
              role="main"
              class="col-md-9 ml-sm-auto col-lg-10 main-content pb-4"
              style="background-color: '#000'"
            >
            <div class="text-center form-cont mb-5">
      <h3>Booking</h3>
      <p>Book your transport ticket by filling the bellow form</p>
      <form action="booking.jsp" method="POST">
        <div class="row form-line">
          <div class="col-3">
            <label class=" ">Destination:</label>
          </div>
          <div class="col-8">
            <select name="ligne" class="form-booking">
                    <%
           PreparedStatement stmt;
           con =DriverManager.getConnection("jdbc:mysql://localhost:3306/booking","root","");
          Class.forName("com.mysql.jdbc.Driver");
          con =DriverManager.getConnection("jdbc:mysql://localhost:3306/booking","root","");;
          PreparedStatement pst=con.prepareStatement(  "select * from ligne");  
          ResultSet rslt;
          rslt=pst.executeQuery(); 
          int no=0;
        while(rslt.next()){
        %>
             <option value="<%=rslt.getString("ligne_id") %>" name="ligne_id"><%=rslt.getString("departure") %> - <%=rslt.getString("destination") %> (<%=rslt.getString("price") %>)Rwf</option>
        <%}%>
            </select><br>
          </div>
        </div>
        <div class="row form-line">
          <div class="col-3">
            <label >Time:</label>
          </div>
          <div class="col-8">
            <input type="datetime-local" name="ticket_time" class="form-booking"><br>
          </div>
        </div>
        <p class="error-red"><?php echo $error ?></p>
          <button type="submit" name="submit" class="btn form-button btn-warning">Book</button>
      </form>

    </div>
            </main>
        </div>
      </div>
      <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
      <footer>
</body>
</html>