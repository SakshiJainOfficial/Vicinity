package com.vicinity.controller;

import com.vicinity.bean.Sign_upBean;
import com.vicinity.dao.Sign_upDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Sign_upServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String username = request.getParameter("username");
        String contact = request.getParameter("contact");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        Sign_upBean signUpBean = new Sign_upBean();

        signUpBean.setUsername(username);
        signUpBean.setContact(contact);
        signUpBean.setEmail(email);
        signUpBean.setPassword(password);

        Sign_upDao signUpDao = new Sign_upDao();

        String userSignedUp = signUpDao.SignUpUser(signUpBean);
        if (userSignedUp.equals("SUCCESS")) {
            request.getRequestDispatcher("index.jsp").forward(request, response);
        } else {
            request.setAttribute("errMessage", userSignedUp);
            request.getRequestDispatcher("/Sign_up.jsp").forward(request, response);
        }
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Sign_upServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Sign_upServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {
            out.close();
        }
    }
}
