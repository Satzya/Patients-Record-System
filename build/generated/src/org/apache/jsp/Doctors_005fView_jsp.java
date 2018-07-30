package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class Doctors_005fView_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>View_Doctors</title>\n");
      out.write("    </head>\n");
      out.write("    ");

//        if(session.getAttribute("usrnme")==null &&  session.getAttribute("pswd")==null){
//                        response.sendRedirect("User_Select.html");
//            }
    
      out.write("\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <div style=\"background-color: teal; color: white; font-size: 22px;border:5px solid black;font-family: monospace\" align=\"center\">\n");
      out.write("<h1>Welcome To Hospital Management System</h1></div><br>\n");
      out.write("\n");
      out.write("<form>\n");
      out.write("                <table align=\"center\" style=\"font-size: 28px;font-family: monospace;\" cellspacing=\"5\" cellpadding=\"5\">\n");
      out.write("                    <tr><td colspan=\"7\" align=\"center\"><h1 style=\"font-size: 40px\">List of Doctors</h1></td></tr>\n");
      out.write("                    <tr><th>Serial No.</th><th>ID</th><th>Name</th><th>Gender</th><th>Mobile No.</th><th>Specialization</th><th>Address</th></tr>\n");
      out.write("                        ");

                        try{
                            int count=1;
                Connection C=null;
                Class.forName("com.mysql.jdbc.Driver");
                C=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_management","root","root");
                PreparedStatement P=C.prepareStatement("select * from doctor");
                ResultSet R=P.executeQuery();
                while(R.next()){
                    
      out.write("\n");
      out.write("                    <tr align=\"\">\n");
      out.write("                        <td>");
      out.print(count++);
      out.write("</td>\n");
      out.write("                        <td>");
out.print(R.getString(1));
      out.write("</td>\n");
      out.write("                        <td>");
out.print(R.getString(2));
      out.write("</td>\n");
      out.write("                        <td>");
out.print(R.getString(3));
      out.write("</td>\n");
      out.write("                        <td>");
out.print(R.getString(4));
      out.write("</td>\n");
      out.write("                        <td>");
out.print(R.getString(5));
      out.write("</td>\n");
      out.write("                        <td>");
out.print(R.getString(6));
      out.write("</td>\n");
      out.write("                    </tr>    \n");
      out.write("                    ");

                }
                }
                catch(Exception E){
                        out.println("Exception"+E);
                        }
                        
      out.write("\n");
      out.write("                        <tr align=\"left\"><td colspan=\"7\"><button formaction=\"Doctors_Options.jsp\" style=\"font-size: 20px;\">Back</button></td>\n");
      out.write("                        <td colspan=\"7\"><button formaction=\"Logout.jsp\" style=\"font-size: 20px;\">Logout</button></td></tr>\n");
      out.write("    </table>\n");
      out.write("    </form>\n");
      out.write("\n");
      out.write("    </body>\n");
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
