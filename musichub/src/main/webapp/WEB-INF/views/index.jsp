<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="img" value="resources/images" />
<script src="https://code.jquery.com/jquery.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>MyStore</title>

<style type="text/css">
.img-hover img {
    -webkit-transition: all .3s ease; /* Safari and Chrome */
  	-moz-transition: all .3s ease; /* Firefox */
  	-o-transition: all .3s ease; /* IE 9 */
  	-ms-transition: all .3s ease; /* Opera */
  	transition: all .3s ease;
}
.img-hover img:hover {
    -webkit-backface-visibility: hidden;
    backface-visibility: hidden;
    -webkit-transform:translateZ(0) scale(1.20); /* Safari and Chrome */
    -moz-transform:scale(1.20); /* Firefox */
    -ms-transform:scale(1.20); /* IE 9 */
    -o-transform:translatZ(0) scale(1.20); /* Opera */
    transform:translatZ(0) scale(1.20);
}
  
  
.grayscale {
  -webkit-filter: brightness(1.10) grayscale(100%) contrast(90%);
  -moz-filter: brightness(1.10) grayscale(100%) contrast(90%);
  filter: brightness(1.10) grayscale(100%); 
}

</style>
</head>
<body>
<div class="container">
	<a href="index.jsp"><img src="resources/images/logo.gif"></a>
	<div class="text-right">
		<button type="submit" class="btn btn-default" data-toggle="modal" data-target="#myModal" >Sign in</button>
		<a href="Register">New User? Sign Up</a>
	</div>
	
	<div class="modal fade" id="myModal" role="dialog" height="60%">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h3 class="modal-title">Lets Get in</h3>
        </div>
        <div class="modal-body">
          <div class="form-group">
			<label for="Username" class="col-sm-2 control-label">Username</label>
			<div class="col-sm-10">
			<input type="text" class="form-control" id="uname" placeholder="Enter Username">
			</div>
		</div>
		<div class="form-group">
			<label for="Password" class="col-sm-2 control-label">Password</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="password" placeholder="Enter password">
			</div>
		</div>
        </div>
        <br>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-submit="modal">Submit</button>
          <button type="button" class="btn" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
   <ul class="nav nav-tabs">
	<li class="active"><a href="#">Home</a></li>
	<li class="dropdown">
		<a class="dropdown-toggle" data-toggle="dropdown" href="#">Guitars<span class="caret"></span></a>
		<ul class="dropdown-menu">
			<li><a href="#">Acoustic</a></li>
			<li><a href="#">Electric</a></li>
			<li><a href="#">Classical</a></li>
		</ul>
	</li>
	<li class="dropdown">
		<a class="dropdown-toggle" data-toggle="dropdown" href="#">Piano<span class="caret"></span></a>
		<ul class="dropdown-menu">
			<li><a href="#">Type-1</a></li>
			<li><a href="#">Type-2</a></li>
			<li><a href="#">Type-3</a></li>
			<li><a href="#">Type-4</a></li>
		</ul>
	</li>
	<li><a href="#">Offer Zone</a></li>
	<div class="text-right">
	<p><span class="glyphicon glyphicon-earphone"> 91 9038179460</span> </p><p><span class="glyphicon glyphicon-envelope"> info@stopnshop.com</span></p>
	</div>
	</ul>		
</div>
<div id="myCarousel" class="carousel slide">
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
		</ol>
		<br>
		<div class="carousel-inner">
			<div class="item active">
				<img src="resources/images/1.jpg" alt="First Slide">
			</div>
			<div class="item">
				<img src="resources/images/2.jpg" alt="second Slide">
			</div>
			
		</div>
		<a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
		<a class="carousel-control right" href="#myCarousel" data-slide="prev">&rsaquo;</a>
		</div>


<div class="container">
<hr>

<center>
	<table class="table">
		<tr>	
			<td><a href="guitars"><img src="resources/images/guiter.png" class="img-rounded"></a></td>
			<td><a href=""><img src="resources/images/audio.png" class="img-rounded"></a></td>
			<td><a href=""><img src="resources/images/piano.png" class="img-rounded"></a></td>
		</tr>
	</table>
</center>

</body>
</html>