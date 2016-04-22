<!DOCTYPE html>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	<link rel="stylesheet" 
			href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css"></style>
	<script type="text/javascript" 
			src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
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
                		<li><a href="productdetails">Guitar</a></li>
                		<li><a href="productdetails">Keyboards</a></li>
                		<li><a href="productdetails">Headphones</a></li>
                	</ul>
                </li>
            </ul>
         </div>
       </div>
     </nav>
         <br><br><br>
         
 <!-- ============== Table with population of data ================= -->        
       <table id="myTable" class="table table-striped" >  
        <thead>  
          <tr>  
            <th>Model No</th>  
            <th>Model Name</th>  
            <th>Price</th>  
            <th>Description</th> 
            <th>Category</th>
            <th>Status</th> 
            <th>Details</th>
          </tr>  
        </thead>  
        <tbody>  
        <c:forEach items="${listfromtable}" var="element">
          <tr>  
            <td>${element.id}</td>  
            <td>${element.name}</td>  
            <td>${element.price}</td>  
            <td>${element.desc}</td> 
           <td>${element.category}</td>
           <td>${element.status}</td>
           <td><a href="acoustic">Delete</a>|<a href="editproduct">Edit</a></td> 
          </tr>  
 	</c:forEach>
        </tbody>  
      </table>  
      
     <div class="container">
     		<a href="addnew"><b>Add New Product</b></b></a>
     </div>


</body>  
<script>
$(document).ready(function(){
    $('#myTable').dataTable();
});
</script>

</body>
</html>