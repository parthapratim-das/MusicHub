<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
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
	<link rel="stylesheet" 
			href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css"></style>
	<script type="text/javascript" 
			src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>

<style>
    .error {
        color: red; font-weight: bold;
    }
</style>

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
 <!-- ================ Header part ends here =============== -->
 
<h1>
    Add a Product
</h1>

 <c:url var="addAction" value="/addnew" ></c:url>
 
<form:form action="newproductdetails" commandName="product" method="POST">
<table class="table">
    <c:if test="${!empty name}">
    <tr>
        <td>
            <form:label path="id">
                <spring:message text="ID"/>
            </form:label>
        </td>
        <td>
            <form:input path="id" readonly="true" size="8" />
           <!--  <form:hidden path="id" /> -->
        </td> 
    </tr>
    </c:if> 
    <tr>
        <td>
            <form:label path="name">Product Name
                 <spring:message text="Name"/> 
            </form:label>
        </td>
        <td>
            <form:input path="name" />
        </td> 
        <td align="left"><form:errors path="name" cssClass="error"/></td>
    </tr>
    <tr>
        <td>
            <form:label path="desc">
                <spring:message text="Description"/>
            </form:label>
        </td>
        <td>
            <form:input path="desc" />
        </td>
    </tr>
    <tr>
        <td>
            <form:label path="price">
                <spring:message text="Price"/>
            </form:label>
        </td>
        <td>
            <form:input path="price" />
        </td>
        <td align="left"><form:errors path="price" cssClass="error"/></td>
    </tr>
    <tr>
    <tr>
        <td>
            <form:label path="category">
                <spring:message text="Category"/>
            </form:label>
        </td>
        <td>
            <form:input path="category" />
        </td>
        <td align="left"><form:errors path="category" cssClass="error"/></td>
    </tr>
    <tr>
    	<td>
    		<form:label path="image">
    			<spring:message text="Upload Image"/>
    		</form:label>
    	</td>
    	<td>
    		<form:input path="image" type="file" name="file" />
			<input type="submit" value="upload" />
    	</td>
    </tr>
    <tr>
        <td colspan="2">
            <c:if test="${empty name}">
                <input type="submit" text="Add Product"/>
            </c:if>
        </td>
    </tr>
</table>  
</form:form>       
  
</body>
</html>