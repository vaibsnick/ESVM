<%-- 
    Document   : Login
    Created on : Jul 13, 2017, 3:57:46 PM
    Author     : Vaibs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    
    <center>
        <BR><BR>
        <h1><i>Student Verification Management</i></h1>
    </center>         
    
    <br><br><br><br>
            
        <center>
        <div class="back">
        <form action="./Login" method="post">
            <table>
                <tr><td> &emsp; </td></tr>

                <TR>
                    <TD>USERNAME</TD><td> &emsp; </td>
                    <TD><input id="user" type="text" name="user" placeholder="Enter username"></TD>
                </TR>

                <tr><td> &emsp; </td></tr>

                <TR>
                    <TD>PASSWORD</TD><td> &emsp; </td>
                    <TD><input id="pass" type="password" name="pass" placeholder="Enter password"></TD>
                </TR>

                <tr><td> &emsp; </td></tr>
            </table>
            
            <table>
                <tr>
                   <td> &emsp;&emsp; </td>
                   <td><button onclick="funcb()" >Login</button></td>
                   <td> &emsp;&emsp; </td>
                   <td><button onclick="funcc()" >Forgot Password</button></td>
                   <td> &emsp;&emsp; </td>
                </tr>
            
                <tr><td> &emsp; </td></tr>
            </table>
        </form>
        </div>
        </center>
  
</body>
</html>
