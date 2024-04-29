<%-- 
    Document   : insuranceQuotation
    Created on : 29 Apr 2024, 11:42:56 AM
    Author     : zira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    </head>
    <body>
        <form action="processInsuranceQuo.jsp" method="GET">
            <h1><b>Insurance Quotation<b></h1>
                        <fieldset>
                            
                            <legend>Insurance Calculation</legend>
                            <br><br>

                            <label>ICNo</label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="text" id="ic_no" name="ic_no"  placeholder="E.g.821210-05-3478">
                            <br><br>

                            <label>Name</label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <input  id="name"  name="name" placeholder="Enter name">

                            <br><br>
                            <label>Market Price</label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <input  id="mrktprice"  name="mrktprice" placeholder="Price">

                            <br><br>
                            <label>Coverage Type</label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <select name = "cvgtyp" id="cvgtyp" >
                                <option value = "1" > Third Party </option>
                                <option value = "2" > Comprehensive </option>

                            </select>

                            <br><br>
                            <label>No claims discount <br> (NCD)</label> 
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <select name ="ncd" id ="ncd">

                                <option value = "10" > 10% </option>
                                <option value = "25" > 25% </option>
                                <option value = "35" > 35% </option>
                                <option value = "55" > 55% </option>
                            </select>

                            <p>
                                <input type="submit" id="btnSubmit" value="Submit"/>
                                <input type="reset" id="btnCancel" value="Cancel"/>

                            </p>

                            <p> &copy2016-Mohamad Nor</p>

                            <br><br>

                        </fieldset>
                        </form>
                        </body>
                        </html>

