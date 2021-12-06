package org.apache.jsp.user;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class booking_jsp extends org.apache.jasper.runtime.HttpJspBase
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
  
    if((String)session.getAttribute("username") == null){
        response.sendRedirect("../login.jsp");
    }

      out.write('\n');
      out.write('\n');
  
        Connection con;
        Statement statement = null;
        Class.forName("com.mysql.jdbc.Driver");
        con =DriverManager.getConnection("jdbc:mysql://localhost:3306/booking","root","");
        String s_user_id = (String)session.getAttribute("user_id");

      out.write("\n");
      out.write("      ");

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
      
      out.write("\n");
      out.write("      <script>\n");
      out.write("              alert(\"Bus is full, book for the next one!\");\n");
      out.write("      </script>\n");
      out.write("      ");

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
        
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <title>Ticket Booking</title>\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css\" integrity=\"sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l\" crossorigin=\"anonymous\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"../styles/bootstrap-4.3.1-dist/css/bootstrap.min.css\">\n");
      out.write("  <script type=\"text/javascript\" src=\"../styles/bootstrap-4.3.1-dist/js/bootstrap.min.js\"></script>\n");
      out.write("    <link rel=\"stylesheet\" href=\"../styles/Sidebar.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"../styles/StatCard.css\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"../styles/forms.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"../styles/index.css\">\n");
      out.write("    <link rel=\"icon\" href=\"../img/icon.png\" type=\"image/png\">\n");
      out.write("</head>\n");
      out.write("<body>   \n");
      out.write("    <div class=\"wrapper\" style=\"background-color: '#f6f5fa'\">\n");
      out.write("        <div class=\"container-fluid\">\n");
      out.write("          <div class=\"row\">\n");
      out.write("            <!-- Nav start -->\n");
      out.write("            <nav class=\"col-md-2 d-none d-md-block sidebar\">\n");
      out.write("                <div class=\"sidebar-sticky\">\n");
      out.write("                  <div class=\"sidebar-img text-center mt-5\">\n");
      out.write("                    <p><img src=\"../img/icon.png\" alt=\"Logo\" width=\"150\" height=\"150\" /></p>\n");
      out.write("                  </div>\n");
      out.write("                  <ul class=\"nav flex-column dash-nav\">\n");
      out.write("                  <li class=\"nav-item\"><a href=\"dashboard.jsp\" class=\"nav-link\">Dashboard</a></li>\n");
      out.write("                    <li class=\"nav-item\"><a href=\"booking.jsp\" class=\"nav-link active\">Book Ticket</a></li>\n");
      out.write("                    <li class=\"nav-item\"><a href=\"activeTickets.jsp\" class=\"nav-link\">Active Tickets</a></li>\n");
      out.write("                    <li class=\"nav-item\"><a href=\"expiredTickets.jsp\" class=\"nav-link\">Expired Tickets</a></li>\n");
      out.write("                    <!-- <li class=\"nav-item\"><a href=\"passwordChange.jsp\" class=\"nav-link\">Change Password</a></li> -->\n");
      out.write("                    <li class=\"nav-item ml-3\"><button type=\"button\" class=\"btn btn-warning py-1 mt-3\"><a href=\"logout.jsp\" class=\"text-dark\">Logout</a></button></li>\n");
      out.write("                  </ul>\n");
      out.write("                </div>\n");
      out.write("              </nav>\n");
      out.write("          </div>\n");
      out.write("            <!-- nav end -->\n");
      out.write("            <main\n");
      out.write("              role=\"main\"\n");
      out.write("              class=\"col-md-9 ml-sm-auto col-lg-10 main-content pb-4\"\n");
      out.write("              style=\"background-color: '#000'\"\n");
      out.write("            >\n");
      out.write("            <div class=\"text-center form-cont mb-5\">\n");
      out.write("      <h3>Booking</h3>\n");
      out.write("      <p>Book your transport ticket by filling the bellow form</p>\n");
      out.write("      <form action=\"booking.jsp\" method=\"POST\">\n");
      out.write("        <div class=\"row form-line\">\n");
      out.write("          <div class=\"col-3\">\n");
      out.write("            <label class=\" \">Destination:</label>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"col-8\">\n");
      out.write("            <select name=\"ligne\" class=\"form-booking\">\n");
      out.write("                    ");

           PreparedStatement stmt;
           con =DriverManager.getConnection("jdbc:mysql://localhost:3306/booking","root","");
          Class.forName("com.mysql.jdbc.Driver");
          con =DriverManager.getConnection("jdbc:mysql://localhost:3306/booking","root","");;
          PreparedStatement pst=con.prepareStatement(  "select * from ligne");  
          ResultSet rslt;
          rslt=pst.executeQuery(); 
          int no=0;
        while(rslt.next()){
        
      out.write("\n");
      out.write("             <option value=\"");
      out.print(rslt.getString("ligne_id") );
      out.write("\" name=\"ligne_id\">");
      out.print(rslt.getString("departure") );
      out.write(" - ");
      out.print(rslt.getString("destination") );
      out.write(' ');
      out.write('(');
      out.print(rslt.getString("price") );
      out.write(")Rwf</option>\n");
      out.write("        ");
}
      out.write("\n");
      out.write("            </select><br>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"row form-line\">\n");
      out.write("          <div class=\"col-3\">\n");
      out.write("            <label >Time:</label>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"col-8\">\n");
      out.write("            <input type=\"datetime-local\" name=\"ticket_time\" class=\"form-booking\"><br>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("        <p class=\"error-red\"><?php echo $error ?></p>\n");
      out.write("          <button type=\"submit\" name=\"submit\" class=\"btn form-button btn-warning\">Book</button>\n");
      out.write("      </form>\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("            </main>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("      <script src=\"https://code.jquery.com/jquery-3.5.1.slim.min.js\" integrity=\"sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj\" crossorigin=\"anonymous\"></script>\n");
      out.write("      <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns\" crossorigin=\"anonymous\"></script>\n");
      out.write("      <footer>\n");
      out.write("</body>\n");
      out.write("</html>");
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
