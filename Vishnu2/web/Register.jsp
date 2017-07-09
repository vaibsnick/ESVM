<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
        <STYLE>
        DIV {WIDTH:500PX ; HEIGHT:440PX}.ST{BACKGROUND-COLOR:#ABCDEF ; BORDER : 3PX SOLID BLACK}
        </STYLE>
    </head>
    
    
    
    <body bgcolor="pink">
        <center>
        <BR>
        <h1> <i> Registration Form </i></h1>
    </center>         

    <br><br>
        <center>
        <div CLASS="ST">
            <form ID="next" action="Servlet1" method="post">
            <table>
                <tr><td> &emsp; </td></tr>
                <tr><td>Name</td><td> &emsp; </td><td><input name="name" type="text" required></td></tr>
                <tr><td> &emsp; </td></tr>
                <tr><td>Roll No</td><td> &emsp; </td><td><input name="roll" type="#number" required/></td></tr>
                <tr><td> &emsp; </td></tr>
                <tr><td>Age</td><td> &emsp; </td><td><input name="age" type="#number" required/></td></tr>
                <tr><td> &emsp; </td></tr>
                <tr><td>Mobile No</td><td> &emsp; </td><td><input name="mob" type="#number" required/></td></tr>
                <tr><td> &emsp; </td></tr>
                <tr><td>E-mail</td><td> &emsp; </td><td><input name="email" type="text" required/></td></tr>
                <tr><td> &emsp; </td></tr>
                <tr><td>UserName</td><td> &emsp; </td><td><input name="user" type="text" required/></td></tr>
                <tr><td> &emsp; </td></tr>
                <tr><td>Password</td><td> &emsp; </td><td><input name="pass" id="p" type="password" required/></td></tr>
                <tr><td> &emsp; </td></tr>
                <tr><td>Confirm Password</td><td> &emsp; </td><td><input name="conpass" id="cp" type="password" required></td></tr>
                <tr><td> &emsp; </td></tr>
                <tr><td> &emsp; </td><td><button id="demo" onclick="func()" >Submit</button></td><td> &emsp; </td></tr>
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
    
        if(document.getElementById('p').value !== document.getElementById('cp').value ) 
            {
                alert(document.getElementById('demo').value ='Password Donot Match');
            }
        else if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) 
            {
                alert("Not a valid e-mail address");
                return false;
            }
    }
    </SCRIPT>
    
</body>

</html>