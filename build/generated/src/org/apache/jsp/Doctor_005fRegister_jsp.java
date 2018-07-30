package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;

public final class Doctor_005fRegister_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div style=\"background-color: teal; color: white; font-size: 22px;border:5px solid black;font-family: monospace\" align=\"center\">\n");
      out.write("            <h1>Welcome To Hospital Management System</h1></div>\n");
      out.write("        <div></div><br> \n");
      out.write("            <form action=\"Doctor_Reg_Status.jsp\" method=\"get\">\n");
      out.write("        <table style=\"border: 4px solid black;font-size: 20px;font-family: monospace;\" align=\"center\" cellpadding=\"15\" cellspacing=\"10\">\n");
      out.write("            <tr align=\"center\"><td colspan=\"3\"><h1 style=\"font-size: 27px\">Doctor Registration</h1></td></tr>    \n");
      out.write("            <tr><td>Aadhar No.</td><td align=\"center\" colspan=\"3\"><input type=\"number\" name=\"aadhar\" placeholder=\"Enter Aadhar Number\" required></td></tr>\n");
      out.write("            <tr><td>Name</td><td align=\"center\" colspan=\"3\"><input type=\"text\" name=\"dname\" placeholder=\"Enter Name\" required></td></tr>\n");
      out.write("            <tr>\n");
      out.write("            <td>Gender</td><td align=\"center\"><input type=\"radio\" name=\"gender\" value=\"Male\" required>Male</td>\n");
      out.write("            <td align=\"center\"><input type=\"radio\" name=\"gender\" value=\"Female\" required>Female</td>\n");
      out.write("            </tr>\n");
      out.write("            <tr><td>Mobile</td><td colspan=\"3\" align=\"center\"><input type=\"number\" name=\"mobile\" placeholder=\"Enter Mobile Number\" required></td></tr>\n");
      out.write("                \n");
      out.write("            <tr><td>Select Doctor</td>\n");
      out.write("            \n");
      out.write("            <td colspan=\"3\" align=\"center\">\n");
      out.write("                    <select name=\"D1\">\n");
      out.write("                        <option value=\"Medicine\">Medicine</option>\n");
      out.write("                        <option value=\"Surgeon\">Surgeon</option>\n");
      out.write("                        <option value=\"Ophthalmology\">Ophthalmology</option>\n");
      out.write("                        <option value=\"Radiology\">Radiology</option>\n");
      out.write("                        <option value=\"E.N.T.\">E.N.T.</option>\n");
      out.write("                        <option value=\"Obstetrics & Gynaecology\">Obstetrics & Gynaecology</option>\n");
      out.write("                         <option value=\"Paediatrics\">Paediatrics</option>\n");
      out.write("                    </select>\n");
      out.write("            </td>\n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
      out.write("            </form>\n");
      out.write("        </body>\n");
      out.write("</html>\n");
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
