<%-- 
    Document   : changePassword
    Created on : 17 Mar, 2020, 1:56:34 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8 />
               <meta name="viewport content="width=device-width, initial-scale=1" />
              <link
      rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
      integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
      crossorigin="anonymous"/>
              <link
              rel="stylesheet"
              href="https://use.fontawesome.com/releases/v5.6.1/css/all.css"
              integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP"
              crossorigin="anonymous"
              />
        <link
            href="http://fonts.googleapis.com/css?family=Lato:100,300,400,300italic"
            rel="stylesheet"
            type="text/css"
            />
        <link rel="stylesheet" type="text/css" href="resources/css/style.css" />

        <link rel="stylesheet" type="text/css" href="resources/css/login.css" />

        <title>Change Password</title>
    </head>
    <body>
        <!--<h1>Hello World!</h1>-->
        <%@include file="header.jsp" %>
        <div class="limiter">
            <div style="background-color: #30336b;
                 background-image: linear-gradient(19deg, #30336b 0%, #30336b 16%);" 
                 class="container-login">
                <div class="wrap-login">
                    <div class="text-center"> 
                        <form action="#" class="login-form">
                            <div class="my-2 ml-2"><span>Current Password</span></div>
                            <div class="wrap-input">
                                <input type="password" name="current_password" class="inputcustom" />
                            </div>
                            <div class="my-2 ml-2"><span>New Password</span></div>
                            <div class="wrap-input">
                                <input type="password" name="new_password" class="inputcustom" />
                            </div>
                            <div class="my-2 ml-2"><span>Confirm New Password</span></div>
                            <div class="wrap-input">
                                <input type="password" name="confirm_new_password" class="inputcustom" />
                            </div>
                            
                            <button class="btn btn-block login-form-btn">Login</button>
                            
                        </form>               
                    </div>
                </div>
            </div>
        </div>
        <%@include file="footer.jsp" %>
    </body>
</html>
