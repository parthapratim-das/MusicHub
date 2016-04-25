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
	<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
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
          </div>
         </div>
        </nav>
          <br><br><br>
<!-- ========== Header ends ========= -->

<!-- ========== Body of the page ======= -->

<center>
	<table class="table">
	<thead colspan="3">
	<th><h1>Details</h1></th>
	</thead>
	<tbody>
		<tr >
			<td rowspan="6"><img src="resources/images/${param.id}.jpg"></td>
			
		</tr>
		<tr>
		<td><h3>Features</h3></td>
		<td><h3>Details</h3></td>
		</tr>
		<tr>
		<td><b>Name</b></td>
		<td>${param.name}</td>
		</tr>
		<tr>
		<td><b>Category</b></td>
		<td>${param.cat}</td>
		</tr>
		<tr>
		<td><b>Price</b></td>
		<td>${param.price}</td>
		</tr>
		<tr>
		<td><b>Status</b></td>
		<td>${param.status}</td>
		</tr>
		<tr>
			<td colspan="3"><b>Product Description</b></b></td>
			<td>${param.desc}</td>
		</tr>
		<tr>
			<td>
				<a href = "#" class = "btn btn-primary" role = "button">Buy </a> 
            	<a href = "#" class = "btn btn-default" role = "button">Wishlist</a>
            </td>
		</tr>
		<tr>
			
		</tr>
	</tbody>
	</table>
	
</center>


</body>
</html>