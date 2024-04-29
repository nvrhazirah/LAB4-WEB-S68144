<%-- 
    Document   : subjectInfo
    Created on : 24 Apr 2024, 4:51:32 PM
    Author     : zira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Using JSP Standard Action</title>
    </head>
    <body>
        <h1>Calling subjectInfo.jsp page</h1>
       
        <p> Code=<%= request.getParameter("code")%></p><!-- comment -->
        <p> Subject=<%= request.getParameter("subject")%></p><!-- comment -->
        <p> Credit=<%= request.getParameter("credit")%></p>
            
            
    </body>
</html>