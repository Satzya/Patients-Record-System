<%-- 
    Document   : Patients_List
    Created on : May 20, 2018, 8:41:00 AM
    Author     : Satya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Patients_List</title>
    </head>
    <body>
        <div style="background-color: teal; color: white; font-size: 22px;border:5px solid black;font-family: monospace" align="center">
<h1>Welcome To Hospital Management System</h1></div>
<div></div><br>
<table align="center" style="font-size: 25px;font-family: monospace;" cellspacing="10" cellpadding="5" border="0px solid black">
<tr><td colspan="4" align="center"><h1 style="font-size: 40px"><h1>Welcome 
                <% 
                    Connection C=null;
                   ResultSet R=null; ResultSet R2=null; ResultSet R3=null; PreparedStatement P2=null; PreparedStatement P3=null;
                    try{
                   Class.forName("com.mysql.jdbc.Driver");
                   C=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_management","root","root");
                   P3=C.prepareStatement("select name from doctor where id=(?)");
                   P3.setString(1, request.getParameter("id"));
                   R3=P3.executeQuery();
                    while(R3.next()){
                         out.print(R3.getString("name")); }
                        }
                    catch(Exception E){
                        
                    }
                
                %> </h1></td></tr>
<tr><td colspan="4" align="center"><h1 style="font-size: 25px">Your List of Patients on <%out.print(request.getParameter("txtDate"));%></h1></td></tr>
<tr><th colspan="2" align="center">Sl. No.</th><th>Patient ID</th><th>Patient Name</th></tr>

<% 
        try{
            int j=1;
            String pid=null,name;
            PreparedStatement P=C.prepareStatement("select pid from appointment where did=(?) and date=(?)");
            P.setString(1, request.getParameter("id"));
            P.setString(2, request.getParameter("txtDate"));
            R=P.executeQuery();
            while(R.next()){    
        %>
        <tr><td colspan="2" align="left">
        <%=j++%></td><td align="left">
        <%
                out.print(R.getString("pid"));
                %>
    </td><td align="left">
        <%
                pid=R.getString("pid");
                P2=C.prepareStatement("select name from patient where id=(?)");
                P2.setString(1,pid);
                R2=P2.executeQuery();
                while(R2.next())
                out.print(R2.getString("name"));
                %> 
        </td></tr>
        <%
        }
        }
        catch(Exception E){
        
        }
       %> 
</table>
<form><div align="center"><button formaction="Doctor_Access.html" style="font-size: 20px;">Back</button></div></form>
    </body>
</html>
