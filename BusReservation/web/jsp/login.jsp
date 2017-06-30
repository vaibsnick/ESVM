<%-- 
    Document   : login
    Created on : 1 Jun, 2017, 3:46:18 PM
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
        <h1>Login Page</h1>
        <form method="post" action="../Login">
            Email:
            <input type="email" id="email" name="email" value=""/><br><br>
            Password:
            <input type="password" id="password" name="password" value=""/><br><br>
            <input type="submit" value="SignIn"/>  
        </form>
        <a href="jsp/forgotpassword.jsp">Forgot Password</a>
        <a href="jsp/register.jsp">New User?</a>
    </center>
</body>
</html>
