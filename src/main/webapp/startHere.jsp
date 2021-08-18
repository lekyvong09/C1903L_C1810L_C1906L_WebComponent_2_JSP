<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Page Context</title>
</head>
<body>
    <%@include file="header.jsp" %>
    <table style="width: 100%">
        <tr>
            <td style="width:25%;height:80%;" valign="top">
                <jsp:include page="navbar.jsp" />
            </td>
            <td style="width:75%;height:80%;">
                <%
                    // Page level
                    pageContext.setAttribute("pageContextPageScope", "pageContext - Page Scope", PageContext.PAGE_SCOPE);

                    // application level
                    pageContext.setAttribute("pageContextApplicationScope", "pageContext - Application Scope", PageContext.APPLICATION_SCOPE);
                    application.setAttribute("alternativeApplicationScope", "alternative - Application Scope");

                    // session level
                    pageContext.setAttribute("pageContextSessionScope", "pageContext - Session Scope", PageContext.SESSION_SCOPE);
                    session.setAttribute("alternativeSessionScope", "alternative - Session Scope");

                    // request level
                    pageContext.setAttribute("pageContextRequestScope", "pageContext - Request Scope", PageContext.REQUEST_SCOPE);
                    request.setAttribute("alternativeRequestScope", "alternative - Request Scope");

                    // Query String parameter
                    String destination = "secondPage.jsp?key=98765432";

                    RequestDispatcher rd = request.getRequestDispatcher(destination);
                    rd.forward(request,response);
                %>

            </td>
        </tr>
    </table>

    <jsp:include page="footer.jsp" />
</body>
</html>
