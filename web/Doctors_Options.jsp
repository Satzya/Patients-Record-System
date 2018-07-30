<%-- 
    Document   : Doctors_Options
    Created on : May 21, 2018, 8:15:48 AM
    Author     : Satya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Doctors_Options</title>
    </head>
    <body>
        <%
        if(session.getAttribute("usrnme")==null &&  session.getAttribute("pswd")==null){
                        response.sendRedirect("User_Select.html");
            }
        %>
        <div style="background-color: teal; color: white; font-size: 22px;border:5px solid black;font-family: monospace" align="center">
        <h1>Welcome To Hospital Management System</h1></div>
        <div></div><br>
    
        <h1 style="font-size: 30px;font-family: monospace;" align="center">Select the required option</h1>
        <form action="Doctors_Options_Select.jsp" method="get">
        <table style="border:0px solid black;font-size: 20px;font-family: monospace;" align="center" cellpadding="15" cellspacing="10">
            <tr>
                <td><h1>Options</h1></td>
                <td><select style="font-size: 27px;font-family: monospace;" name="v1">
                    <option value="Add Doctors" >Add Doctors</option>
                    <option value="View Doctors">View Doctors</option>
                    <option value="Delete Doctors">Delete Doctors</option></select>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Proceed" style="font-size: 30px;font-family: monospace;">
                </td>
            </tr>
        </table>
        </form>
        <form><div align="right"><button formaction="Logout.jsp" style="font-size: 20px;">Logout</button></div></form>
    </body>
</html>
