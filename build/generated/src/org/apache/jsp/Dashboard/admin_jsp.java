package org.apache.jsp.Dashboard;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.security.*;
import md5.*;
import java.sql.*;
import java.util.*;

public final class admin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("   <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css\" integrity=\"sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l\" crossorigin=\"anonymous\"> \n");
      out.write("  <link rel=\"stylesheet\" href=\"../styles/style.css\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"../styles/forms.css\">\n");
      out.write("  <link rel=\"icon\" href=\"../img/icon.png\" type=\"image/png\">\n");
      out.write("<title>Login</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("        <div class=\"text-center form-cont\">\n");
      out.write("          <h6 class=\" mb-5\">Admin Login</h6>\n");
      out.write("          <form action=\"admin.jsp\" method=\"POST\">\n");
      out.write("            <div class=\"row form-line\">\n");
      out.write("                <div class=\"col-3\">\n");
      out.write("                    <label class=\" \">Username:</label>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-8\">\n");
      out.write("                    <input type=\"text\" placeholder=\"Username\" name=\"username\" class=\"form-booking\"><br>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"row form-line\">\n");
      out.write("                <div class=\"col-3\">\n");
      out.write("                    <label class=\" \">Password:</label>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-8\">\n");
      out.write("                    <input type=\"password\" placeholder=\"password\"  name=\"password\" class=\"form-booking\"><br>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <p><?php echo $error; ?></p>\n");
      out.write("            <button type=\"submit\" name=\"submit\" class=\"btn form-button btn-danger mr-2\">Login</button>\n");
      out.write("          </form>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("<script src=\"https://code.jquery.com/jquery-3.5.1.slim.min.js\" integrity=\"sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj\" crossorigin=\"anonymous\"></script>\n");
      out.write("<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns\" crossorigin=\"anonymous\"></script>\n");
      out.write("</body>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
