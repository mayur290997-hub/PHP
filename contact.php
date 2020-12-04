<?php

include("connection/connect.php");
error_reporting(0);





if(isset($_POST['submit']))                  //if post btn is pressed
{   
$name = $_POST['name'];   
$email = $_POST['email'];
$phone = $_POST['phone'];
$Message = $_POST['Message'];

                 

	if(!$name==' '||!$email==' '||!$phone==' '||!$Message==' ')
	{
	
	               echo '<div class="alert alert-dismissable fade in">';
                    echo	'<a href="#"  data-dismiss="alert" ></a>';				
				    echo ' All Text Field must be required!';
					echo  	'</div>';	
	
	}
	else
	{
	  
					
	$sql = "INSERT INTO contact(name,email,phone,Message) VALUES ('$name', '$email','$phone','$Message')";
	mysqli_query($db, $sql);
	
  echo '<div class="alert alert-success alert-dismissable fade in">';
 echo	'<a href="#" data-dismiss="alert" ></a>';
 echo 'Your Message submit Successfully. We will contact you soon.';
echo  	'</div>';
	}
	
	
}





?>


<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Contacts</title>
		<meta charset="utf-8">
		<meta name = "format-detection" content = "telephone=no" />
		<link rel="icon" href="images/favicon.ico">
		<link rel="shortcut icon" href="images/favicon.ico" />
		<link rel="stylesheet" href="css/form.css">
		<link rel="stylesheet" href="css/style.css">
	   <link rel="stylesheet" type="text/css" href="css/popup.php">

	</head>
	<body class="" id="top">
		<div class="main">
<!--==============================header=================================-->
			<header>
				<div class="menu_block ">
					<div class="container_12">
						<div class="grid_12">
							<nav class="horizontal-nav full-width horizontalNav-notprocessed">
								<ul class="sf-menu">
									<li><a href="index.php">Home</a></li>
									
									<li><a href="index-2.html">Cars</a></li>
									<li><a href="result.php">Search</a></li>
									<li class="current"><a href="contact.php">Contacts</a></li>
								</ul>
							</nav>
							<div class="clear"></div>
						</div>
						<div class="clear"></div>
					</div>
				</div>
				<div class="container_12">
					<div class="grid_12">
						<h1>
							<a href="index.php">
								<img src="images/logo.png" alt="Your Happy Family">
							</a>
						</h1>
					</div>
				</div>
				<div class="clear"></div>
			</header>
<!--==============================Content=================================-->
			<div class="content">
				<div class="container_12">
					<div class="grid_12">
						<h3>Find Us</h3>
						<div class="map">
							<figure>
								<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d24214.807650104907!2d-73.94846048422478!3d40.65521573400813!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sus!4v1395650655094" style="border:0"></iframe>
							</figure>
						</div>
					</div>
					<div class="grid_5">
						<h3>contact Info</h3>
						<div class="map">
							<p> <span class="color1"></span> </p>
						
							<address>
								<dl>
									<dt>
									
									</dt>
									
									<dd><span>Telephone:</span> </dd>
									<dd><span>FAX:</span>  </dd>
									<dd>E-mail: <a href="#" class="color1">Mandyghad@gmail.com</a></dd>
								</dl>
							</address>
						</div>
					</div>
					<div class="grid_6 prefix_1">
						<h3>feedback Form</h3>
		<form id="form" action=" " method="post">
						
						<label class="name">
								<input type="text" placeholder="Name:"    name='name'/>
								
							</label>
							<label class="name">
								<input type="text" placeholder="E-mail:"  name='email'/>
								
							</label>
							<label class="name">
								<input type="text" placeholder="Phone:"  name='phone'/>
								
							</label>
							
							<label class="message">
								<textarea placeholder="Message:" name='Message'></textarea>
							
							</label>

								
						
							
								<input  type='submit' name='submit'  value='submit'   />
						</form>
						</form>
					</div>
					<div class="clear"></div>
				</div>
			</div>
		</div>


<?php
include("footer.php");


	
?>