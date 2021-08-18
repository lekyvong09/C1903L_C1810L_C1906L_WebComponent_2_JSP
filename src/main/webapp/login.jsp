<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
    <%@include file="header.jsp" %>
    <table style="width: 100%">
        <tr>
            <td style="width:25%;height:80%;" valign="top">
                <jsp:include page="navbar.jsp" />
            </td>
            <td style="width:75%;height:80%;">

                <form method="post" id="form1" action="loginuser.do">
                    <table style="width: 450px">
                        <tr>
                            <td><span>Username:</span></td>
                            <td><input name="uid" type="text" style="width: 250px"/></td>
                        </tr>
                        <tr>
                            <td><span>Password:</span></td>
                            <td><input name="pwd" type="password" style="width: 250px"/></td>
                        </tr>
                        <tr>
                            <td colspan="2" align="right">
                                <input name="noSession" type="checkbox"/>No Session
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
