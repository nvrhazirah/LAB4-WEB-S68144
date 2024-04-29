<%-- 
    Document   : processCurrency
    Created on : 24 Apr 2024, 3:30:04 PM
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

        <h1>Use JSP Declaration tag ,  JSP Scriplet and JSP Expression in application</h1>
        <!-- Untuk declare currencyChange/currencyType -->

        <%!
            double currencyChange;
            String currencyType;
        %>
        <!-- Get parameter from currency Conversion --> 

        <%
            double amountRM = Double.parseDouble(request.getParameter("rm"));
            String currency = request.getParameter("currency");

            currencyChange  = calculateRate(currency, amountRM);


        %>


        <%!
                final double USD = 3.92;
                final double STG = 5.96;
                final double EURO = 4.47;
                
            

            private double calculateRate(String currency, double amount) {

                double currencyChange = 0.00f;

                if (currency.equals("1")) {
                    currencyChange =  (double)(amount / USD);
                    currencyType = "USD";
                }
                
                if (currency.equals("2")) {
                    currencyChange = (double)(amount / STG);
                  currencyType = "STG";
}
              
                if (currency.equals("3")) {
                    currencyChange = (double)(amount / EURO);
                 currencyType= "EURO";
}
              

                return currencyChange;

            }
         
             

        %>
        
        <p> Use JSP Declaration tag , JSP Scriplet and JSP Expression in application</p>
       
            <p> Amount in Ringgit Malaysia is <%=amountRM%></p>
            <p> Amount is  <%=currencyChange%></p>
            
    </body>
</html>
