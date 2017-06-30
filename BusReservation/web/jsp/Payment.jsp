<%-- 
    Document   : Payment
    Created on : 2 Jun, 2017, 3:16:45 PM
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
       
        <br> <br> <br>
        <%
            String seat_Selected = request.getParameter("sel_Seats");
        %>
        <h1>
            You have selected the following seats..<br>
            Seat No: <%=seat_Selected%><br>
            <a href="#">Click here</a> for payment.
        </h1>
        <hr>
        <br>
        <%@include file="../jsp/subcomp/footerpage.jsp" %>        
    </body>
</html>
