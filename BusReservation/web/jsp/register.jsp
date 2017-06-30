<%-- 
    Document   : register
    Created on : 1 Jun, 2017, 3:46:26 PM
    Author     : cdac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Reservation System</title>
    </head>
    <body>
        <%@include file="../jsp/subcomp/menupage.jsp" %>
    <center>         
        <h1>Registration Page</h1>

        <form action="../Register" method="post">
            Email:
            <input type="email" id="email" name="email" value=""/><br><br>
            Password:
            <input type="password" id="password" name="password" value=""/><br><br>
            Name:
            <input type="text" id="username" name="username" value=""/><br><br>
            Mobile:
            <input type="text" id="mobile" name="mobile" value=""/><br><br>
            Age:
            <input type="text" id="age" name="age" value=""/><br><br>
            Address:
            <input type="text" id="address" name="address" value=""/><br><br>

            <input type="submit" value="Submit"/>
        </form>
    </center>
</body>
</html>
