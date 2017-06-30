<%-- 
    Document   : menupage
    Created on : 2 Jun, 2017, 10:47:59 AM
    Author     : cdac
--%>
<div style="float: right">

    <a href="<%=request.getContextPath()%>"/>Home</a> |
About Us |
<a href="<%=request.getContextPath()%>/jsp/login.jsp"/>Sign In</a> |
<a href="<%=request.getContextPath()%>/jsp/register.jsp"/>Register</a> |
Contact Us |
<%    if (session.getAttribute("email") != null) {            %>
<a href="<%=request.getContextPath()%>/Logout"/>Logout</a>
<%}%>
<br>
<hr>
</div>

