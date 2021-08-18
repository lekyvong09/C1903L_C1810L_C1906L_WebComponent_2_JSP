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

        int authLevel = 1;
        s.setAttribute("authLevel", authLevel);

        String destination = "listCities.jsp";

        if (request.getParameter("rememberMe") != null)
        {
            String rememberMe = request.getParameter("rememberMe");
            if (rememberMe.equalsIgnoreCase("ON"))
            {
                int cookieLife = 3600*24*7;

                Cookie uidCook = new Cookie("credentials_uid", uid);
                uidCook.setMaxAge(cookieLife);

                Cookie pwdCook = new Cookie("credentials_pwd", pwd);
                pwdCook.setMaxAge(cookieLife);

                response.addCookie(uidCook);
                response.addCookie(pwdCook);
            }
        }

        if (authLevel < 1 || uid == null || uid.equals("")) {
            response.sendRedirect("login.jsp");
        } else {
            response.sendRedirect(destination);
        }
    }
}
