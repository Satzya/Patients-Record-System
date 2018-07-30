<%-- 
    Document   : Doctors_Delete
    Created on : May 21, 2018, 9:13:44 AM
    Author     : Satya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete_Doctors</title>
    </head>
        <%
        if(session.getAttribute("usrnme")==null &&  session.getAttribute("pswd")==null){
                        response.sendRedirect("User_Select.html");
            }
    %>
    <body>
        <div style="background-color: teal; color: white; font-size: 22px;border:5px solid black;font-family: monospace" align="center">
        <h1>Welcome To Hospital Management System</h1></div><br>

        
        
                <table align="center" style="font-size: 28px;font-family: monospace;" cellspacing="5" cellpadding="5">
                    <tr><td colspan="7" align="center"><h1 style="font-size: 40px">List of Doctors</h1></td></tr>
                    <tr><th>Serial No.</th><th>ID</th><th>Name</th><th>Gender</th><th>Mobile No.</th><th>Specialization</th><th>Address</th></tr>
                        <%
                        try{
                            int count=1;
                Connection C=null;
                Class.forName("com.mysql.jdbc.Driver");
                C=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_management","root","root");
                PreparedStatement P=C.prepareStatement("select * from doctor");
                ResultSet R=P.executeQuery();
                while(R.next()){
                    %>
                    <tr align="">
                        <td><%=count++%></td>
                        <td><%out.print(R.getString(1));%></td>
                        <td><%out.print(R.getString(2));%></td>
                        <td><%out.print(R.getString(3));%></td>
                        <td><%out.print(R.getString(4));%></td>
                        <td><%out.print(R.getString(5));%></td>
                        <td><%out.print(R.getString(6));%></td>
                    </tr>    
                    <%
                }
                }
                catch(Exception E){
                        out.println("Exception"+E);
                        }
                        %>
                </table>
<br><br><br><hr>
        <div style="font-size: 15px;font-family: monospace;" align="center"><h1>Please enter the specific ID of Doctor</h1></div>
        <br><br>
                
        <form action="Doctors_Delete_Select.jsp" method="post">
                <table align="center" style="font-size: 28px;font-family: monospace;" cellspacing="5" cellpadding="20">
                    <tr><td>Enter ID</td><td><input type="number" placeholder="Enter Doctor's ID" name="id"></td></tr>
                    <tr><td colspan="2" align="center"><input type="submit" value="Delete" style="font-size: 23px;" required></td></tr>
                </table>
                    </form>
        <br><br><br><br>
                <form>                        
                    <div>  <button formaction="Doctors_Options.jsp" style="font-size: 20px;">Back</button> </div>
                    <div align="right"> <button formaction="Logout.jsp" style="font-size: 20px;">Logout</button> </div>
                  
</form>
    </body>
</html>