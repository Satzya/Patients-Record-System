<%-- 
    Document   : Users.jsp
    Created on : May 10, 2018, 5:23:54 PM
    Author     : Satya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%
        if(request.getParameter("v1").equals("Admin")){
           response.sendRedirect("Admin_Login.html");
        }
        else if(request.getParameter("v1").equals("Doctor")){
            response.sendRedirect("Doctor_Access.html");
        }
        else if(request.getParameter("v1").equals("Patient")){
            response.sendRedirect("Patient_Register.jsp");
        }
        else if(request.getParameter("v1").equals("Cancel Appointment")){
            response.sendRedirect("Cancel_Ticket.html");
        }
        %>
    </body>
</html>
