<%--
  Created by IntelliJ IDEA.
  User: ray
  Date: 8/18/21
  Time: 9:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Second Page Context</title>
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
                    String dbUIDFail = pageContext.getAttribute("dbuserid", PageContext.APPLICATION_SCOPE) == null ? "bad" :
                            (String) pageContext.getAttribute("dbuserid", PageContext.APPLICATION_SCOPE);
                    String dbUIDSuccess = application.getInitParameter("dbuserid") == null ? "bad" :
                            application.getInitParameter("dbuserid");

                    String pageContextApplicationScope = pageContext.getAttribute("pageContextApplicationScope", PageContext.APPLICATION_SCOPE) == null ? "bad" :
                            (String) pageContext.getAttribute("pageContextApplicationScope", PageContext.APPLICATION_SCOPE);
                    String alternativeApplicationScope = application.getAttribute("alternativeApplicationScope") == null ? "bad" :
                            (String) application.getAttribute("alternativeApplicationScope");

                    String sessionUid = pageContext.getAttribute("uid", PageContext.SESSION_SCOPE) == null ? "bad" :
                            (String) pageContext.getAttribute("uid", PageContext.SESSION_SCOPE);
                    String pageContextSessionScope = pageContext.getAttribute("pageContextSessionScope", PageContext.SESSION_SCOPE) == null ? "bad" :
                            (String) pageContext.getAttribute("pageContextSessionScope", PageContext.SESSION_SCOPE);
                    String alternativeSessionScope = session.getAttribute("alternativeSessionScope") == null ? "bad" :
                            (String) session.getAttribute("alternativeSessionScope");

                    String pageContextRequestScope = pageContext.getAttribute("pageContextRequestScope", PageContext.REQUEST_SCOPE) == null ? "bad" :
                            (String) pageContext.getAttribute("pageContextRequestScope", PageContext.REQUEST_SCOPE);
                    String alternativeRequestScope = request.getAttribute("alternativeRequestScope") == null ? "bad" :
                            (String) request.getAttribute("alternativeRequestScope");

                    String pageContextParams = pageContext.getAttribute("key") == null ? "bad" :
                            (String) pageContext.getAttribute("key");
                    String requestParams = request.getParameter("key");
                %>

                <table>
                    <tr>
                        <td style="width: 35%;">dbUIDFail</td>
                        <%
                            if (dbUIDFail.equalsIgnoreCase("BAD"))
                            {
                        %>
                                <td style="width: 65%; background-color: #e5b75b;"><%=dbUIDFail %></td>
                        <%
                            }
                            else
                            {
                        %>
                                <td style="width: 65%; background-color: #6599ff;"><%=dbUIDFail %></td>
                        <%
                            }
                        %>
                    </tr>
                    <tr>
                        <td style="width: 35%;">dbUIDSuccess</td>
                        <%
                            if (dbUIDSuccess.equalsIgnoreCase("BAD"))
                            {
                        %>
                        <td style="width: 65%; background-color: #e5b75b;"><%=dbUIDSuccess %></td>
                        <%
                        }
                        else
                        {
                        %>
                        <td style="width: 65%; background-color: #6599ff;"><%=dbUIDSuccess %></td>
                        <%
                            }
                        %>
                    </tr>
                    <tr>
                        <td style="width: 35%;">pageContextApplicationScope</td>
                        <%
                            if (pageContextApplicationScope.equalsIgnoreCase("BAD"))
                            {
                        %>
                        <td style="width: 65%; background-color: #e5b75b;"><%=pageContextApplicationScope %></td>
                        <%
                        }
                        else
                        {
                        %>
                        <td style="width: 65%; background-color: #6599ff;"><%=pageContextApplicationScope %></td>
                        <%
                            }
                        %>
                    </tr>
                    <tr>
                        <td style="width: 35%;">alternativeApplicationScope</td>
                        <%
                            if (alternativeApplicationScope.equalsIgnoreCase("BAD"))
                            {
                        %>
                        <td style="width: 65%; background-color: #e5b75b;"><%=alternativeApplicationScope %></td>
                        <%
                        }
                        else
                        {
                        %>
                        <td style="width: 65%; background-color: #6599ff;"><%=alternativeApplicationScope %></td>
                        <%
                            }
                        %>
                    </tr>
                    <tr>
                        <td style="width: 35%;">sessionUid</td>
                        <%
                            if (sessionUid.equalsIgnoreCase("BAD"))
                            {
                        %>
                        <td style="width: 65%; background-color: #e5b75b;"><%=sessionUid %></td>
                        <%
                        }
                        else
                        {
                        %>
                        <td style="width: 65%; background-color: #6599ff;"><%=sessionUid %></td>
                        <%
                            }
                        %>
                    </tr>
                    <tr>
                        <td style="width: 35%;">pageContextSessionScope</td>
                        <%
                            if (pageContextSessionScope.equalsIgnoreCase("BAD"))
                            {
                        %>
                        <td style="width: 65%; background-color: #e5b75b;"><%=pageContextSessionScope %></td>
                        <%
                        }
                        else
                        {
                        %>
                        <td style="width: 65%; background-color: #6599ff;"><%=pageContextSessionScope %></td>
                        <%
                            }
                        %>
                    </tr>
                    <tr>
                        <td style="width: 35%;">alternativeSessionScope</td>
                        <%
                            if (alternativeSessionScope.equalsIgnoreCase("BAD"))
                            {
                        %>
                        <td style="width: 65%; background-color: #e5b75b;"><%=alternativeSessionScope %></td>
                        <%
                        }
                        else
                        {
                        %>
                        <td style="width: 65%; background-color: #6599ff;"><%=alternativeSessionScope %></td>
                        <%
                            }
                        %>
                    </tr>
                    <tr>
                        <td style="width: 35%;">pageContextRequestScope</td>
                        <%
                            if (pageContextRequestScope.equalsIgnoreCase("BAD"))
                            {
                        %>
                        <td style="width: 65%; background-color: #e5b75b;"><%=pageContextRequestScope %></td>
                        <%
                        }
                        else
                        {
                        %>
                        <td style="width: 65%; background-color: #6599ff;"><%=pageContextRequestScope %></td>
                        <%
                            }
                        %>
                    </tr>
                    <tr>
                        <td style="width: 35%;">alternativeRequestScope</td>
                        <%
                            if (alternativeRequestScope.equalsIgnoreCase("BAD"))
                            {
                        %>
                        <td style="width: 65%; background-color: #e5b75b;"><%=alternativeRequestScope %></td>
                        <%
                        }
                        else
                        {
                        %>
                        <td style="width: 65%; background-color: #6599ff;"><%=alternativeRequestScope %></td>
                        <%
                            }
                        %>
                    </tr>
                    <tr>
                        <td style="width: 35%;">pageContextParams</td>
                        <%
                            if (pageContextParams.equalsIgnoreCase("BAD"))
                            {
                        %>
                        <td style="width: 65%; background-color: #e5b75b;"><%=pageContextParams %></td>
                        <%
                        }
                        else
                        {
                        %>
                        <td style="width: 65%; background-color: #6599ff;"><%=pageContextParams %></td>
                        <%
                            }
                        %>
                    </tr>
                    <tr>
                        <td style="width: 35%;">requestParams</td>
                        <%
                            if (requestParams.equalsIgnoreCase("BAD"))
                            {
                        %>
                        <td style="width: 65%; background-color: #e5b75b;"><%=requestParams %></td>
                        <%
                        }
                        else
                        {
                        %>
                        <td style="width: 65%; background-color: #6599ff;"><%=requestParams %></td>
                        <%
                            }
                        %>
                    </tr>
                </table>

            </td>
        </tr>
    </table>

    <jsp:include page="footer.jsp" />
</body>
</html>
