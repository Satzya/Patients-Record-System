<%-- 
    Document   : Logout
    Created on : May 20, 2018, 10:27:21 PM
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
            session.invalidate();
            response.sendRedirect("User_Select.html");
            %>
    </body>
</html>
