<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.ray.citymanager.models.DBManager" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List Cities</title>
</head>
<body>
    <jsp:include page="/header.jsp" />
    <table style="width: 100%">
        <tr>
            <td style="width:25%;height:80%;" valign="top">
                <jsp:include page="navbar.jsp" />
            </td>
            <td style="width:75%;height:80%;">
                <%
                    StringBuilder sb = new StringBuilder("<html><body>");

                    DBManager dbm = (DBManager)getServletContext().getAttribute("WorldDBManager");

                    try {
                        if (!dbm.isConnected())
                        {
                            if (!dbm.openConnection())
                                sb.append("Could not connect to Database");
                        }

                        sb.append("<table border=1>"
                                + "<tr><td>Id</td><td>NAME</td><td>COUNTRY_CODE</td><td>COUNTRY</td><td>Population</td></tr>");
                        String query = "select * from city order by population DESC";

                        ResultSet rs = dbm.ExecuteResultSet(query);

                        while (rs.next())
                        {
                            int id = rs.getInt("ID");
                            String name = rs.getString("NAME");
                            String countryCode = rs.getString("CountryCode");
                            String country = rs.getString("Country");
                            int pop = rs.getInt("Population");

                            sb.append("<tr><td>" + id + "</td>"
                                    + "<td>" + name + "</td>"
                                    + "<td>" + countryCode + "</td>"
                                    + "<td>" + country + "</td>"
                                    + "<td>" + pop + "</td></tr>");
                        }
                        sb.append("</table>");
                    }
                    catch (Exception ex)
                    {
                        sb.append("<h1>Error:" + ex.getMessage() + "</h1>");
                    }
                    sb.append("</body></html>");
                    response.setContentType("text/html");
                    //PrintWriter out2 = response.getWriter();
                    out.println(sb);
                %>
            </td>
        </tr>
    </table>

    <jsp:include page="footer.jsp" />
</body>
</html>
