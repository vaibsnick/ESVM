<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index</title>
        <STYLE>
        DIV {WIDTH:400PX ; HEIGHT:165PX}.ST{BACKGROUND-COLOR:#ABCDEF ; BORDER : 2PX SOLID BLACK}
        </STYLE>
    </head>
    
    <body bgcolor="pink">
    
    <center>
        <BR><BR>
        <h1><i>Welcome To C-DAC HYDERABAD</i></h1>
    </center>         
    
    <br><br><br><br>
            
        <center>
        <div CLASS="ST">
        <form ID="nex">
            <table>
                <tr><td> &emsp; </td></tr>

                <TR>
                    <TD>USERNAME</TD><td> &emsp; </td>
                    <TD><input type="text" name="use" placeholder="Enter username"></TD>
                </TR>

                <tr><td> &emsp; </td></tr>

                <TR>
                    <TD>PASSWORD</TD><td> &emsp; </td>
                    <TD><input type="password" name="pas" placeholder="Enter password"></TD>
                </TR>

                <tr><td> &emsp; </td></tr>
            </table>
            
            <table>
                <tr>
                   <td> &emsp;&emsp; </td>
                   <td><button onclick="funcb()" >Login</button></td>
                   <td> &emsp;&emsp; </td>
                </tr>
            
                <tr><td> &emsp; </td></tr>
                <tr><td> &emsp; </td></tr>
                
                <tr>
                   <td><button onclick="funca()" >Register</button></td>
                   <td> &emsp;&emsp; </td>
                   <td><button onclick="funcc()" >Forgot Password</button></td>
                </tr>
                
                <tr><td> &emsp; </td></tr>
            </table>
        </form>
        </div>
        </center>
   <script>
    function funca()
    { document.getElementById('nex').action="Register.jsp"; }
    function funcb()
    { document.getElementById('nex').action="Servlet2"; }
    function funcc()
    { document.getElementById('nex').action="Reset.jsp"; }
    </script>
    
</body>
    
    
    
</html>