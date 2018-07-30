<%-- 
    Document   : Patient_Reg_Status
    Created on : May 18, 2018, 11:44:30 PM
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
        <div style="background-color: teal; color: white; font-size: 22px;border:5px solid black;font-family: monospace" align="center">
            <h1>Welcome To Hospital Management System</h1></div>
        <div></div><br> 
        <%      
                
                
                    try{
                        String id=null;
                Connection C=null;PreparedStatement P2=null;ResultSet R2=null;
                Class.forName("com.mysql.jdbc.Driver");
                C=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_management","root","root");
                ResultSet R=null;
                PreparedStatement P=C.prepareStatement("insert into patient values (?,?,?,?,?)");
                P.setString(1, request.getParameter("aadhar"));
                P.setString(2, request.getParameter("pname"));
                P.setString(3, request.getParameter("gender"));
                P.setString(4, request.getParameter("mobile"));
                P.setString(5, request.getParameter("address"));
                P.executeUpdate();
                
                /**For id retrieval of doctor*/
                P=C.prepareStatement("select id from doctor where name=(?)");
                P.setString(1, (request.getParameter("D1")));
                R=P.executeQuery();
                while(R.next()){
                    id=R.getString("id");
                }
                
                /**For appointment entry*/
                P2=C.prepareStatement("select * from appointment where pid=(?) and date=(?)");
                P2.setString(1, request.getParameter("aadhar"));
                P2.setString(2, request.getParameter("txtDate"));
                R2=P2.executeQuery();
                if(R2.next()){
                    %>
                    <form><div align="center" style="font-family: monospace;"><h1>Booking Unsuccessful.<br> You already have an appointment being registered on 
                    <%out.print(request.getParameter("txtDate"));%>&nbsp;. Please select some other date.
                    <br><br><button formaction="Patient_Register.jsp" style="font-size: 20px;">Back</button></h1></div></form>
                    <%
                }
                else{
                P=C.prepareStatement("insert into appointment values (?,?,?)");
                P.setString(1, request.getParameter("aadhar"));
                P.setString(2, id);
                P.setString(3, request.getParameter("txtDate"));
                P.executeUpdate();
                %>
                <form>
                <table align="center" style="font-size: 30px;font-family: monospace;" cellspacing="15" cellpadding="5">
                    <tr><td colspan="2" align="center"><h1 style="font-size: 40px">Booking Successful</h1></td></tr>
                    <tr><td>Patient's Name</td><td><%out.print(request.getParameter("pname"));%></td></tr>
                    <tr><td>Patient Id</td><td><%out.print(request.getParameter("aadhar"));%></td></tr>
                    <tr><td>Gender</td><td><%out.print(request.getParameter("gender"));%></td></tr>
                    <tr><td>Doctor's Name</td><td><%out.print(request.getParameter("D1"));%></td></tr>
                    <tr><td>Doctor's Id</td><td><%out.print(id);%></td></tr>
                    <tr><td>Date of appointment</td><td><%out.print(request.getParameter("txtDate"));%></td></tr>
                    <tr align="center"><td colspan="2"><button formaction="Patient_Register.jsp" style="font-size: 20px;">Back</button></td></tr>
                </table>
                </form>
                <%
                }
                
                    }
                    catch(Exception E){
                        out.println("Exception  "+E);
                    }
            %>  
    </body>
</html>
