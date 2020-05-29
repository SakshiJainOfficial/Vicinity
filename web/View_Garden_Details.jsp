<%-- 
    Document   : View_Garden_Details
    Created on : Mar 17, 2020, 1:54:28 PM
    Author     : sakshi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
    <link href="http://fonts.googleapis.com/css?family=Lato:100,300,400,300italic" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="resources/css/view_garden_details.css" />
        <link rel="stylesheet" type="text/css" href="resources/css/style.css">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet"/>
        <title>View garden Details</title>
    </head>
    <body>
         <!-- Header -->
      <%@include file="header.jsp" %>
      <!-- Header-->
        <!-- Container for the image gallery -->
        <br>
        
         <div class="container">
          <h4 class="heading-css"><b>Cinque Terre Garden Details</b></h4>
          <p> You can book venues suited for the kind of party you want to throw.
             Be it a corporate party or a birthday party, an anniversary bash or a casual gathering,
             we can find the perfect venue for you.</p>
        </div>
<div class="container">

  <!-- Full-width images with number text -->
  <div class="mySlides">
      <div class="numbertext">1 / 3</div>
    <img src="resources/img/garden3.jpg" style="width:100%;height:400px">
  </div>

  <div class="mySlides">
    <div class="numbertext">2 / 3</div>
    <img src="resources/img/garden4.jpg" style="width:100%;height:400px">
  </div>

  <div class="mySlides">
    <div class="numbertext">3 / 3</div>
    <img src="resources/img/garden7.jpg" style="width:100%;height:400px">
  </div>
  
  <!-- Next and previous buttons -->
  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
  <a class="next" onclick="plusSlides(1)">&#10095;</a>

  <!-- Image text -->
  <div class="caption-container">
    <p id="caption"></p>
  </div>

  <!-- Thumbnail images -->
  <div class="row">
   
    <div class="column">
        <img class="demo cursor" src="resources/img/garden3.jpg" style="width:100%;height: 100%" onclick="currentSlide(1)" alt="Cinque Terre">
    </div>
    <div class="column">
        <img class="demo cursor" src="resources/img/garden4.jpg" style="width:100%;height: 100%" onclick="currentSlide(2)" alt="Mountains and fjords">
    </div>
    
    <div class="column">
        <img class="demo cursor" src="resources/img/garden7.jpg" style="width:100%;height: 100%" onclick="currentSlide(3)" alt="Snowy Mountains">
    </div>
  </div>
</div>
        <br>
        <br>
    <div class="container design">
  <form action="action_page.php">
    <div class="row">
      <div class="col-25">
        <label for="fname">Email</label>
      </div>
      <div class="col-75">
        <input type="text" id="fname" name="email" placeholder="jainsakshi0826@gmail.com">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="lname">Last Name</label>
      </div>
      <div class="col-75">
        <input type="text" id="lname" name="lastname" placeholder="Your last name..">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="country">Country</label>
      </div>
      <div class="col-75">
        <select id="country" name="country">
          <option value="australia">Australia</option>
          <option value="canada">Canada</option>
          <option value="usa">USA</option>
        </select>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="subject">Subject</label>
      </div>
      <div class="col-75">
        <textarea id="subject" name="subject" placeholder="Write something.." style="height:200px"></textarea>
      </div>
    </div>
    <div class="row">
      <input type="submit" value="Submit">
    </div>
  </form>
</div>
        <script src="resources/js/view_garden_details.js"></script>
  <!-- Footer Links -->
<%@include file="footer.jsp" %>

    </body>
</html>
