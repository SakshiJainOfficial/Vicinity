<%-- 
    Document   : FilteredList
    Created on : Jan 29, 2021, 1:36:47 PM
    Author     : sakshi
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css" >
        <script src="https://kit.fontawesome.com/e136c16ae6.js" crossorigin="anonymous"></script>



        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


        <title>Filtered Gardens</title>
    </head>
    <body>

        <!--Header-->
        <%@include file="header.jsp" %>
        <!--Header-->

        <% ArrayList<ArrayList> Rows1 = (ArrayList<ArrayList>) request.getSession().getAttribute("gardensRegisteredList");%>
        <div class="modal fade " id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">                                                 <h3 class="modal-title" id="staticBackdropLabel">Details</h3>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="false">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">

                        <img id="myImage" class="img-responsive" src="" alt="" height="30%" width="30%">

                        <label><b>Garden ID</b>-</label>     
                        <input type="hidden" name="eventId1" id="eventId1"/>
                        <span id="idHolder1"></span>
                        <br>
                        <label><b>Garden Name</b>-</label>     
                        <input type="hidden" name="eventId2" id="eventId2"/>
                        <span id="idHolder2"></span>
                        <br>
                        <label><b>Owner Name</b>-</label>     
                        <input type="hidden" name="eventId3" id="eventId3"/>
                        <span id="idHolder3"></span>
                        <br>
                        <label><b>Year Of Establishment</b>-</label>     
                        <input type="hidden" name="eventId4" id="eventId4"/>
                        <span id="idHolder4"></span>
                        <br>
                        <label><b>Email</b>-</label>     
                        <input type="hidden" name="eventId5" id="eventId5"/>
                        <span id="idHolder5"></span>
                        <br>
                        <label><b>Phone Number</b>-</label>     
                        <input type="hidden" name="eventId6" id="eventId6"/>
                        <span id="idHolder6"></span>
                        <br>
                        <label><b>Price</b>-</label>     
                        <input type="hidden" name="eventId7" id="eventId7"/>
                        <span id="idHolder7"></span>
                        <br>
                        <label><b>Address</b>-</label>     
                        <input type="hidden" name="eventId8" id="eventId8"/>
                        <span id="idHolder8"></span>
                        <br>
                        <label><b>City</b>-</label>     
                        <input type="hidden" name="eventId9" id="eventId9"/>
                        <span id="idHolder9"></span>
                        <br>
                        <label><b>Landmark</b>-</label>     
                        <input type="hidden" name="eventId10" id="eventId10"/>
                        <span id="idHolder10"></span>
                        <br>
                        <label><b>Pin code</b>-</label>     
                        <input type="hidden" name="eventId11" id="eventId11"/>
                        <span id="idHolder11"></span>
                        <br>
                        <label><b>Total Booking Till Date</b>-</label>     
                        <input type="hidden" name="eventId12" id="eventId12"/>
                        <span id="idHolder12"></span>
                        <br>
                        <label><b>AC Rooms</b>-</label>     
                        <input type="hidden" name="eventId13" id="eventId13"/>
                        <span id="idHolder13"></span>
                        <br>
                        <label><b>Non-AC Rooms</b>-</label>     
                        <input type="hidden" name="eventId14" id="eventId14"/>
                        <span id="idHolder14"></span>
                        <br>
                        <label><b>Wifi</b>-</label>     
                        <input type="hidden" name="eventId15" id="eventId15"/>
                        <span id="idHolder15"></span>
                        <br>

                        <label><b>Catering</b>-</label>     
                        <input type="hidden" name="eventId16" id="eventId16"/>
                        <span id="idHolder16"></span>
                        <br>

                    </div>
                    <div class="modal-footer">
                        <form action="BookServlet" method="get">
                            <input type="hidden" id="eventId17" name="eventId17"/>

                            <button type="submit" class="btn btn-secondary xyz">Book</button>
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <%   for (int i = 0; i < Rows1.size(); i++) {

        %>  
        <div class="card">
            <h5 class="card-header">Garden</h5>
            <div class="card-body">
                <h5 class="card-title"><%= Rows1.get(i).get(1)%></h5>
                <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                <form method="post">
                    <button type="button" class="btn btn-primary garden" data-toggle="modal" data-target="#staticBackdrop" data-id="Images/<%= Rows1.get(i).get(1)%>.png" data-todo='{"id1":"<%= Rows1.get(i).get(0)%>","gardenname":"<%= Rows1.get(i).get(1)%>","ownername":"<%= Rows1.get(i).get(2)%>","yearofestablishment":"<%= Rows1.get(i).get(3)%>","email":"<%= Rows1.get(i).get(4)%>","phoneno":"<%= Rows1.get(i).get(5)%>","price":"<%= Rows1.get(i).get(6)%>","address":"<%= Rows1.get(i).get(7)%>","city":"<%= Rows1.get(i).get(8)%>","landmark":"<%= Rows1.get(i).get(9)%>","pincode":"<%= Rows1.get(i).get(10)%>","totalbookingstilldate":"<%= Rows1.get(i).get(11)%>","acrooms":"<%= Rows1.get(i).get(12)%>","nonacrooms":"<%= Rows1.get(i).get(13)%>","wifi":"<%= Rows1.get(i).get(14)%>","catering":"<%= Rows1.get(i).get(15)%>"}'>Details</button>
                </form>
            </div>
        </div>
        <%}%>
        <br>
       
        <script type="text/javascript">$(document).on("click", ".garden", function() {
                var eventId1 = $(this).data('todo').id1;
                 $('#idHolder1').html(eventId1);
                   
                 document.getElementById('eventId17').value = eventId1;
          
                var eventId2 = $(this).data('todo').gardenname;
                $('#idHolder2').html(eventId2);
                var eventId3 = $(this).data('todo').ownername;
                $('#idHolder3').html(eventId3);
                var eventId4 = $(this).data('todo').yearofestablishment;
                $('#idHolder4').html(eventId4);
                var eventId5 = $(this).data('todo').email;
                $('#idHolder5').html(eventId5);
                var eventId6 = $(this).data('todo').phoneno;
                $('#idHolder6').html(eventId6);
                var eventId7 = $(this).data('todo').price;
                $('#idHolder7').html(eventId7);
                var eventId8 = $(this).data('todo').address;
                $('#idHolder8').html(eventId8);
                var eventId9 = $(this).data('todo').city;
                $('#idHolder9').html(eventId9);
                var eventId10 = $(this).data('todo').landmark;
                $('#idHolder10').html(eventId10);
                var eventId11 = $(this).data('todo').pincode;
                $('#idHolder11').html(eventId11);
                var eventId12 = $(this).data('todo').totalbookingstilldate;
                $('#idHolder12').html(eventId12);
                var eventId13 = $(this).data('todo').acrooms;
                $('#idHolder13').html(eventId13);
                var eventId14 = $(this).data('todo').nonacrooms;
                $('#idHolder14').html(eventId14);
                var eventId15 = $(this).data('todo').wifi;
                $('#idHolder15').html(eventId15);
                var eventId16 = $(this).data('todo').catering;
                $('#idHolder16').html(eventId16);
                
                var myImageId = $(this).data('id');
                $(".modal-body #myImage").attr("src", myImageId);
                     
            });
        </script>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

    </body>
</html>
