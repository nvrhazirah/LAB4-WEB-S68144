<%-- 
    Document   : massIndex
    Created on : 29 Apr 2024, 11:45:07 AM
    Author     : zira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    </head>
    <body>

        <h1>Determine person overweight / underweight</h1>

        <h2 style= "color:purple; font-family: Arial">Caculate index body mass (BMI)</h2>

        <form  action="processMassIndex.jsp"method ="POST">

            <label>Weight</label>
            &nbsp;&nbsp;&nbsp;
            <input type="text" size=" 10"  name="weight"  placeholder="in Kilogram">
            <br><br>

            <label>Height</label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <input  type="text" size="10" name="height"  placeholder="in Centimeter">
            <br><br>

            <br>
            <input type="submit" value="Submit"/>
            <input type="reset" value="Cancel">


            </body>
            </html>
