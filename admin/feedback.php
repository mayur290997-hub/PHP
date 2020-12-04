<?php

if(!empty($_POST["logout"]))   //when user press logout button!
	{
	    $_SESSION["user_id"] = "";    //empty the value of user_id variable
	 session_destroy();                //distroyed the session
	    header('location:index.php');  // after distroy redirected user to index page
	}
error_reporting(0);  
 include("../connection/connect.php");

 ?>


<!DOCTYPE html>
<html>
<head>
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Simple Responsive Admin</title>
	<!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body>
     
           
          
    <div id="wrapper">
         <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="adjust-nav">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">
                        <img src="assets/img/logo.png" />
                    </a>
                </div>
              
                 <span class="logout-spn" >
                  <a href="#" style="color:#fff;"><form action="" method="post"><input type="submit" name="logout" value="Logout" /></form></a>  

                </span>
            </div>
        </div>
        <!-- /. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                 


                    <li class="active-link">
                        <a href="dashboard.php" ><i class="fa fa-desktop "></i>Dashboard </a>
                    </li>
                   

                    
                    <li>
                        <a href="booking.php"><i class="fa fa-edit "></i>booking </a>
                    </li>


                    <li>
                        <a href="car.php"><i class="fa fa-qrcode "></i>Avail Cars</a>
                    </li>
                    <li>
                        <a href="insertcar.php"><i class="fa fa-bar-chart-o"></i>Car Insertion</a>
                    </li>
					<li>
                        <a href="feedback.php"><i class="fa fa-bar-chart-o"></i>feedback </a>
                    </li>

                </ul>
                            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Feedback</h2>   
                    </div>
                </div>              
                        	   <!-- /. ROW  -->
		 	 <div class="row">
                    <div class="col-lg-6 col-md-6">   
		           <table class="table table-striped table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th> Name</th>
                                    <th> Email</th>
                                    <th>Phone</th>
									 <th>Message</th>
                                </tr>
                            </thead>
							 <tbody>
<?php                                                                          //for printing the  text
    
    $sql = "SELECT * FROM contact";
	 $result = mysqli_query($db, $sql);
while($row = mysqli_fetch_array($result))
{

       $id =$row['id'];
	       $name =$row['name'];
		       $email =$row['email'];
			       $phone =$row['phone'];
				       $Message =$row['Message'];
											       
												   

							 echo '<tr>';
                               echo     " <td>".$id."</td>";
                              echo    " <td>".$name."</td>";
                             echo     " <td>".$email."</td>";
                            echo       " <td>".$phone."</td>";
							 echo	" <td>".$Message."</td>";
									
                       echo      '   </tr>';
	
     




	
	



}	

    

?>
              
            
			
			
			
			
			
			
    </div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>

     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.min.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
    
   
</body>
</html>
