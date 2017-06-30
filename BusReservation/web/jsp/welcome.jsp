<%-- 
    Document   : welcome
    Created on : 1 Jun, 2017, 3:53:43 PM
    Author     : cdac
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="in.cdac.DB.SimpleJDBC"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String email = (String) session.getAttribute("email");
    //SimpleJDBC
%>

<script type="text/javascript">
    function selectedSeats() {
        var i = 1;
        var seatsSelected = [];
        var isSelected;
        var j = 0;
        for (; i <= 10; i++) {
            isSelected = document.getElementById("seat" + i).checked;
            console.log(i+"----------"+isSelected);
            if (isSelected) {
                seatsSelected[j] = document.getElementById("seat" + i).value;
                j++;
            }
        }
        j = 0;
        document.getElementById("sel_Seats").value = seatsSelected;
        document.getElementById("myform").submit();
        
        console.log(seatsSelected);
    }
</script> 

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Reservation System</title>
    </head>
    <body onload="onload()">       
        <div style="float:right">
            <p>Hi....<%=email%> </p>
            <a href="./Logout">Logout</a>       
            
            <%
                SimpleJDBC jd= new SimpleJDBC();
                ResultSet rs= jd.RetreiveData();
                while(rs.next()){%>
			<h1><%=rs.getString("emailID")%><br>
			<%=rs.getString("uname")%><br>
			<%=rs.getString("pwd")%><br>
			<%=rs.getString("mobile")%><br>
			<%=rs.getInt("age")%><br>
			<%=rs.getString("address")%> </h1><br> <br>	
		<%}%> 
        </div>
        <hr>
    <center>

    </center>
    
    <table>
        <th></th>
            <%
                int i = 1;
                String seatID = null;
                for (; i <= 10; i++) {
                    seatID = "seat" + i;
            %>        
        <tr><td><input type="checkbox" value="<%=i%>" id='<%=seatID%>'/><%=seatID%> </td>    
        
        </tr>
        <%
                }%>

    </table>
 <input type="button" onclick="selectedSeats()" value="Continue"/>
<form id="myform" action="./Payment" method="POST">
    <input type="hidden" id="sel_Seats" name="sel_Seats"/>
</form>
</body>
</html>
