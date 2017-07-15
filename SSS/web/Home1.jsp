<%-- 
    Document   : Home1
    Created on : Jul 13, 2017, 5:42:16 PM
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
        <div class="head">
               <FORM  ACTION="./Home1" METHOD="POST">
                <br><br><br>
                
                <table border="0" bgcolor=#ccFDDEE>
                    <tr>
                        <td>Enter Student Id</td>
                        <td>
                            <input type="text" name="Id" id="Id">
                        </td>
                    </tr>
                    <tr>
                        <td>Enter Student Name :   </td>
                        <td>
                            <input type="text" name="Name" id="Name">
                        </td>
                    </tr>
                    <tr>
                        <td>Enter Student Batch  :   </td>
                        <td>
                    <input type="text" name="Batch" id="Batch">
                    </td>
                    </tr>
                    <tr>
                        <td>Enter Student Date of Birth  :   </td>
                        <td>
                    <input type="date" name="Dob" id="Dob">
                    </td>
                    </tr>
                    <tr>
                        <td>Enter Student Email  :   </td>
                        <td>
                    <input type="text" name="Email" id="Email">
                    </td>
                    </tr>
                    <tr>
                        <td>Enter Student Mobile No.  :   </td>
                        <td>
                    <input type="text" name="Mobile" id="Mobile">
                    </td>
                    </tr>
                    <tr>
                        <td>Upload Profile Photo</td>
                        <td><INPUT NAME="Profile" TYPE="file" id="Profile"></td>
                    </tr>
                     <tr>
                        <td>Upload Certificate Photo</td>
                        <td><INPUT NAME="Certificate" TYPE="file" id="Certificate"></td>
                    </tr>
                     <tr>
                        <td>Upload Marksheet Photo</td>
                        <td><INPUT NAME="Marksheet" TYPE="file" id="Marksheet"></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center"><input type="submit" value="Send File"> </td>
                    </tr>
                    </table>
                </FORM>
                
        </div>
    </body>
</html>
