<%-- 
    Document   : processInsuranceQuo
    Created on : 29 Apr 2024, 11:43:29 AM
    Author     : zira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">     
    </head>
    <body>
    <field>
        <legend>Details of Insurance Calculation</legend>


        <%! //Declare variable @ storage 9 kotak - JAVAvariable(benda baru) //
            double finAmount;
            double insAmount;
            double gst;
            String Jcvgtyp;

        %>


        <% //request.getParameter(guna yg kat HTML)
            String ic_no = request.getParameter("ic_no");
            String name = request.getParameter("name");
            int mrktprice = Integer.parseInt(request.getParameter("mrktprice"));
            String cvgtyp = request.getParameter("cvgtyp");
            String ncd = request.getParameter("ncd");

            insAmount = caltInsAmount(cvgtyp, mrktprice, ncd);
        %>


        <%! //Method/jalan kira //calculate
            private double caltInsAmount(String m_cvgtyp, int m_mrktprice, String m_ncd) {

                double m_insAmount = 0.0f;
                if (m_cvgtyp.equals("1")) {

                    Jcvgtyp = "Third Party";

                    if (m_ncd.equals("55")) {

                        m_insAmount = (0.012 * m_mrktprice);
                    }
                    if (m_ncd.equals("35")) {

                        m_insAmount = (0.018 * m_mrktprice);
                    }
                    if (m_ncd.equals("25")) {

                        m_insAmount = (0.025 * m_mrktprice);
                    }
                    if (m_ncd.equals("10")) {

                        m_insAmount = (0.033 * m_mrktprice);
                    }
                }

                if (m_cvgtyp.equals("2")) {

                    Jcvgtyp = "Comprehensive";

                    if (m_ncd.equals("55")) {

                        m_insAmount = (0.018 * m_mrktprice);
                    }
                    if (m_ncd.equals("35")) {

                        m_insAmount = (0.024 * m_mrktprice);
                    }
                    if (m_ncd.equals("25")) {

                        m_insAmount = (0.03 * m_mrktprice);
                    }
                    if (m_ncd.equals("10")) {

                        m_insAmount = (0.38 * m_mrktprice);
                    }
                }

                gst = (m_insAmount * 0.06);
                finAmount = gst + m_insAmount;

                return m_insAmount;

            }

        %>
        
        <p> IC No :<%=ic_no%></p>
            <p>Customer Name:<%=name%></p>
            <p>Market Price:<%=mrktprice%></p>
            <p>Coverage Type:<%=Jcvgtyp%></p>
            <p> No claim discount(NCD): <%=ncd%></p>
            <p>Insurance amount:<%=insAmount%></p>
            <p>6 % GST:<%=gst%></p>
            <p>Final amount(with 6% GST):<%=finAmount%></p>

    </field>
</body>

<p> &copy2016-Mohamad Nor</p>
</html>

