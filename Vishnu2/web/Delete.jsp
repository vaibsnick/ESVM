<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete</title>
        <STYLE>
        DIV {WIDTH:400PX ; HEIGHT:165PX}.ST{BACKGROUND-COLOR:#ABCDEF ; BORDER : 2PX SOLID BLACK}
        </STYLE>
    </head>
    <body bgcolor="pink">
       
        <br><br><br><br><br><br><br>
        
    <center>
        <div CLASS="ST">
        <form action="Servlet5">
            <table>
                <tr><td> &emsp; </td></tr>

                <TR>
                    <TD>Roll No</TD><td> &emsp; </td>
                    <TD><input type="text" name="roll"></TD>
                </TR>

                <tr><td> &emsp; </td></tr>
            
                <TR>
                    <TD>Password</TD><td> &emsp; </td>
                    <TD><input type="password" name="pas"></TD>
                </TR>

                <tr><td> &emsp; </td></tr>
            </table>
            
            <table>
                <tr><td> &emsp; </td><td><button>Confirm Delete</button></td><td> &emsp; </td></tr>
            </table>
        </form>
        </div>
    </center>
    </body>
</html>
