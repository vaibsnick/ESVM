<%-- 
    Document   : index
    Created on : 1 Jun, 2017, 3:42:24 PM
    Author     : cdac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
 int hitCount = 1;  
 if(application.getAttribute("visitorCount") == null){
   application.setAttribute("visitorCount",hitCount);  
 }else{
    hitCount = Integer.parseInt(application.getAttribute("visitorCount").toString());
    hitCount++;
    application.setAttribute("visitorCount",hitCount); 
 }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Reservation System</title>
    </head>
    <body>
        <h1>Online Reservation System</h1>        
        <%@include file="jsp/subcomp/menupage.jsp" %>
        <%@include file="jsp/subcomp/conentpage.jsp" %>        
        <%@include file="jsp/subcomp/footerpage.jsp" %>        
        Visitor Count: <%=hitCount%>
    </body>
</html>

