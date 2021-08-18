package com.ray.citymanager.servlets;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginUser", value = "/loginuser.do")
public class LoginUser extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uid = request.getParameter("uid");
        String pwd = request.getParameter("pwd");

        HttpSession s = request.getSession();
        s.setAttribute("uid", uid);
        s.setAttribute("pwd", pwd);

        String destination = "showUserCredentials.jsp";

        if (request.getParameter("noSession") != null)
        {
            String noSession = request.getParameter("noSession");
            if (noSession.equalsIgnoreCase("ON"))
            {
                destination = "showUserCredentials2.jsp";
            }
        }

        response.sendRedirect(destination);
    }
}
