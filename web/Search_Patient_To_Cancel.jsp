<%-- 
    Document   : Search_Patient_To_Cancel
    Created on : May 22, 2018, 7:59:58 PM
    Author     : Satya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result</title>
    </head>
    <body> 
        <div style="background-color: teal; color: white; font-size: 22px;border:5px solid black;font-family: monospace" align="center">
            <h1>Welcome To Hospital Management System</h1></div>
            <div></div><br>
        <form action="Delete_Select_Patient.jsp" >
        <table align="center" style="font-size: 28px;font-family: monospace;" cellspacing="15" cellpadding="10" border="0px solid black">
                    
                        <%
                            String pid=request.getParameter("id");
                            String date=request.getParameter("txtDate");
                            session.setAttribute("pid", pid);
                            session.setAttribute("date", date);
                        try{
                            int count=1;
                Connection C=null;
                Class.forName("com.mysql.jdbc.Driver");
                C=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_management","root","root");
                PreparedStatement P=C.prepareStatement("select * from appointment where pid=(?) and date=(?)");
                P.setString(1, request.getParameter("id"));
                P.setString(2, request.getParameter("txtDate"));
                ResultSet R=P.executeQuery();
                if(R.next()){
                    %>
                    <tr><td colspan="5" align="center"><h1 style="font-size: 40px">Appointment Details</h1></td></tr>
                    <tr><th>Serial No.</th><th>Patient ID</th><th>Doctor ID</th><th>Date of Appointment</th></tr>
                    <tr align="center">
                        <td><%=count++%></td>
                        <td><%out.print(R.getString(1));%></td>
                        <td><%out.print(R.getString(2));%></td>
                        <td><%out.print(R.getString(3));%></td>
                    </tr>
                    <tr align="center"><td colspan="5"><input type="submit" value="Delete" style="font-size: 25px;font-family: monospace"></td></tr>
                    <%
                }
else{
        %>
        <tr><td><h3>No such record exists.</h3></td></tr>
        <tr align="center"><td><button formaction="Cancel_Ticket.html" style="font-size: 20px;">Back</button></td></tr>
        <%
    }
                }
                catch(Exception E){
                        out.println("Exception"+E);
                        }
                        %>
                        
        </table>
                    </form>
    </body>
</html>
