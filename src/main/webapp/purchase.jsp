<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<title>Purchase</title>

<style type="text/css">



.card-body
{
float:left;
height: 300px;
width: 300px;
padding-bottom: 5%;
padding-left:15%;
padding-right:15%;
padding-top:15%;
border-radius:50px;
border: 5px solid #51829B;
margin: 5%;
margin-left: 450px;
margin-top:200px;

background-color: #E3F4F4;
}

.form{

height: 460px;
width: 900px;
padding-bottom: 5%;
padding-left:15%;
padding-right:15%;
padding-top:5%;
border: 5px solid gray;
margin: 5%;
margin-left: 150px;
margin-top: 250px;

background-color: #EBEBEB;
}
</style>
</head>
<body>
<%@include file="header.jsp" %>
<%if (request.getSession().getAttribute("result") != null) {
	ResultSet rs = (ResultSet)request.getSession().getAttribute("result");
	while(rs.next()){ %>
	
	<form action="Purchase2" method="post" >
	<div class="card text-center">
  	<div class="card-body">
	    <h4 class="card-title">Brand : <%=rs.getString(2) %></h4>
	    <p class="card-text" style="color: grey;">Name : <%=rs.getString(3) %></p>
	    <h5 class="card-text2">Price : <%=rs.getDouble(4) %></h5>
	    <input type="number" style="background-color: #E3F4F4" name = "product_id" placeholder="enter id">

	  	<label for="quantity">Quantity <%=rs.getDouble(6) %></label><br>
	  	
	  	<input type="number" id="quantity" value="1" name="quantity">
	 
	
	  
	  <input type="submit" class="btn btn-primary" />
  </div>
</div>
</form>
	
<% }} %>

<div class="all">


</div>


<%@include file="footer.jsp" %>

</body>
</html>