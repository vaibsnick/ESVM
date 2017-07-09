<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Ankem.Control" %>
<%@page import="Ankem.ram" %>

<%
    HttpSession ss= request.getSession(false);
    
    String user = null;
    user=(String)ss.getAttribute("uid");
    
    Control web=new Control();
    ram b=new ram();
    
    b = web.RetreiveData(user);
%>

<!DOCTYPE html>
<html>
    
    <head>
        
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>My World</title>
    
    </head>
    
    <body bgcolor="pink">
        <center>
            <h1><font size="6">WELCOME</font></h1>
        </center>
            
            <div align="right">
            <a href="Update.jsp"> Update </a>
            &nbsp; | &nbsp;
            <a href="Delete.jsp" >Delete Profile</a>
            &nbsp; | &nbsp;
            <a href="Reset.jsp" >Reset Password</a>
            &emsp;
            </div>
            
            <br><br><br><br>
            <center>
                <form action="Login.jsp">
            <div style="WIDTH:400PX ; HEIGHT:240PX ; BACKGROUND-COLOR:#ABCDEF ; BORDER : 2PX SOLID BLACK">
                <table>
                <tr><td>&emsp;</td></tr>
                
                <tr><td>Name</td><td>&emsp; :- &emsp;</td><td> <%= b.getName() %> </td></tr>
                
                <tr><td>&emsp;</td></tr>
                
                <tr><td>Roll No</td><td>&emsp; :- &emsp;</td><td> <%= b.getRoll()%> </td></tr>
                
                <tr><td>&emsp;</td></tr>
                
                <tr><td>Age</td><td>&emsp; :- &emsp;</td><td> <%= b.getAge() %> </td></tr>
                
                <tr><td>&emsp;</td></tr>
                
                <tr><td>Mobile No</td><td>&emsp; :- &emsp; </td> <td><%= b.getMobile() %> </td></tr>
                
                <tr><td>&emsp;</td></tr>
                
                <tr><td>Email Id</td><td>&emsp; :- &emsp;</td><td> <%= b.getEmail() %> </td></tr>
                
                <tr><td>&emsp;</td></tr>
                <tr><td>&emsp;</td></tr>
                
                <tr><td> &emsp; </td><td><button>Logout</button></td><td> &emsp; </td></tr>
            </table>
            </div>
        </center>
    </body>
    
</html>
