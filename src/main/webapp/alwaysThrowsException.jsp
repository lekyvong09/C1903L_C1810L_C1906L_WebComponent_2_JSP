<%@ page contentType="text/html;charset=UTF-8" language="java"
    errorPage="errorHandler.jsp"
    %>
<html>
<head>
    <title>Throw Exception</title>
</head>
<body>
    <%
        if (request.getParameter("notYetSet") == null)
            throw new IllegalArgumentException("notYetSet is not yet set as expected");
    %>
</body>
</html>
