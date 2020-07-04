<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Garden Owner login</title>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link
            rel="stylesheet"
            href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
            integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
            crossorigin="anonymous"
            />
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
    </head>

    <body>
        <!-- Header -->
        <%@include file="header.jsp" %>
        <!-- Header-->
        <div class="limiter">
            <div
                style="background-color: #30336b;
                background-image: linear-gradient(19deg, #30336b 0%, #30336b 16%);
                ;"
                class="container-login"
                >
                <div class="wrap-login">
                    <div class="text-center">
                        <!--            <div class="container">
                                   
                                  </div>-->
                        <form action="LoginServlet" class="login-form" method="post">
                            <span class="login-form-title mb-4">Sign In with</span>
                            <a href="#" class="btn-face"
                               ><i class="fab fa-facebook-f"></i> Facebook</a
                            >
                            <a href="#" class="btn-google"
                               ><i class="fab fa-google-plus-g"></i> Google</a
                            >

                            <div class="my-2 ml-2"><span>Username</span></div>
                            <div class="wrap-input">
                                <input type="text" name="username" class="inputcustom" />
                            </div>
                            <div class="my-2 ml-2">
                                <span>Password</span>
                                <a href="#" class="forgot ml3">Forgot?</a>
                            </div>
                            <div class="wrap-input">
                                <input type="password" name="password" class="inputcustom" />
                            </div>
                            <button class="btn btn-block login-form-btn">Sign In</button>
                            <div class="text-center w-full">
                                <span class="text2">Not a member yet?</span>
                                <a href="GSignUp.jsp" class="text2 signup">SIGN UP</a>
                            </div>
                            <input type="hidden" name="logincheck" value="1">
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer -->
        <%@include file="footer.jsp" %>
    </body>
</html>
