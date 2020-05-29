<%-- 
    Document   : welcomePage
    Created on : 17 Mar, 2020, 2:31:23 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
        <title>Welcome</title>
    </head>
    <body>
        <%--<%@include file="header.jsp" %>--%>
        
        <nav class="navbar navbar-expand-lg navbar-dark mx-auto" style="background-color: #30336B">
            <div class="container float-right">
            <a class="navbar-brand" href="index.jsp">Vicinity</a> 
            <button class="navbar-toggler" type="button" data-toggle="collpase" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>            
            </button>
            <div class="collapse navbar-collapse divleft" id="navbarNav">
                <!--<div class="container">-->
                <ul class="navbar-nav">
                    <li class="navbar-item" style="padding-right:20px ">
                        <a class="nav-link" href="#">Profile</a>
                    </li>
                    <li class="nav-link" href="#" style="padding-right:20px ">Current Booking</li>
                    <li class="nav-link" style="padding-right:20px ">Booking History</li>
                    <li class="nav-link" style="padding-right:20px ">Robinhood</li>
                </ul>
                    </div>
            </div>
        </nav>
        
        <div class="container">
            <div class="mySlides">
                <div class="numbertext">1/3</div>
                <img src="recources/img/garden1.jpg" style="width:100%;">
            </div>
            <div class="container">
                <div class="numbertext">2/3</div>
                <img src="resources/img/garden2.jpg" style="width:100%">
            </div>
            <div class="container">
                <div class="numbertext">3/3</div>
                <img src="resources/img/garden3.jpg" style="width:100%">
            </div>
        </div>
        <%@include file="footer.jsp" %>
    </body>
</html>
