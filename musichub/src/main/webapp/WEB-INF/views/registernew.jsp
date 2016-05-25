<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="img" value="webdata/images" />
<script src="https://code.jquery.com/jquery.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register Yourself</title>
</head>
<body>
<div class="container">
	<a href="index.jsp"><img src="resources/images/logo.png"></a>
	</div>
	 <ul class="nav nav-tabs">
	<li class="active"><a href="#">User Registration</a></li>
	<li class="dropdown">
		<a class="dropdown-toggle" data-toggle="dropdown" href="#">He<span class="caret"></span></a>
		<ul class="dropdown-menu">
			<li><a href="#">Footware</a></li>
			<li><a href="#">Clothes</a></li>
			<li><a href="#">Watches</a></li>
		</ul>
	</li>
	<li class="dropdown">
		<a class="dropdown-toggle" data-toggle="dropdown" href="#">She<span class="caret"></span></a>
		<ul class="dropdown-menu">
			<li><a href="#">Footware</a></li>
			<li><a href="#">Clothes</a></li>
			<li><a href="#">Watches</a></li>
			<li><a href="#">Jwellery</a></li>
		</ul>
	</li>
	<li><a href="#">Offer Zone</a></li>
	<div class="text-right">
	<p>+91 9038179460 || info@stopnshop.com</p>
	</div>
</div>
<br><br>
<hr>
<form role="form">
	<div class="form-group">
		<label for="name">Name</label>
		<input type="text" class="form-control" id="name" placeholder="Enter Name">
		</div>
		<div class="form-group">
		<label for="name">E-mail</label>
		<input type="text" class="form-control" id="name" placeholder="Enter Email">
		</div>
		<div class="form-group">
		<label for="name">Contact</label>
		<input type="text" class="form-control" id="name" placeholder="Enter Contact">
		</div>
		<div class="form-group">
		<label for="name">DoB</label>
		<input type="text" class="form-control" id="name" placeholder="Enter Date of Birth">
		</div>
		<button class="btn btn-default">Submit</button>
</form>

</body>
</html>