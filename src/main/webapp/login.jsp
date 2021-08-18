<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
    <%@include file="header.jsp" %>
    <%!
       Cookie[] MyCookies;
       String uid = "";
       String pwd = "";
       int authLevel = 0;
    %>
    <table style="width: 100%">
        <tr>
            <td style="width:25%;height:80%;" valign="top">
                <jsp:include page="navbar.jsp" />
            </td>
            <td style="width:75%;height:80%;">
                <%
                    if (session.getAttribute("uid") == null || session.getAttribute("uid").equals(""))
                    {
                        MyCookies = request.getCookies();
                        if (MyCookies !=null && MyCookies.length >0)
                        {
                            for (Cookie c : MyCookies)
                            {
                                if (c.getName().equalsIgnoreCase("credentials_uid"))
                                    uid = c.getValue();
                                if (c.getName().equalsIgnoreCase("credentials_pwd"))
                                    pwd = c.getValue();
                            }
                        }
                    }
                    else
                    {
                        uid = (String) session.getAttribute("uid");
                        pwd = (String) session.getAttribute("pwd");
                    }
                %>
                <form method="post" id="form1" action="loginuser.do">
                    <table style="width: 450px">
                        <tr>
                            <td><span>Username:</span></td>
                            <td><input name="uid" type="text" style="width: 250px" value="<%=uid %>"/></td>
                        </tr>
                        <tr>
                            <td><span>Password:</span></td>
                            <td><input name="pwd" type="password" style="width: 250px" value="<%=pwd %>"/></td>
                        </tr>
                        <tr>
                            <td colspan="2" align="right">
                                <input name="rememberMe" type="checkbox"/>Remember Me
                            </td>
                        </tr>
                        <tr>
                            <td><input type="submit" value="Sign in" style="width: 250px"/></td>
                        </tr>

                    </table>
                </form>

            </td>
        </tr>
    </table>

    <jsp:include page="footer.jsp" />
</body>
</html>
