<%-- 
    Document   : Doctors_Options_Select
    Created on : May 21, 2018, 8:30:20 AM
    Author     : Satya
--%>


<!DOCTYPE html>
<%
        if(request.getParameter("v1").equals("Add Doctors")){
            response.sendRedirect("Doctor_Register.jsp");
        }
        else if(request.getParameter("v1").equals("View Doctors")){
            response.sendRedirect("Doctors_View.jsp");
        }
        else if(request.getParameter("v1").equals("Delete Doctors")){
            response.sendRedirect("Doctors_Delete.jsp");
        }
%>
