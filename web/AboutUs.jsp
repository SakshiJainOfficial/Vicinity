<!DOCTYPE html>
<html lang="en">
  <head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="vendors/css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="vendors/css/grid.css" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css" >
    <link
      rel="stylesheet"
      type="text/css"
      href="vendors/css/ionicons.min.css"
    />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="resources/css/style.css" />
    <link
      href="http://fonts.googleapis.com/css?family=Lato:100,300,400,300italic"
      rel="stylesheet"
      type="text/css"
    />
    <title>AboutUs</title>
  </head>
  <body>
       <!-- Header -->
      <%@include file="header.jsp" %>
      <!-- Header-->
        <br>
        <div class="container">
          <h3 class="heading-css"><b>About-Us</b></h3>
          <p> You can book venues suited for the kind of party you want to throw.
             Be it a corporate party or a birthday party, an anniversary bash or a casual gathering,
             we can find the perfect venue for you.</p>
        </div>
        <div class="container row">
        <div class="col span-1-of-3 box">
         <img src="resources/img/garden1.jpg" alt="" srcset="">
          
        </div>
        <div class="col span-2-of-3 box">
         <img src="resources/img/garden2.jpg" alt="" srcset="">
          
        </div>
        <div class="col span-3-of-3 box">
         <img src="resources/img/garden3.jpg" alt="" srcset="">
          
        </div>
      </div>
      
        <div class="container">
          <p style="text-align: center;font-size: x-large;"><b><span style="color:#357908;font-size: xx-large;">FAQs</span> -Answer To Your Questions</b></p>
          <p style="color:#30336B"><b>How do I save money when booking a venue?</b></p>
         
          <p>List what is important and concede on the least important things. 
          Perhaps your guests don’t mind a venue which isn’t in the centre of the city?
          Maybe you can host it in Birmingham or Manchester instead of London?
          Alternatively, if it's an annual event you could book two years at once to negotiate a discount.</p>
          <hr class="faq_style">
          <p style="color:#30336B"><b>How do I start planning a corporate event?</b></p>
         
          <p>Events always start with the venue. 
            To start your search try writing a brief of what you are looking for. 
            Think about venue style, budget, package inclusions and location for your guests.
             Once you have secured the venue then you can move onto other aspects such as catering and production.

          </p>
          <hr class="faq_style">
          <p style="color:#30336B"><b>How fast can you confirm my booking?</b></p>
         
          <p> 
            We can confirm your bookings immediately within 10-15 minutes.
          </p>
          <hr class="faq_style">
          
        </div>
        <section class="section-features">
      
          <div class="row">
            <div class="col span-1-of-3 box">
              <i class="fas fa-clock icon-big"></i>
              <h5>Saves Time</h5>
              <p>
                No need to visit the venue which are far from our places.Thus, it saves our time.
              </p>
            </div>
            <div class="col span-2-of-3 box">
              <i class="fas fa-rupee-sign icon-big"></i>
              <h5>Saves Money</h5>
              <p>
                No need for 100s of phone calls and long negotiations. Take advantage of our experience.
              </p>
            </div>
            <div class="col span-3-of-3 box">
              <i class="fas fa-angle-double-right icon-big"></i>
              <h5>Hassle free Booking</h5>
              <p>
              No more need to visit the venue for booking. 
              </p>
            </div>         
          </div>
      </section>
        
  <!-- Footer -->
 <%@include file="footer.jsp" %>
    </body>