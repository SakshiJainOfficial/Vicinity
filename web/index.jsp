<!DOCTYPE html>
<html lang="en">
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="vendors/css/normalize.css" />
        <link rel="stylesheet" type="text/css" href="vendors/css/grid.css" />
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css" >
        <script src="https://kit.fontawesome.com/e136c16ae6.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

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
        <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css" />
        <link rel="stylesheet" href="vendor/jquery-ui/jquery-ui.min.css" />
        <title>Garden</title>
    </head>
    <body>
        <!-- Header -->
        <%@include file="header.jsp" %>
        <!-- Header-->

        <div class="container">
            <h2>Bringing Venue to You!</h2>
            <p class="long-copy">
                <b >Browse thousands of unique venues for parties, meetings, conferences, dinners, events, away days and much more.</b> 
            </p>
        </div>
        <section class="section-booking">
            <div class="container-booking">
                <form id="booking-form" class="booking-form" method="Get" action="FilterServlet">
                    <div class="form-group">
                        <div class="form-destination">
                            <label for="destination">Destination</label>
                            <input type="text" id="destination" name="destination" placeholder="EG. GHOONGAT GARDEN" />
                        </div>
                        <div class="form-date-from form-icon">
                            <label for="date_from">From</label>
                            <input type="text" id="date_from" class="date_from" placeholder="Pick a date" />
                        </div>
                        <div class="form-date-to form-icon">
                            <label for="date_to">To</label>
                            <input type="text" id="date_to" class="date_to" placeholder="Pick a date" />
                        </div>
                        <span class="modify-qty minus" onClick="Giam()"><i class="zmdi zmdi-chevron-down"></i></span>
                        <div class="form-submit">
                            <input type="submit" id="submit" class="submit" value="Book now" />
                        </div>
                    </div>


                    <br>
                    
                    <div class="d-flex">
                        
                        <div class="dropdown mr-1" style="padding-left: 3px">
                            <button type="button" class="btn btn-success dropdown-toggle" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Sort By Price
                            </button>
                            <input type="hidden" id="datebox1" name="SortByPrice">
                            <div class="dropdown-menu" id="demolist1" aria-labelledby="dropdownMenuButton">
                                <a class="dropdown-item" href="#">Low-To-High</a>
                                <a class="dropdown-item" href="#">High-To-low</a>
                                
                            </div>
                        </div> 

                        <div class="btn-group">
                            <button type="button" class="btn btn-success dropdown-toggle" id="dropdownMenuReference" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-reference="parent">
                                City
                            </button>
                            <input type="hidden" id="datebox2" name="City"> 
                            <div class="dropdown-menu" id="demolist2" aria-labelledby="dropdownMenuButton">
                                <a class="dropdown-item" href="#">Indore</a>
                                <a class="dropdown-item" href="#">Bhopal</a>
                                <a class="dropdown-item" href="#">Jaipur</a>
                                <a class="dropdown-item" href="#">Dewas</a>
                                <a class="dropdown-item" href="#">Jabalpur</a>
                                <a class="dropdown-item" href="#">Gwalior</a>
                                <a class="dropdown-item" href="#">Ujjain</a>
                            </div>
                        </div>
                        <div class="btn-group" style="padding-left: 5px">
                            <button type="button" class="btn btn-success dropdown-toggle" id="dropdownMenuReference" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-reference="parent">
                                AC/Non-AC Rooms
                            </button>
                            <input type="hidden" id="datebox3" name="AcNonAcRooms">
                            <div class="dropdown-menu" id="demolist3" aria-labelledby="dropdownMenuButton">
                                <a class="dropdown-item" href="#">AC Room</a>
                                <a class="dropdown-item" href="#">Non-AC Rooms</a>

                            </div>
                        </div>

                        <div class="btn-group" style="padding-left: 5px">
                            <button type="button" class="btn btn-success dropdown-toggle" id="dropdownRating" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Rating
                            </button>
                            <input type="hidden" id="datebox4" name="rating">
                            <div class="dropdown-menu" id="demolist4" style="background-color: #30336B;" aria-labelledby="dropdownRating">

                                <a class="dropdown-item alert-success" href="#">5 Excellent</a>
                                <a class="dropdown-item alert-primary" href="#">4 Very-Good</a>
                                <a class="dropdown-item alert-secondary" href="#">3 Good</a>
                                <a class="dropdown-item alert-warning" href="#">2 Fair</a>
                                <a class="dropdown-item alert-danger" href="#">1 Okay</a>
                            </div>
                        </div>
                    </div>
                </form>
            </div>

        </section>

        <section class="section-features">
            <div class="container">
                <h2>Most Viewed</h2>
                <div id="myCarousel" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">

                        <div class="item active" style="height:600px">
                            <img src="resources/img/garden1.jpg" alt="Los Angeles" style="width:100%">
                            <div class="card-body text-block" >
                                <h5 class="card-title">Special title treatment</h5>
                                <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                                <a href="#" class="btn btn-primary">Go somewhere</a>
                            </div>
                        </div>

                        <div class="item" style="height: 600px">
                            <img src="resources/img/garden5.jpg" alt="Chicago" style="width:100%">
                            <div class="card-body text-block" >
                                <h5 class="card-title">Special title treatment</h5>
                                <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                                <a href="#" class="btn btn-primary">Go somewhere</a>
                            </div>
                        </div>

                        <div class="item" style="height: 600px">
                            <img src="resources/img/garden3.jpg" alt="New York" style="width:100%">
                            <div class="card-body text-block">
                                <h5 class="card-title">Special title treatment</h5>
                                <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                                <a href="#" class="btn btn-primary">Go somewhere</a>
                            </div>
                        </div>

                    </div>

                    <!-- Left and right controls -->
                    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#myCarousel" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>

        </section>
        <section class="section-features">

            <div class="row">
                <div class="col span-1-of-5 box">
                    <i class="fas fa-hand-holding-heart icon-big"></i><br>
                    <h5>Weddings</h5>
                    <p>
                        Best Wedding Reception Halls and Gardens. Enjoy hassle free bookings.
                    </p>
                </div>
                <div class="col span-2-of-5 box">
                    <i class="fas fa-birthday-cake icon-big"></i><br>
                    <h5>Birthday Parties</h5>
                    <p>
                        Book the Best Birthday Parties halls for your event at guaranteed best price.
                    </p>
                </div>
                <div class="col span-3-of-5 box">
                    <i class="fas fa-handshake icon-big"></i><br>
                    <h5>Conferences</h5>
                    <p>
                        Hire the Best Conference Venues, all complete with top-notch Facilities. 
                    </p>
                </div>
                <div class="col span-4-of-5 box">
                    <i class="fas fa-glass-cheers icon-big"></i><br>
                    <h5>Social Gathering</h5>
                    <p>
                        Best Social Gathering Halls and Gardens. Enjot the hassle free bookings.
                    </p>
                </div>
                <div class="col span-5-of-5 box">
                    <i class="fas fa-hand-point-down icon-big"></i><br>

                    <h5>Others</h5>
                    <p>
                        Facilities for Engagement, Corporate Parties, Pool Parties, Exhibitions etc.
                    </p>
                </div>
            </div>
        </section>


        <!-- Footer -->
        <%@include file="footer.jsp" %>

        <!-- JS -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/jquery-ui/jquery-ui.min.js"></script>
        <script src="resources/js/main.js"></script>
        <script>
                            $('#demolist1 a').on('click', function() {
                                $('#datebox1').val($(this).html());
                            });
        </script>
        <script>
                            $('#demolist2 a').on('click', function() {
                                $('#datebox2').val($(this).html());
                            });
        </script>
        <script>
                            $('#demolist3 a').on('click', function() {
                                $('#datebox3').val($(this).html());
                            });
        </script>
        <script>
                            $('#demolist4 a').on('click', function() {
                                $('#datebox4').val($(this).html());
                            });
        </script>
    </body>
</html>