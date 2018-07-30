<%-- 
    Document   : Delete_Select
    Created on : May 22, 2018, 9:04:50 PM
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
                Connection C=null;
                Class.forName("com.mysql.jdbc.Driver");
                C=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_management","root","root");
                PreparedStatement P=C.prepareStatement("delete from appointment where pid=(?) and date=(?)");
                P.setString(1, (String) session.getAttribute("pid"));
                P.setString(2, (String) session.getAttribute("date"));
                int r=P.executeUpdate();
                out.println(r);
                if(r==1){
                %>
                <div><h2 align="center" style="font-family: monospace;font-size: 30px;">Appointment of Patient ID&nbsp;<%out.print((String)session.getAttribute("pid"));%>&nbsp;registered for <%out.print((String)session.getAttribute("date"));%>&nbsp;deleted successfully</h2></div>
                <form><div align="center"><button formaction="Cancel_Ticket.html" style="font-size: 20px;">Back</button></div></form>
                <% }
                else{%>
                <div><h2 align="center" style="font-family: monospace;font-size: 30px;">Deletion unsuccessful</h2></div>
                <form><div align="center"><button formaction="Cancel_Ticket.html" style="font-size: 20px;">Back</button></div></form>
                <%
                        }}
                        catch(Exception E){
                            out.print("Except"+E);
}
%>
    </body>
</html>
