<%@ page import="java.util.GregorianCalendar" %>
<%@ page import="java.util.Calendar" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Declaration</title>
</head>
<body>
    <%@include file="header.jsp" %>
    <table style="width: 100%">
        <tr>
            <td style="width:25%;height:80%;" valign="top">
                <jsp:include page="navbar.jsp" />
            </td>
            <td style="width:75%;height:80%;">

                <%!
                     // Get current Time
                    Calendar gc = GregorianCalendar.getInstance();
                    String hour = String.valueOf(gc.get(Calendar.HOUR));
                    //String hour = String.format("%s", gc.get(Calendar.HOUR));
                    String min = String.valueOf(gc.get(Calendar.MINUTE));
                    String sec = String.valueOf(gc.get(Calendar.SECOND));
                %>

                <%
                    if (hour.length() < 2)
                        hour = String.format("0%s", hour);
                    if (min.length() < 2)
                        min = String.format("0%s", min);
                    if (sec.length() < 2)
                        sec = String.format("0%s", sec);
                    out.println("Current Time: <h1>" + hour + ":" + min + ":" + sec + "</h1>");
                %>
            </td>
        </tr>
    </table>

    <jsp:include page="footer.jsp" />
</body>
</html>
