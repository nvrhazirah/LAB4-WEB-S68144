<%-- 
    Document   : processCustomer
    Created on : 24 Apr 2024, 2:35:19 PM
    Author     : zira
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            final int price = 10;
            //Using JSP Scriptlet
            String cust_no = request.getParameter("cust_no");
            int quantity = Integer.parseInt(request.getParameter("qty"));
            String cust_type = request.getParameter("ct");

            //Determine discount based on customer type and quantity
            if (cust_type.equals("1") && quantity > 100) {
                out.print("You're entitled to 10% discount.<br>");
                out.print("Total amount is RM " + (quantity * price * 0.9));
            } else if (cust_type.equals("2") && quantity > 100) {
                out.print("You're entitled to 25% discount.<br>");
                out.print("Total amount is RM " + (quantity * price * 0.75));
            } else {
                out.print("You're not entitled to any discount.<br>");
                out.print("Total amount is RM " + (quantity * price));
            }
        %>
    </body>
</html>

