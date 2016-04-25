<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
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
 <c:url var="addAction" value="/register" ></c:url>
 
<form:form action="newuser" commandName="user" method="POST">
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
            <form:label path="username">
                 <spring:message text="Name"/> 
            </form:label>
        </td>
        <td>
            <form:input path="username" />
        </td> 
        <td align="left"><form:errors path="username" cssClass="error"/></td>
    </tr>
    <tr>
        <td>
            <form:label path="contact">
                 <spring:message text="Contact No."/> 
            </form:label>
        </td>
        <td>
            <form:input path="contact" />
        </td> 
        <td align="left"><form:errors path="contact" cssClass="error"/></td>
    </tr>
     <tr>
        <td>
            <form:label path="password">
                 <spring:message text="Password"/> 
            </form:label>
        </td>
        <td>
            <form:input path="password" />
        </td> 
        <td align="left"><form:errors path="contact" cssClass="error"/></td>
    </tr>
    <tr>
        <td>
            <form:label path="email">
                <spring:message text="Email Address"/>
            </form:label>
        </td>
        <td>
            <form:input path="email" />
        </td>
    </tr>
    <tr>
        <td>
            <form:label path="saddress">
                <spring:message text="Shipping Address"/>
            </form:label>
        </td>
        <td>
            <form:input path="saddress" />
        </td>
        <td align="left"><form:errors path="saddress" cssClass="error"/></td>
    </tr>
    <tr>
    <tr>
        <td>
            <form:label path="baddress">
                <spring:message text="Billing Address"/>
            </form:label>
        </td>
        <td>
            <form:input path="baddress" />
        </td>
        <td align="left"><form:errors path="baddress" cssClass="error"/></td>
    </tr>
        <td colspan="2">
            <c:if test="${empty name}">
                <input type="submit" text="Register Me"/>
            </c:if>
        </td>
    </tr>
</table>  
</form:form>       
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