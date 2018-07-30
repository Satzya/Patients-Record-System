<%-- 
    Document   : Doctor_Reg_Status
    Created on : May 19, 2018, 10:01:28 PM
    Author     : Satya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div style="background-color: teal; color: white; font-size: 22px;border:5px solid black;font-family: monospace" align="center">
            <h1>Welcome To Hospital Management System</h1></div>
        <div></div><br> 
        <%      
            if(session.getAttribute("usrnme")==null &&  session.getAttribute("pswd")==null){
                        response.sendRedirect("User_Select.html");
            }    
                try{
                String id=null;
                Connection C=null;
                Class.forName("com.mysql.jdbc.Driver");
                C=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_management","root","root");
                ResultSet R=null;
                PreparedStatement P=C.prepareStatement("insert into doctor values (?,?,?,?,?,?)");
                P.setString(1, request.getParameter("aadhar"));
                P.setString(2, request.getParameter("dname"));
                P.setString(3, request.getParameter("gender"));
                P.setString(4, request.getParameter("mobile"));
                P.setString(5, request.getParameter("D1"));
                P.setString(6, request.getParameter("address"));
                P.executeUpdate();
                %>
                <table align="center" style="font-size: 30px;font-family: monospace;" cellspacing="15" cellpadding="5">
                    <tr><td colspan="2" align="center"><h1 style="font-size: 40px">Doctor Registration Successful</h1></td></tr>
                    <tr><td>Doctor's Name</td><td><%out.print(request.getParameter("dname"));%></td></tr>
                    <tr><td>Doctor Id</td><td><%out.print(request.getParameter("aadhar"));%></td></tr>
                    <tr><td>Gender</td><td><%out.print(request.getParameter("gender"));%></td></tr>
                    <tr><td>Mobile No.</td><td><%out.print(request.getParameter("mobile"));%></td></tr>
                    <tr><td>Specialization</td><td><%out.print(request.getParameter("D1"));%></td></tr>
                    <tr><td>Address</td><td><%out.print(request.getParameter("address"));%></td></tr>
                    <tr><form>
                        <td align="center"><button formaction="Doctor_Register.jsp" style="font-size: 20px;">Back</button></td>
                        <td align="center"><button formaction="Logout.jsp" style="font-size: 20px;">Logout</button></td></form>
                    </tr>
                </table>
                
                <%
                
                    }
                    catch(Exception E){
                        out.println("Exc"+E);
                    }
        %>
    </body>
</html>
