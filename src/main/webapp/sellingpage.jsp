<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

<title>Sell</title>
<style type="text/css">
.all{
background-color: grey;
margin-bottom: 100px;
padding-bottom: 5%
}

.form{
height: 350px;
width: 450px;
padding-bottom: 5%;
padding-left:15%;
padding-right:15%;
padding-top:10%;
border: 5px solid gray;
margin: 5%;
margin-left: 75px;

background-color: #EBEBEB;
}
input[type=submit] {
  background-color: #04AA6D;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: center;
}
.abc{
background-color: grey;

}


#left-column{ 
	float:left;
	width:600px; 
} 
#right-column{ 
	float:left; 
	width:600px;
} 
</style>


</head>

<body>
<%@include file="header.jsp" %>
<div align="center" ><i><h2 class="abc">Sell Your Product</h2></i></div>
<div class="all" id="left-column">

<form class="form">
<h2>Dell</h2><br>
  
  <label for="quantity">Quantity:</label><br>
  <input type="number" id="quantity" name="quantity" value="1">
  <br>
   <label for="selling_price">Selling Price:</label><br>
  <input type="number" id="selling_price" name="selling_price" value="75000" readonly ><br><br>
  <input type="submit" value="Sell">
</form>

</div>

<div class="all" id="right-column">

	<form class="form">
	<h2>Lenovo</h2><br>
	
	  
	  <label for="quantity">Quantity:</label><br>
	  <input type="number" id="quantity" name="quantity" value="1">
	  <br>
	   <label for="selling_price">Selling Price:</label><br>
	  <input type="number" id="selling_price" name="selling_price" value="55000" readonly ><br><br>
	  <input type="submit" value="Sell">
	</form>

</div>
<%@include file="footer.jsp" %>

</body>
</html>