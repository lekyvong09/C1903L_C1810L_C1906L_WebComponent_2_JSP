<%--
  Created by IntelliJ IDEA.
  User: ray
  Date: 8/16/21
  Time: 9:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Handle error 500</title>
</head>
<body>
<jsp:include page="/header.jsp" />
<table style="width: 100%">
    <tr>
        <td style="width:25%;height:80%;" valign="top">
            <jsp:include page="navbar.jsp" />
        </td>
        <td style="width:75%;height:80%;">
            <h1>Error 500</h1>
            ${pageContext.exception.message}

        </td>
    </tr>
</table>

<jsp:include page="footer.jsp" />
</body>
</html>
