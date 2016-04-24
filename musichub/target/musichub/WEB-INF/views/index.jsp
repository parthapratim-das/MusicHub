<!DOCTYPE html>   
<html lang="en"> 
<head> 

	<meta charset="utf-8">   
	<title>Home</title>   
	<link href="/twitter-bootstrap/twitter-bootstrap-v2/docs/assets/css/bootstrap2.2.css" rel="stylesheet">  
	<link rel="stylesheet" href="demo.css">
	<link rel="stylesheet" href="footer-distributed.css">
	
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
	
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="https://code.jquery.com/jquery.js"></script>
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>  
<body>  
	<nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index"><b><i>musichub</i></b></a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            	<li class="active"><a href="index">Home</a></li>
            	<li><a href="#about">About</a></li>
            	<li><a href="#contact">Contact</a></li>
            	<li class="dropdown">
              		<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Products <span class="caret"></span></a>
              		<ul class="dropdown-menu">
                		<li><a href="#">Guitar</a></li>
                		<li><a href="#">Keyboards</a></li>
                		<li><a href="#">Headphones</a></li>
                	</ul>
                </li>
            	
            	
          </ul>
          <ul class="nav navbar-nav navbar-right">
          <li>
          		<a href="signin">Sign in</a>
          </li>
           <!-- <li class="dropdown" id="menuLogin">
            <a class="dropdown-toggle" href="#" data-toggle="dropdown" id="navLogin">Login</a>
            <div class="dropdown-menu" style="padding:17px;">
              <form class="form" id="formLogin"> 
                <input name="username" id="username" type="text" placeholder="Username"><br><br> 
                <input name="password" id="password" type="password" placeholder="Password"><br><br>
                <button type="button" id="btnLogin" class="btn">Login</button>
              </form>
            </div>
          </li> --> 
            <li><a href="register">Sign up</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
	<br><br>
	<!-- This is for carousal -->
	
	<div id="myCarousel" class="carousel slide">
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
			<li data-target="#myCarousel" data-slide-to="3"></li>
			<li data-target="#myCarousel" data-slide-to="4"></li>
		</ol>
		<br>
		<div class="carousel-inner">
			<div class="item active">
				<img src="resources/images/3.jpg" alt="First Slide">
			</div>
			<div class="item">
				<img src="resources/images/4.jpg" alt="second Slide">
			</div>
			<div class="item">
				<img src="resources/images/5.jpg" alt="Third Slide">
			</div>
			<div class="item">
				<img src="resources/images/6.jpg" alt="Fourth Slide">
			</div>
			<div class="item">
				<img src="resources/images/7.jpg" alt="Fifth Slide">
			</div>
		</div>
		<a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
		<a class="carousel-control right" href="#myCarousel" data-slide="prev">&rsaquo;</a>
	</div>
	
	<br><br>
	
	<div class="container marketing">

      <!-- Three columns of text below the carousel -->
      <center>
      <div class="row">
        <div class="col-lg-4">
          <img class="img-circle" src="resources/images/home-guitar.jpg" alt="Generic placeholder image" width="200" height="200">
          <h2>Guitars</h2>
          <p>The best music happens when you have a personal connection to it. That same philosophy can extend to the instrument you hold in your hands: 
          	if a guitar means something special, you're bound to do great things with it.</p>
          <p><a class="btn btn-default" href="productdetails" role="button">View details &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img class="img-circle" src="resources/images/home-piano.jpg" alt="Generic placeholder image" width="200" height="200">
          <h2>Keyboards</h2>
          <p>Color is the keyboard, the eyes are the harmonies, the soul is the piano with many strings. The artist is the hand that plays, 
          	touching one key or another, to cause vibrations in the soul.
          </p><br>
          <p><a class="btn btn-default" href="productdetails" role="button">View details &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img class="img-circle" src="resources/images/home-hphone-mphone.jpg" alt="Generic placeholder image" width="200" height="200">
          <h2>Headphones</h2>
          <p>What all you need to do is to turn your headphones on to put the world around you off</p><br><br><br>
          <p><a class="btn btn-default" href="productdetails" role="button" href="products" >View details &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
      </div><!-- /.row -->
      </center>
      </div>
      
      
     

<!-- ============= Footer Design ===================== -->	
<div class="footer">
	<div class="footer-text">
			<div class="footer-right">

				<a href="http://www.facebook.com"><i class="fa fa-facebook"></i></a>
				<a href="http://www.twitter.com"><i class="fa fa-twitter"></i></a>
				<a href="http://www.linkedin.com"><i class="fa fa-linkedin"></i></a>
				<a href="http://github.com"><i class="fa fa-github"></i></a>

			</div>

			<div class="footer-left">

				<p class="footer-links">
					<a href="#">Home</a>
					·
					<a href="#">Pricing</a>
					·
					<a href="#">About</a>
					·
					<a href="#">Faq</a>
					·
					<a href="#">Contact</a>
				</p>

				<p>Partha Pratim Das &copy; 2016</p>
			</div>
	</div>
</div>

</body>


</html>  