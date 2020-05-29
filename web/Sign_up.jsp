<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Sign Up</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    </style>
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
    <link rel="stylesheet" type="text/css" href="resources/css/style.css" />
    <link
      href="http://fonts.googleapis.com/css?family=Lato:100,300,400,300italic"
      rel="stylesheet"
      type="text/css"
    />

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
            <div class="container">
            <a class="login-brand" href="#"><div>Sign Up</div></a>
          </div>
          <form action="#" class="login-form">

            <div class="my-2 ml-2"><span>Name</span></div>
            <div class="wrap-input">
              <input type="text" name="username" class="inputcustom" />
            </div>
             <div class="my-2 ml-2">
              <span>Contact-No.</span>  
            </div>
            <div class="wrap-input">
              <input type="number" name="contact" class="inputcustom" />
            </div>
             <div class="my-2 ml-2">
              <span>Email-Id</span>  
            </div>
            <div class="wrap-input">
              <input type="email" name="email" class="inputcustom" />
            </div>
            <div class="my-2 ml-2">
              <span>Password</span>  
            </div>
            <div class="wrap-input">
              <input type="password" name="password" class="inputcustom" />
            </div>
             <div class="my-2 ml-2">
              <span>Confirm Password</span>  
            </div>
            <div class="wrap-input">
              <input type="password" name="confirm-password" class="inputcustom" />
            </div>
            <button class="btn btn-block login-form-btn">Sign Up</button>
            <div class="text-center w-full">
              <span class="text2">Already a member?</span>
              <a href="logIn.jsp" class="text2 signup">SIGN In</a>
            </div>
          </form>
        </div>
      </div>
    </div>
        <!-- Footer -->
 <%@include file="footer.jsp" %>
  </body>
</html>
