<%-- 
    Document   : Doctors_Delete_Select
    Created on : May 22, 2018, 9:23:21 PM
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
        <%
            try{
                Connection C=null;
                PreparedStatement P2;
                Class.forName("com.mysql.jdbc.Driver");
                C=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_management","root","root");
                PreparedStatement P=C.prepareStatement("select * from doctor where id=(?)");
                P.setString(1, request.getParameter("id"));
                ResultSet R=P.executeQuery();
                if(R.next()){
                    P2=C.prepareStatement("delete from doctor where id=(?)");
                    P.setString(1,request.getParameter("id"));
                    P.executeUpdate();
                    %>
                    <h2 align="center"> Deleted Successfully </h2>
                    <form align="center"><div><button formaction="Doctors_Delete.jsp" style="font-size: 20px;">Back</button> </div></form>
                    <%
                }
else{
    %>
    <h2 align="center">Specified ID is Invalid</h2>
    <form align="center"><div><button formaction="Doctors_Delete.jsp" style="font-size: 20px;">Back</button> </div></form>
    <%
}
            }
            catch(Exception E){
                out.println("Except"+E);
            }
        %>
    </body>
</html>
