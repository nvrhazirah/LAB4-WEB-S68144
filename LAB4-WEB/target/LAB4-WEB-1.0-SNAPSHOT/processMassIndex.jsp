<%-- 
    Document   : processMassIndex
    Created on : 29 Apr 2024, 11:45:18 AM
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
        <h1>Result mass index BMI</h1>


        <%!
            double caltBMI;
            float BMI;
            String resultBMI;
        %>

        <%
            int weight = Integer.parseInt(request.getParameter("weight"));
            int height = Integer.parseInt(request.getParameter("height"));
            
            //Multiplication by 100 100)
            BMI =(float)(100*100* weight)/(height*height);
            caltBMI = calculateBMI(BMI);


        %>



        <%!            private double calculateBMI(double BMI) {

               
              

                if( (BMI > 18.5) && (BMI < 25) ){
                    resultBMI = ("Your weight considered optimal");
                } else if ((BMI < 18.5)) {

                    resultBMI = ("Your weight is underweight");
                } else {
                    resultBMI = ("Your weight is overweight");
                }

                return 0;

            }
        %>

        <p> Your weight :<%=weight%></p>
        <p> Your height :<%=height%></p>
        <p> Your BMI :<%=BMI%></p>
        <p> Status BMI:<%=resultBMI%></p>

    </body>
</html>

