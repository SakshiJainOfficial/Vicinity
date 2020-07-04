
package com.vicinity.controller;

import com.vicinity.bean.LoginBean;
import com.vicinity.dao.LoginDao;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginServlet extends HttpServlet {  
     public LoginServlet() // default constructor
    {
    }
 
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String logincheck=request.getParameter("logincheck");
        LoginBean loginBean = new LoginBean(); //creating object for LoginBean class, which is a normal java class, contains just setters and getters. Bean classes are efficiently used in java to access user information wherever required in the application.
 
        loginBean.setUsername(username); //setting the username and password through the loginBean object then only you can get it in future.
         loginBean.setPassword(password);
         loginBean.setLogincheck(logincheck);
 
        LoginDao loginDao = new LoginDao(); //creating object for LoginDao. This class contains main logic of the application.
 
        String userValidate = loginDao.authenticateUser(loginBean); //Calling authenticateUser function
 
        if(userValidate.equals("SUCCESS01")) //If function returns success string then user will be rooted to Home page
         {
             request.setAttribute("username", username); //with setAttribute() you can define a "key" and value pair so that you can get it in future using getAttribute("key")
             request.getRequestDispatcher("/welcomePage.jsp").forward(request, response);//RequestDispatcher is used to send the control to the invoked page.
         }
        else if(userValidate.equals("SUCCESS02")){
             request.setAttribute("username", username); //with setAttribute() you can define a "key" and value pair so that you can get it in future using getAttribute("key")
             request.getRequestDispatcher("/welcomePage.jsp").forward(request, response);
        }
         else
         {
             request.setAttribute("errMessage", userValidate); //If authenticateUser() function returnsother than SUCCESS string it will be sent to Login page again. Here the error message returned from function has been stored in a errMessage key.
             request.getRequestDispatcher("/index.jsp").forward(request, response);//forwarding the request
         }
    }
    }
    