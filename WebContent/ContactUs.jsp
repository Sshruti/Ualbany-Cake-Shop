<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Contact Us</title>


    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.css"/>
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.4.5/css/bootstrapvalidator.css"/>
    <link media="screen" rel="stylesheet" href="https://s3-us-west-2.amazonaws.com/ananth89/bootstrap-formhelpers.css"/>
    <link media="screen" rel="stylesheet" href="https://s3-us-west-2.amazonaws.com/ananth89/bootstrap-formhelpers.min.css"/>
    
    
     <!-- Include the FontAwesome CSS if you want to use feedback icons provided by FontAwesome -->
    <!--<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" />-->

    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.4.5/js/bootstrapvalidator.min.js"></script>
    <script src="https://s3-us-west-2.amazonaws.com/ananth89/bootstrap-formhelpers.js"></script>
    <script src="https://s3-us-west-2.amazonaws.com/ananth89/bootstrap-formhelpers.min.js"></script>
    <script src="https://s3-us-west-2.amazonaws.com/ananth89/bootstrap-formhelpers-phone.js"></script>
    <script src="http://maps.google.com/maps/api/js?sensor=false"></script>
    <script>	
 
      function init_map() {
		var var_location = new google.maps.LatLng(42.68674,-73.82285);
 
        var var_mapoptions = {
          center: var_location,
          zoom: 14
        };
 
		var var_marker = new google.maps.Marker({
			position: var_location,
			map: var_map,
			title:"Venice"});
 
        var var_map = new google.maps.Map(document.getElementById("map-container"),
            var_mapoptions);
 
		var_marker.setMap(var_map);	
 
      }
 
      google.maps.event.addDomListener(window, 'load', init_map);
                </script>
            
     <style>
     #map-container { height: 225px;left: -300px;}
     
.navbar-custom {
	background-color:#004c93;
    color:#ffffff;
  }
  
.navbar-custom .navbar-nav > li > a {
  	color:#fff;
  	
}
.navbar-custom .navbar-nav > .active > a, .navbar-nav > .active > a:hover, .navbar-nav > .active > a:focus {
    color: #00008B;
	background-color:#009ee0;
}
      
.navbar-custom .navbar-nav > li > a:hover, .nav > li > a:focus {
    text-decoration:none;
    background-color:#004c93;
}
      
.navbar-custom .navbar-brand {
  	color:#eeeeee;
}
.navbar-custom .navbar-toggle {
  	background-color:#004c93;
}
.navbar-custom .icon-bar {
  	background-color:#004c93;
}
.jumbotron {
    margin-bottom: 0px;
   <!-- background-image: url(../img/jumbotronbackground.jpg); -->
    background-position: 0% 25%;
    background-size: cover;
    background-repeat: no-repeat;
    background-color:#bbb;
    color: #333;
   <!-- text-shadow: black 0.3em 0.3em 0.3em; -->
}
footer h3 {
    margin-bottom: 30px;
}
footer .footer-above {
    padding-top: 5px;
    background-color: #004c93;
}
footer .footer-col {
    margin-bottom: 25px;
}
footer .footer-below {
    padding: 25px 0;
    background-color: #233140;
    color: #fff;
}
#search {
    position: fixed;
    top: 0px;
    left: 0px;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.7);
    
    -webkit-transition: all 0.5s ease-in-out;
	-moz-transition: all 0.5s ease-in-out;
	-o-transition: all 0.5s ease-in-out;
	-ms-transition: all 0.5s ease-in-out;
	transition: all 0.5s ease-in-out;
    -webkit-transform: translate(0px, -100%) scale(0, 0);
	-moz-transform: translate(0px, -100%) scale(0, 0);
	-o-transform: translate(0px, -100%) scale(0, 0);
	-ms-transform: translate(0px, -100%) scale(0, 0);
	transform: translate(0px, -100%) scale(0, 0);
    
    opacity: 0;
}
#search.open {
    -webkit-transform: translate(0px, 0px) scale(1, 1);
    -moz-transform: translate(0px, 0px) scale(1, 1);
	-o-transform: translate(0px, 0px) scale(1, 1);
	-ms-transform: translate(0px, 0px) scale(1, 1);
	transform: translate(0px, 0px) scale(1, 1); 
    opacity: 1;
}
#search input[type="search"] {
    position: absolute;
    top: 50%;
    width: 100%;
    color: rgb(255, 255, 255);
    background: rgba(0, 0, 0, 0);
    font-size: 60px;
    font-weight: 300;
    text-align: center;
    border: 0px;
    margin: 0px auto;
    margin-top: -51px;
    padding-left: 30px;
    padding-right: 30px;
    outline: none;
}
#search .btn {
    position: absolute;
    top: 50%;
    left: 50%;
    margin-top: 61px;
    margin-left: -45px;
}
#search .close {
    position: fixed;
    top: 15px;
    right: 15px;
    color: #fff;
	background-color: #428bca;
	border-color: #357ebd;
	opacity: 1;
	padding: 10px 17px;
	font-size: 27px;
}
</style>
    

</head>
<body>

<nav class="navbar navbar-custom navbar-fixed-top" >
      <div class="container" >
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" style="color:Orange;" href="LoginPage.jsp">UAlbany Cake Shop</a>
        </div><!--
        <div id="navbar" class="navbar-collapse collapse">
        </div>
        --><div id="navbar" class="navbar-collapse collapse">
       
        </div><!--/.navbar-collapse -->
      </div>
    </nav>
    <br/> <br/><br/>

