<%-- 
    Document   : forward
    Created on : 29 Apr 2024, 11:41:05 AM
    Author     : zira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <title> Using JSP Standard Action(forward)  </title>
    </head>
    <body>
        <h2> Using jsp : forward to display user info . </h2>
        <jsp:forward page = "forwardInfo.jsp">
            <jsp:param name="U_Name" value="Fouad Abdulameer"/>
            <jsp:param name="Email" value="foudaug@gmail.com"/>
            <jsp:param name="Nationality" value="Iraqi"/>
            <jsp:param name="Background" value="Developer"/>
        </jsp:forward>
        
        
    </body>
</html>
