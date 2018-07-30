<%-- 
    Document   : Patient_Register
    Created on : May 18, 2018, 9:06:06 AM
    Author     : Satya
--%>

<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript">
            function currentDate(){
                var today = new Date().toISOString().split('T')[0];
                document.getElementsByName("txtDate")[0].setAttribute('min', today);
                }
        </script>
    </head>
    <body style="font-family: monospace;">
        <div style="background-color: teal; color: white; font-size: 22px;border:5px solid black;font-family: monospace" align="center">
            <h1>Welcome To Hospital Management System</h1></div>
        <div></div><br> 
            <form action="Patient_Reg_Status.jsp" method="get">
        <table style="border: 4px solid black;font-size: 20px;font-family: monospace;" align="center" cellpadding="15" cellspacing="10">
            <tr align="center"><td colspan="3"><h1 style="font-size: 27px">Patient Registration</h1></td></tr>    
            <tr><td>Aadhar No.</td><td align="center" colspan="3"><input type="number" name="aadhar" placeholder="Enter Aadhar Number" required></td></tr>
            <tr><td>Name</td><td align="center" colspan="3"><input type="text" name="pname" placeholder="Enter Patient's Name" required></td></tr>
            <tr>
            <td>Gender</td><td align="center"><input type="radio" name="gender" value="Male" required>Male</td>
            <td align="center"><input type="radio" name="gender" value="Female" required>Female</td>
            </tr>
            <tr><td>Mobile</td><td colspan="3" align="center"><input type="number" name="mobile" placeholder="Enter Mobile Number" required></td></tr>
                
            <tr><td>Select Doctor</td>
            <%
                    try{
                Connection C=null;
                Class.forName("com.mysql.jdbc.Driver");
                C=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_management","root","root");
                ResultSet R=null;
                PreparedStatement P=C.prepareStatement("select name,specialization from doctor");
                R=P.executeQuery();
            %>     
            <td colspan="3" align="center">
                    <select name="D1">
                        <%    while(R.next()){ %>
                        <option value="<%out.print(R.getString("name"));%>" ><%out.print(R.getString("name")+" ("+R.getString("specialization")+")");%></option>
                        <% } %>
                    </select>
            </td>
            <%
                      }
            catch(Exception E){
                        out.println(E);
                    }
            %>
            </tr>
            
            
            <tr><td>Address</td><td colspan="3" align="center"><textarea rows="4" cols="25" name="address" required></textarea></td></tr>
                    <tr><td>Date of Appointment</td><td colspan="3" align="center">
            <input type="date"  id="txtDate" required="Required" class="form-control" name="txtDate" placeholder="Select suitable date"  onclick="currentDate()"
                   style="color: maroon; font-family: monospace; font-size: 18px"/>
                </td></tr>
        <tr align="center"><td colspan="3"><input type="submit" value="Book Appointment" style="font-size: 19px"></td>
                </tr>
        
        </table>
            </form>
            <form><div align="right"><button formaction="User_Select.html" style="font-size: 20px;">Home</button></div></form>
    </body>
</html>
