<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>




<%
 
     String id = request.getParameter("id");
        
     Connection con;
     PreparedStatement stmt;
     ResultSet rst;
    
    Class.forName("com.mysql.jdbc.Driver");
    con =DriverManager.getConnection("jdbc:mysql://localhost:3306/booking","root","");
    
    stmt =con.prepareStatement("delete from admin where admin_id=?");
   
    stmt.setString(1,id);
    stmt.executeUpdate();
    
    %>
    <script>
        
        alert("DELETE  SUCCESSFLL!!!")
        window.location = 'allAdmin.jsp';
//        windows.location.replace('allAdmin.jsp')
        
    </script>

