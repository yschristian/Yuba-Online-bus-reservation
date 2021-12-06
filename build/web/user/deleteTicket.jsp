<%-- 
    Document   : deleteTicket
    Created on : Nov 20, 2021, 3:11:29 PM
    Author     : Students
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>




<%
 
     String id = request.getParameter("id");
        
     Connection con;
     PreparedStatement stmt;
     ResultSet rst;
    
    Class.forName("com.mysql.jdbc.Driver");
    con =DriverManager.getConnection("jdbc:mysql://localhost:3306/booking","root","");
    
    stmt =con.prepareStatement("delete from tickets where ticket_id=?");
   
    stmt.setString(1,id);
    stmt.executeUpdate();
    
    %>
    <script>
        
        alert("Cancel  SUCCESSFULL!!!")
        window.location = 'activeTickets.jsp';
//        windows.location.replace('allAdmin.jsp')
        
    </script>
