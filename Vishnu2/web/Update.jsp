<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update</title>
        <STYLE>
        DIV {WIDTH:500PX ; HEIGHT:370PX}.ST{BACKGROUND-COLOR:#ABCDEF ; BORDER : 3PX SOLID BLACK}
        </STYLE>
    </head>
    
    
    
    <body bgcolor="pink">
        <center>
        <BR>
        <h1> <i> Update Profile </i></h1>
    </center>         

    <br><br>
        <center>
        <div CLASS="ST">
            <form ID="next" action="Servlet4" method="post">
            <table>
                <tr><td> &emsp; </td></tr>
                <tr><td>Enter Your Roll No</td><td> &emsp; </td><td><input name="roll" type="#number" required/></td></tr>
                <tr><td> &emsp; </td></tr>
                <tr><td> &emsp; </td></tr>
                <tr><td> &emsp; </td><td>ENTER DETAILS</td><td> &emsp; </td></tr>
                <td> &emsp; </td>
                <tr><td>Name</td><td> &emsp; :-</td><td><input name="name" type="text" required></td></tr>
                <tr><td> &emsp; </td></tr>
                <tr><td>Age</td><td> &emsp; :-</td><td><input name="age" type="#number" required/></td></tr>
                <tr><td> &emsp; </td></tr>
                <tr><td>Mobile No</td><td> &emsp; :-</td><td><input name="mob" type="#number" required/></td></tr>
                <tr><td> &emsp; </td></tr>
                <tr><td>E-mail</td><td> &emsp; :-</td><td><input name="email" type="text" required/></td></tr>
                <tr><td> &emsp; </td></tr>
                <tr><td> &emsp; </td><td><button id="demo" onclick="func()" >Update</button></td><td> &emsp; </td></tr>
            </table>
        </form>
        </div>
        </center>
    
    <script>
    function func()
    {
        var x = document.getElementById('next').value;
        var atpos = x.indexOf("@");
        var dotpos = x.lastIndexOf(".");
    
        if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) 
            {
                alert("Not a valid e-mail address");
                return false;
            }
    }
    </SCRIPT>
    
</body>

</html>