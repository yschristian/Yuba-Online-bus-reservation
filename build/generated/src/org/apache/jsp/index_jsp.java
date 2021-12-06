package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <title>Book It</title>\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css\" integrity=\"sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l\" crossorigin=\"anonymous\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"styles/bootstrap-4.3.1-dist/css/bootstrap.min.css\">\n");
      out.write("  <script type=\"text/javascript\" src=\"styles/bootstrap-4.3.1-dist/js/bootstrap.min.js\"></script>\n");
      out.write("  <link rel=\"stylesheet\" href=\"styles/style.css\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"styles/forms.css\">\n");
      out.write("  <link rel=\"icon\" href=\"img/icon.png\" type=\"image/png\">\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("<!-- navbar -->\n");
      out.write("    <nav class=\"navbar navbar-inverse\">\n");
      out.write("        <div class=\"container-fluid\">\n");
      out.write("          <div class=\"navbar-header\">\n");
      out.write("            <a class=\"navbar-brand logo\" href=\"index.jsp\"><img src=\"img/icon.png\" width=\"40px\" height=\"40px\"/><span>BOOK IT</span></a>\n");
      out.write("          </div>\n");
      out.write("          <ul class=\"nav navbar-nav d-inline\">\n");
      out.write("            <div class=\"d-inline\">\n");
      out.write("              <li class=\"d-inline nav-link activelink \"><a href=\"index.jsp\">Home</a></li>\n");
      out.write("              <li class=\"d-inline nav-link\"><a href=\"login.jsp\">Booking</a></li>\n");
      out.write("              <li class=\"d-inline nav-link\"><a href=\"contact.jsp\">Contact Us</a></li>\n");
      out.write("              <li class=\"d-inline nav-link \"><a href=\"login.jsp\">Login</a></li>\n");
      out.write("            </div>\n");
      out.write("          </ul>\n");
      out.write("        </div>\n");
      out.write("    </nav>\n");
      out.write("<!-- landing image -->\n");
      out.write("    <div class=\" nav-background\">\n");
      out.write("        <h1 class=\"h-title\">Book Your Ticket Online</h1>\n");
      out.write("        <a class=\"btn btn-success book-now-btn\" href=\"login.jsp\">Book Now</a>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"section-cont\">\n");
      out.write("        <div class=\"about-home pb-5\">\n");
      out.write("            <h1 class=\"text-center price-t\">Book It</h1>\n");
      out.write("            <div class=\" pl-5 pt-1 text-center\">\n");
      out.write("                <p style=\"font-size: 24px;font-family: 'Brush Script MT', cursive;\"><span>Book It</span> is a bus and ticket management web app that helps Passengers book their tickets online<br> \n");
      out.write("                and helps transportation companies manage their buses online,<br>\n");
      out.write("                streamline their business and maximise their revenue.<br>\n");
      out.write("                We help your movements acrros the country as easy as it comes.</p>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("          <!-- services -->\n");
      out.write("\n");
      out.write("        <div class=\"row pl-4 pr-4 mbr-justify-content-center\">\n");
      out.write("            <div class=\"col-lg-4 mbr-col-md-10\">\n");
      out.write("                <div class=\"wrap\">\n");
      out.write("                    <div class=\"text-wrap vcenter\">\n");
      out.write("                        <h2 class=\" mbr-bold mbr-section-title3 display-5\">Reschedule Your ticket\n");
      out.write("                        </h2>\n");
      out.write("                        <p class=\" text1 mbr-text display-6\">You can postpone or even cancel your tickets as long as your ticket is 15 min behind its due time. </p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-lg-4 mbr-col-md-10\">\n");
      out.write("                <div class=\"wrap\">\n");
      out.write("                    <div class=\"text-wrap vcenter\">\n");
      out.write("                        <h2 class=\" mbr-bold mbr-section-title3 display-5\">Book Ticket Online\n");
      out.write("                        </h2>\n");
      out.write("                        <p class=\" text1 mbr-text display-6\">You can now book your tickets Online,To hell with those long lines. </p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-lg-4 mbr-col-md-10\">\n");
      out.write("                <div class=\"wrap\">\n");
      out.write("                    <div class=\"text-wrap vcenter\">\n");
      out.write("                        <h2 class=\" mbr-bold mbr-section-title3 display-5\">Pay Online\n");
      out.write("                        </h2>\n");
      out.write("                        <p class=\" text1 mbr-text display-6\">It is just one click and you are done with payments,payments have never been simpler </p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <section id=\"price-sec\">\n");
      out.write("      <h1 class=\"text-center price-t\">We connect people with places</h1>\n");
      out.write("      <div class=\"container\">\n");
      out.write("          <div class=\"text-center\">\n");
      out.write("              <div class=\"row \">\n");
      out.write("                  <div class=\"col-md-3\">\n");
      out.write("                      <ul class=\"plan\">\n");
      out.write("                          <li class=\"plan-head c-b\">Southern province</li>\n");
      out.write("                          <li>Kamonyi</li>\n");
      out.write("                          <li>Muhanga</li>\n");
      out.write("                          <li>Ruhango</li>\n");
      out.write("                          <li>Huye</li>\n");
      out.write("                          <li class=\"bottom\"><a href=\"login.jsp\" class=\"btn btn-danger\">Book Now</a></li>\n");
      out.write("                      </ul>\n");
      out.write("                  </div>\n");
      out.write("                  <div class=\"col-md-3\">\n");
      out.write("                      <ul class=\"plan\">\n");
      out.write("                          <li class=\"plan-head\">Northern Province</li>\n");
      out.write("                          <li>Rulindo</li>\n");
      out.write("                          <li>Musanze</li>\n");
      out.write("                          <li>Gicumbi</li>\n");
      out.write("                          <li>Burera</li>\n");
      out.write("                          <li class=\"bottom\"><a href=\"login.jsp\" class=\"btn btn-primary\">Book Now</a></li>\n");
      out.write("                      </ul>\n");
      out.write("                  </div>\n");
      out.write("                  <div class=\"col-md-3\">\n");
      out.write("                      <ul class=\"plan\">\n");
      out.write("                          <li class=\"plan-head c-v\">Eastern Province</li>\n");
      out.write("                          <li>Bugesera</li>\n");
      out.write("                          <li>Rwamagana</li>\n");
      out.write("                          <li>Kayonza</li>\n");
      out.write("                          <li>Nyagatare</li>\n");
      out.write("                          <li class=\"bottom\"><a href=\"login.jsp\" class=\"btn btn-success\">Book Now</a></li>\n");
      out.write("                      </ul>\n");
      out.write("                  </div>\n");
      out.write("                  <div class=\"col-md-3\">\n");
      out.write("                      <ul class=\"plan\">\n");
      out.write("                          <li class=\"plan-head c-a\">Western Province</li>\n");
      out.write("                          <li>Ngororero</li>\n");
      out.write("                          <li>Karongi</li>\n");
      out.write("                          <li>Rubavu</li>\n");
      out.write("                          <li>Rusizi</li>\n");
      out.write("                          <li class=\"bottom\"><a href=\"login.jsp\" class=\"btn btn-secondary\">Book Now</a></li>\n");
      out.write("                      </ul>\n");
      out.write("                  </div>\n");
      out.write("\n");
      out.write("              </div>\n");
      out.write("          </div>\n");
      out.write("      </div>\n");
      out.write("  </section>\n");
      out.write("  <!-- END PRICE SECTION-->\n");
      out.write("  <div class=\"color-bg-one\" id=\"footer1\">\n");
      out.write("      &copy 2021 ABC ltd | All Right Reserved \n");
      out.write("    </div>\n");
      out.write("<script src=\"https://code.jquery.com/jquery-3.5.1.slim.min.js\" integrity=\"sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj\" crossorigin=\"anonymous\"></script>\n");
      out.write("<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns\" crossorigin=\"anonymous\"></script>\n");
      out.write("</body>\n");
      out.write("\n");
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
