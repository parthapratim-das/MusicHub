<!DOCTYPE HTML>
<<html>
<HEAD>
	<script src="https://code.jquery.com/jquery.js"></script>
	<link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="resources/bootstrap/js/bootstrap.min.js"></script>
	<meta charset="utf-8">   
	<title>New User</title>   
	<link href="/twitter-bootstrap/twitter-bootstrap-v2/docs/assets/css/bootstrap2.2.css" rel="stylesheet">  
	<link rel="stylesheet" href="resources/bootstrap/css/demo.css">
	<link rel="stylesheet" href="resources/bootstrap/css/footer-distributed.css">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
	
	
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> 
</HEAD>>
<body>
<!-- ================ Common styles =================== -->

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
        </div><!--/.nav-collapse -->
      </div>
    </nav>

<!--  ================ Ends Here ====================== -->
<br><br><br><br>

<!-- =============== Registration form coding starts here ================== -->
<div id="myForm" class="container">
<form>
	<div class="form-group">
        <label for="inputName">Name</label>
        <input type="name" class="form-control" id="inputName" placeholder="Please enter your name">
    </div>
    <div class="form-group">
        <label for="inputEmail">Email</label>
        <input type="email" class="form-control" id="inputEmail" placeholder="Email">
    </div>
    <div class="form-group">
        <label for="inputPassword">Password</label>
        <input type="password" class="form-control" id="inputPassword" placeholder="Password">
    </div>
    <div class="checkbox">
        <label><input type="checkbox"> Remember me</label>
    </div>
    <div class="container">
    	<button type="submit" class="btn btn-primary">Register</button>
    </div>
</form>
</div>
<!-- =============== Form design ends here ================== -->


<!-- ============= Footer Design ===================== -->	
<footer class="footer-distributed">

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

		</footer>

</body>
</html>