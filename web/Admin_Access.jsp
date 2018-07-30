<%-- 
    Document   : Admin_Access
    Created on : May 20, 2018, 9:32:37 PM
    Author     : Satya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        </head>
    <body>
                <%      
                    String usrnme=request.getParameter("usrnme");
                    String pswd=request.getParameter("pswd");
                    session.setAttribute("usrnme", usrnme);
                    session.setAttribute("pswd", pswd);
                    try{
                Connection C=null;
                Class.forName("com.mysql.jdbc.Driver");
                C=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_management","root","root");
                PreparedStatement P=C.prepareStatement("select * from admin where usrnme=(?) and pswd=(?)");
                P.setString(1, request.getParameter("usrnme"));
                P.setString(2, request.getParameter("pswd"));
                ResultSet R=P.executeQuery();
                if(R.next()){
                    response.sendRedirect("Doctors_Options.jsp");
                }
                else{
                    response.sendRedirect("Admin_Login.html");
                }
                }
                catch(Exception E){
                        out.println("Excp"+E);
                        }
                %>
    </body>
</html>
