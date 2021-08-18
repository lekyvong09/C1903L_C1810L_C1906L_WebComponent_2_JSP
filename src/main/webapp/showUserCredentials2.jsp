<%@ page contentType="text/html;charset=UTF-8" language="java"
    session="false"
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%@include file="header.jsp" %>

    <table style="width: 100%">
        <tr>
            <td style="width:25%;height:80%;" valign="top">
                <jsp:include page="navbar.jsp" />
            </td>
            <td style="width:75%;height:80%;">
                <h1>Sessions aren't allowed on this page</h1>
                <%
                    try
                    {
                        HttpSession s = request.getSession();
                        String uid = (String) s.getAttribute("uid");
                        out.println("Hello <strong>" + uid + "</strong>");
                    } catch (Exception ex)
                    {
                        out.println("Could not create the session");
                    }
                %>

            </td>
        </tr>
    </table>

    <jsp:include page="footer.jsp" />
</body>
</html>
