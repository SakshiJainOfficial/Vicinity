<html><head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
        <meta charset="UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
        <link href="http://fonts.googleapis.com/css?family=Lato:100,300,400,300italic" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="resources/css/style.css">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet"/>
        <link rel="stylesheet" type="text/css" href="resources/css/Gsignup.css">

    </head>
    <body>
        <%@include file="header.jsp" %>
        <div class="container-login" >
            <div class="wrap-login">
                <div class="container">
                    <form action="GSignUpServlet" id="regForm" method="get">
                        <center><h2>Sign up</h2></center>
                        <!-- One "tab" for each step in the form: -->
                        <div class="container">
                            <div class="tab" style="display: block;">
                                <table><tr><td>
                                            <div class="wrap-input">
                                                <p><img id="output" width="200" src="Images/upload.png" /></p>
                                                <input type="file" class="inputcustom" accept="image/*" id="file" onchange="loadFile(event)" oninput="this.className = ''" name="image" placeholder="Garden name..." style="width: 77%">

                                            </div>
                                            <script>
                                                                   var loadFile = function(event) {
                                                                       var image = document.getElementById('output');
                                                                       image.src = URL.createObjectURL(event.target.files[0]);
                                                                   };
                                            </script>
                                        </td>
                                        <td>
                                            <div class="my-2 ml-2" ><span class="tdinp">Garden Name</span></div>
                                            <div class="wrap-input">
                                                <input type="text" class="inputcustom" oninput="this.className = ''" name="gname" placeholder="Garden name...">
                                            </div>
                                            <div class="my-2 ml-2"><span class="tdinp">Owner Name</span></div>
                                            <div class="wrap-input">
                                                <input type="text" class="inputcustom" oninput="this.className = ''" name="oname" placeholder="Owner name...">
                                            </div>
                                            <div class="my-2 ml-2" ><span class="tdinp">Year Of Establishment</span></div>
                                            <div class="wrap-input">
                                                <input type="year" class="inputcustom" oninput="this.className = ''" name="year" placeholder="year of establishment...">
                                            </div>
                                        </td></tr></table>
                                <div class="my-2 ml-2"><span>Email</span></div>
                                <div class="wrap-input">
                                    <input type="email" class="inputcustom" name="email" oninput="this.className = ''" placeholder="Email...">
                                </div>
                                <div class="my-2 ml-2"><span>Phone no.</span></div>
                                <div class="wrap-input">
                                    <input type="number" class="inputcustom" name="phone" oninput="this.className = ''" placeholder="Phone no....">
                                </div>
                                <div class="my-2 ml-2"><span>Price</span></div>
                                <div class="wrap-input">
                                    <input type="number" class="inputcustom" name="price" oninput="this.className = ''" placeholder="Price per day...">
                                </div>
                            </div>
                        </div>
                        <div class="container">
                        </div>
                        <div class="tab">
                            <div class="my-2 ml-2"><span>Address</span></div>
                            <div class="wrap-input">
                                <input type="text" class="inputcustom" oninput="this.className = ''" name="address" placeholder="Address...">
                            </div>
                            <div class="wrap-input">
                                <input type="text" class="inputcustom" oninput="this.className = ''" name="city" placeholder="City...">
                            </div>
                            <div class="wrap-input">
                                <input type="text" class="inputcustom" oninput="this.className = ''" name="landmark" placeholder="Landmark...">
                            </div>
                            <div class="wrap-input">
                                <input type="text" class="inputcustom" oninput="this.className = ''" name="pincode" placeholder="Pincode...">
                            </div>
                            <div class="my-2 ml-2"><span>Total bookings till date</span></div>
                            <div class="wrap-input">
                                <input type="number" class="inputcustom" name="noBooking" oninput="this.className = ''" placeholder="total bookingsS...">
                            </div>
                            <div class="my-2 ml-2"><span>Total no. of rooms</span></div>
                            <div class="wrap-input">
                                <input type="number" class="inputcustom" name="acRooms" oninput="this.className = ''" placeholder="No. of AC rooms...">
                            </div>
                            <div class="wrap-input">
                                <input type="number" class="inputcustom" name="nonacRooms" oninput="this.className = ''" placeholder="No. of Non AC rooms...">
                            </div><br>
                            <div class="wrap-input">
                                <center> <table><tr><td><div>  
                                                    <input id="wifi" class="checkbox-custom" name="wifi" type="checkbox" >
                                                    <label for="wifi" class="checkbox-custom-label">Wifi</label> </div>
                                            </td><td style="width:20%"></td><td>
                                                <div>
                                                    <input id="cattering" class="checkbox-custom" name="cattering" type="checkbox">
                                                    <label for="cattering" class="checkbox-custom-label">Cattering</label>
                                                </div>
                                            </td></tr> </table></center>
                            </div>
                        </div>
                        <div class="container">
                            <div class="tab">
                                <div class="my-2 ml-2"><span style="font-size: 25px">Select available events</span></div>
                                <div class="wrap-input eventss" style="font-size: 14px;font-weight: 300">
                                    <div>
                                        <input id="birthday" class="checkbox-custom" name="events" type="checkbox">
                                        <label for="birthday" class="checkbox-custom-label">Birthday party</label>
                                    </div>
                                    <div>
                                        <input id="reception" class="checkbox-custom" name="events" type="checkbox">
                                        <label for="reception" class="checkbox-custom-label">Reception</label>
                                    </div>
                                    <div>
                                        <input id="marriage" class="checkbox-custom" name="events" type="checkbox">
                                        <label for="marriage" class="checkbox-custom-label">Marriage</label>
                                    </div>
                                    <div>
                                        <input id="aniversary" class="checkbox-custom" name="events" type="checkbox">
                                        <label for="aniversary" class="checkbox-custom-label">Aniversary</label>
                                    </div>
                                    <div>
                                        <input id="meeting" class="checkbox-custom" name="events" type="checkbox">
                                        <label for="meeting" class="checkbox-custom-label">Meeting</label>
                                    </div>
                                    <div>
                                        <input id="kitty" class="checkbox-custom" name="events" type="checkbox">
                                        <label for="kitty" class="checkbox-custom-label">Kitty party</label>
                                    </div>    <div>
                                        <input id="bachelorp" class="checkbox-custom" name="events" type="checkbox">
                                        <label for="bachelorp" class="checkbox-custom-label">Bachelor party</label>
                                    </div>
                                    <div>
                                        <input id="cocktailp" class="checkbox-custom" name="events" type="checkbox">
                                        <label for="cocktailp" class="checkbox-custom-label">Cocktail party</label>
                                    </div>
                                    <div>
                                        <input id="conference" class="checkbox-custom" name="events" type="checkbox">
                                        <label for="conference" class="checkbox-custom-label">Conference</label>
                                    </div>
                                    <div>
                                        <input id="socialG" class="checkbox-custom" name="events" type="checkbox">
                                        <label for="socialG" class="checkbox-custom-label">Social gathering</label>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <%=(request.getAttribute("errMessage") == null) ? ""
         : request.getAttribute("errMessage")%>
                        <div class="container"><br>
                            <div style="float:right;">
                                <button type="button" id="prevBtn" onclick="nextPrev(-1)" style="display: none;">Previous</button>
                                <button type="button" id="nextBtn" onclick="nextPrev(1)">Next</button>
                            </div>
                        </div>
                        <!-- Circles which indicates the steps of the form: -->
                        <div class="container">
                            <div style="text-align:center;margin-top:40px;">
                                <span class="step active"></span>
                                <span class="step"></span>
                                <span class="step"></span>

                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <script src="resources/js/Gsignup.js"></script>

        <!-- Footer Links -->
        <%@include file="footer.jsp" %>

    </body></html>