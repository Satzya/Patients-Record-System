<%-- 
    Document   : Doctor_Register
    Created on : May 19, 2018, 9:06:06 AM
    Author     : Satya
--%>

<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        if(session.getAttribute("usrnme")==null && session.getAttribute("pswd")==null){
//            out.println(session.getAttribute("usrnme"));
                        response.sendRedirect("User_Select.html");
                    }    
        %>
        <div style="background-color: teal; color: white; font-size: 22px;border:5px solid black;font-family: monospace" align="center">
            <h1>Welcome To Hospital Management System</h1></div>
        <div></div><br> 
            <form action="Doctor_Reg_Status.jsp" method="get">
        <table style="border: 4px solid black;font-size: 20px;font-family: monospace;" align="center" cellpadding="15" cellspacing="10">
            <tr align="center"><td colspan="3"><h1 style="font-size: 27px">Doctor Registration</h1></td></tr>    
            <tr><td>Aadhar No.</td><td align="center" colspan="3"><input type="number" name="aadhar" placeholder="Enter Aadhar Number" required></td></tr>
            <tr><td>Name</td><td align="center" colspan="3"><input type="text" name="dname" placeholder="Enter Name" required></td></tr>
            <tr>
            <td>Gender</td><td align="center"><input type="radio" name="gender" value="Male" required>Male</td>
            <td align="center"><input type="radio" name="gender" value="Female" required>Female</td>
            </tr>
            <tr><td>Mobile</td><td colspan="3" align="center"><input type="number" name="mobile" placeholder="Enter Mobile Number" required></td></tr>
                
            <tr><td>Select Specialization</td>
            
            <td colspan="3" align="center">
                    <select name="D1">
                        <option value="Medicine">Medicine</option>
                        <option value="Surgeon">Surgeon</option>
                        <option value="Ophthalmology">Ophthalmology</option>
                        <option value="Radiology">Radiology</option>
                        <option value="E.N.T.">E.N.T.</option>
                        <option value="Obstetrics & Gynaecology">Obstetrics & Gynaecology</option>
                         <option value="Paediatrics">Paediatrics</option>
                    </select>
            </td>
            <tr><td>Address</td><td colspan="3" align="center"><textarea rows="4" cols="25" name="address" required></textarea></td></tr>
            <tr><td colspan="3" align="center"><input type="submit" value="Register Details" style="font-size: 20px"></td></tr>
        </table>
            </form>
        <div align="right">
            <form action="Logout.jsp">
                <input type="submit" value="Logout" style="font-size: 20px;"></form>
        </div>
        </body>
</html>
