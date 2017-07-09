<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
       
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reset</title>
        <STYLE>
        DIV {WIDTH:400PX ; HEIGHT:245PX}.ST{BACKGROUND-COLOR:#ABCDEF ; BORDER : 2PX SOLID BLACK}
        </STYLE>
    </head>
    
    <body bgcolor="pink">
    
    <center>
        <BR><BR>
        <h1><i>Password Reset</i></h1>
    </center>
    
    <br><br>
            
        <center>
        <form id="ser">
            <div CLASS="ST">
            <table>
                <tr><td> &emsp; </td></tr>

                <TR>
                    <TD>Roll No</TD><td> &emsp; </td>
                    <TD><input type="#number" name="roll" required></TD>
                </TR>

                <tr><td> &emsp; </td></tr>

                <TR>
                    <TD>E-mail</TD><td> &emsp; </td>
                    <TD><input type="text" name="mai" required></TD>
                </TR>

                <tr><td> &emsp; </td></tr>
                
                <tr><td>New Password</td><td> &emsp; </td><td><input name="pass" id="p" type="password" required></td></tr>
                <tr><td> &emsp; </td></tr>
                <tr><td>Confirm Password</td><td> &emsp; </td><td><input id="cp" type="password" required></td></tr>
                <tr><td> &emsp; </td></tr>
                <tr>
                   <td> &emsp;&emsp; </td>
                   <td><button id="demo" onclick="func()" >Submit</button></td>
                   <td> &emsp;&emsp; </td>
                </tr>
            </table>
            </div>
        </form>
        </center>
    
    <script>
        function func()
        {
        if(document.getElementById('p').value !== document.getElementById('cp').value ) 
            {
                alert(document.getElementById('demo').value ='Password Donot Match');
            }
        else
            document.getElementById('ser').action="Servlet3";
        }
    </script>
    
    </body>
    
</html>