<a align="justify" href="LoginPage.jsp" ><span class="glyphicon glyphicon-arrow-left" aria-hidden="true"></span> Back to Home</a>


    <div class="container">
        <div class="row">
        <div class="page-header">
            <h1>Contact Us</h1>
			<h5>The message will be submitted to the admin</h5>
        </div>

        <div class="col-lg-8 col-lg-offset-1" style="Right: 250px;">
            <form id="defaultForm" class="form-horizontal" action="SubmitMessage"  method ="GET">
                <div class="form-group">
                    <label class="col-lg-3 control-label">Name</label>
                    <div class="col-lg-5">
                        <input type="text" class="form-control" name="name" />
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-lg-3 control-label">Phone</label>
                    <div class="col-lg-5">
                     <input type="text" class="form-control bfh-phone" data-format="+1 (ddd) ddd-dddd" name="phone"  /> 
                     
                    </div>
                </div>

                			
				 <div class="form-group">
                    <label class="col-lg-3 control-label">Message`</label>
                    <div class="col-lg-5">
                        <input type="text" class="form-control" name="message" />
                    </div>
                </div>
                
                <div class="form-group">
                    <label class="col-lg-3 control-label">Reason</label>
                     <div class="col-lg-5">
		      <select name="reason"  style="height: 30px; width: 296px" >
                <option value="general" selected>General Enquiry</option>
                <option value="product">Product Support</option>
                <option value="other">Other</option>
                
              </select>
                   </div>
                </div>
                               
                 <div class="form-group">
                    <div class="col-lg-9 col-lg-offset-3">
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                </div>
                
                <div class="form-group">
                   <div class="col-lg-9 col-lg-offset-1" id="map-container" style="width: 1300px;left: 20px" ></div>
                </div>
                
                
            </form>
            
        </div>
    </div>
<Script>
function Success()
{
    alert('mail sent successfully');
}
</Script>
 


<script type="text/javascript">
$(document).ready(function() {
    $('#defaultForm').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            name: {
                message: 'Please enter a valid name',
                validators: {
                    notEmpty: {
                        message: 'Name cannot be empty'
                    },
					stringLength: {
                        min: 4,
                        message: 'Name must at least be 4 characters'
                    },
						 regexp: {
                        regexp:/[a-zA-Z]/,
                        message: 'Name can only be letters'
                    }
                    }
                },
            
            phone: {
                message: 'Invalid phone number',
                validators: {
                    notEmpty: {
                        message: 'Phone cannot be empty'
                    },stringLength: {
                        min: 17,
                        max: 17,
                        message: 'Phone must be exactly 10 numbers'
                    },
                    regexp: {
                        regexp:/^([0-9\(\)\/\+ \-]*)$/,
                        message: 'Letters cannot be accepted in Phone field'
                    }       
                }
            },
              username: {
                message: 'Invalid username',
                validators: {
                    notEmpty: {
                        message: 'The username field is required and cannot be empty'
                    },
					stringLength: {
                        min: 4,
                       
                        message: 'must be at least 4 characters'
                    }
                
                  
                }
            },
			
			password: {
                message: 'The message is not valid',
                validators: {
                    notEmpty: {
                        message: 'The password field cannot be empty'
                    },
					stringLength: {
                        min: 4,
                        
                        message: 'Password must be at least 4 characters'
                    }
				
              
                  
                }
            },
			
			address: {
                message: 'The address is not valid',
                validators: {
                    notEmpty: {
                        message: 'Address is required and can\'t be empty'
                    },
					stringLength: {
                        min: 4,
					
                        message: 'Address too short'
                    }   
                }
            },
            
            
                
        }
    });
});
</script>
<script>
		$(function() {
			
			$(document).ready( function() 
			{
				$('#citybox').hide();
				$('#statebox').hide();
				
			});
			
			// OnKeyDown Function
			$("#zip").keyup(function() {
				var zip_in = $(this);
				var zip_box = $('#zipbox');
				
				if (zip_in.val().length<5)
				{
					zip_box.removeClass('error success');
				}
				else if ( zip_in.val().length>5)
				{
					zip_box.addClass('error').removeClass('success');
				}
				else if ((zip_in.val().length == 5) ) 
				{
					
					// Make HTTP Request
					$.ajax({
						url: "http://api.zippopotam.us/us/" + zip_in.val(),
						cache: false,
						dataType: "json",
						type: "GET",
					  success: function(result, success) {
							// Make the city and state boxes visible
							$('#citybox').slideDown();
							$('#statebox').slideDown();
						
							// US Zip Code Records Officially Map to only 1 Primary Location
							places = result['places'][0];
							$("#city").val(places['place name']);
							$("#state").val(places['state']);
							zip_box.addClass('success').removeClass('error');
						},
						error: function(result, success) {
							zip_box.removeClass('success').addClass('error');
						}
					});
				}
	});
		});
			
	</script>

<script type="text/javascript">
  var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-30975659-1']);
	  _gaq.push(['_setDomainName', 'zippopotam.us']);
	    _gaq.push(['_trackPageview']);
		  (function() {
		      var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
			      ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
				      var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
					    })();
						</script>
<footer class="footer">
    <div class="footer-below navbar-fixed-bottom">
            <div class="container">
                <div class="row">
                    <div align="center" class="col-lg-12">
                         &copy; Lab 3 Team 4
                    </div>
                </div>
            </div>
        </div>
</footer>
</body>
</html>
