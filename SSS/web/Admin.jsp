<%-- 
    Document   : Admin
    Created on : Jul 13, 2017, 4:52:30 PM
    Author     : Vaibs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="Style.css">
        <script src="jquery-3.2.1.js"></script>
        <title>JSP Page</title>
    </head>
    <body class="back">
        <form> 
            <div class="head">
                <h1>E-Student Verification Management</h1>
            </div>
            <div width="900px">
                <div class="board">
                    <table>
                        <tr>
                            <td>
                                <button class="butt" data-launch-view="page0"><h3>Home</h3></button>
                            </td>
                       
                            <td>
                                <button class="butt" data-launch-view="page1"><h3>Student List</h3></button>
                            </td>
                        
                            <td>
                                <button class="butt" data-launch-view="page2"><h3>Verified Student List</h3></button>
                            </td>
                        
                            <td>
                                <button class="butt" data-launch-view="page3"><h3>Company List<h3></button>
                            </td>
                        </tr>
                    </table>
                    
                </div>
                <div class="page">
                    <div class="view" id="page0">
                         <iframe id="s0" src="Home1.jsp" width="1220px" height="550px"></iframe>
                    </div>
                    <div class="view hide" id="page1">
                         <iframe id="s1" src="Student_List.jsp" width="1220px" height="550px"></iframe>
                    </div>
                    <div class="view hide" id="page2">
                         <iframe id="s2" src="Verified_List.jsp" width="1220px" height="550px"></iframe>
                    </div>
                    <div class="view hide" id="page3">
                         <iframe id="s4" src="Company_List.jsp" width="1220px" height="550px"></iframe>
                    </div>
                     <div class="view hide" id="page3">
                         <iframe id="s4" src="Company_List.jsp" width="1220px" height="550px"></iframe>
                    </div>
                </div>
            </div>
        </form>
        <script>
            $(document).ready(function (e)
            {
                function showView(viewName)
                {
                    $('.view').hide();
                    $('#'+viewName).show();
                }
                $('[data-launch-view]').click(function (e)
                {
                    e.preventDefault();
                    var viewName=$(this).attr('data-launch-view');
                    showView(viewName);
                }       
                );
            });
        </script>
        
    </body>
</html>
