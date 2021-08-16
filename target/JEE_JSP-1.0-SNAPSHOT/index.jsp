<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome to City Manager</title>
</head>
<body>
<%--    <%@include file="header.jsp" %>--%>
    <jsp:include page="/header.jsp" />
    <table style="width: 100%">
        <tr>
            <td style="width:25%;height:80%;" valign="top">
                <jsp:include page="navbar.jsp" />
            </td>
            <td style="width:75%;height:80%;">
                <h1>Content goes here</h1>
            </td>
        </tr>
    </table>

    <jsp:include page="footer.jsp" />
</body>
</html>
