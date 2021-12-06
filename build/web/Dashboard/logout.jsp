<%-- 
    Document   : logout
    Created on : Nov 22, 2021, 6:39:07 PM
    Author     : ford
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    session.invalidate();
    response.sendRedirect("admin.jsp");
%>