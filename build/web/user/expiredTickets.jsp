<%-- 
    Document   : expiredTicket
    Created on : Nov 20, 2021, 3:11:53 PM
    Author     : Students
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>

<%  
    if((String)session.getAttribute("username") == null){
        response.sendRedirect("../login.jsp");
    }
        String user_id = (String)session.getAttribute("user_id");
        ResultSet rs;
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
        LocalDateTime now = LocalDateTime.now();
        String now_time = dtf.format(now);
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Expired Tickets</title>
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
            <nav class="col-md-2 d-none d-md-block sidebar">
                <div class="sidebar-sticky">
                  <div class="sidebar-img text-center mt-5">
                    <p><img src="../img/icon.png" alt="Logo" width="150" height="150" /></p>
                  </div>
                  <ul class="nav flex-column dash-nav">
                  <li class="nav-item"><a href="dashboard.jsp" class="nav-link">Dashboard</a></li>
                    <li class="nav-item"><a href="booking.jsp" class="nav-link">Book Ticket</a></li>
                    <li class="nav-item"><a href="activeTickets.jsp" class="nav-link">Active Tickets</a></li>
                    <li class="nav-item"><a href="expiredTickets.jsp" class="nav-link active">Expired Tickets</a></li>
                    <!-- <li class="nav-item"><a href="passwordChange.jsp" class="nav-link">Change Password</a></li> -->
                    <li class="nav-item ml-3"><button type="button" class="btn btn-warning py-1 mt-3"><a href="logout.jsp" class="text-dark">Logout</a></button></li>
                  </ul>
                </div>
              </nav>
            <!-- nav end -->
            <main role="main" class="col-md-9 ml-sm-auto col-lg-10 main-content pb-4"style="background-color: #f6f5fa">
              <h4 class=" font-weight-bold mt-4" style="font-size: 18">
                All Your Expired Tickets
              </h4>
              <div class="container-fluid mt-5">
                <div class="mt-5">
                    <div class="table-responsive">
                      <table class="table table-striped">
                        <thead>
                          <tr>
                            <th scope="col">N0.</th>
                            <th scope="col">Departure</th>
                            <th scope="col">Destination</th>
                            <th scope="col">Departure Time</th>
                          </tr>
                        </thead>
                        <tbody>
      <%
        Connection con;
        Statement statement = null;
        ResultSet rst;
          Class.forName("com.mysql.jdbc.Driver");
          con =DriverManager.getConnection("jdbc:mysql://localhost:3306/booking","root","");;
          PreparedStatement ps=con.prepareStatement(  "SELECT * FROM tickets t join ligne l ON t.ligne = l.ligne_id WHERE (user = ? AND ticket_time < ?) ORDER BY ticket_time"); 
          ps.setString(1, user_id);
          ps.setString(2, now_time);
          rs=ps.executeQuery(); 
          int no=0; 
        while(rs.next()){
        %>
                            <tr>
                              <td><%=++no %></td>
                              <td><%=rs.getString("departure") %></td>
                              <td><%=rs.getString("destination") %></td>
                              <td><%=rs.getString("ticket_time") %></td>
                            </tr>
       <%
        }
       %>
                        </tbody>
                      </table>
                    </div>
                  </div>
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
