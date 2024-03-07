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

.all{
background-color: grey;
margin-bottom: 100px;
padding-bottom: 5%
}

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
margin-left: 150px;
margin-top:100px;
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

background-color: #EBEBEB;
}
</style>
</head>
<body>
<%@include file="header.jsp" %>
<div class="all">
<%if (request.getSession().getAttribute("result") != null) {
	ResultSet rs = (ResultSet)request.getSession().getAttribute("result");
	while(rs.next()){ %>
	
	<form action="Purchase2" method="post" >
	<div class="card text-center">
  	<div class="card-body">
	    <h4 class="card-title">Brand : <%=rs.getString(2) %></h4>
	    <p class="card-text" style="color: grey;">Name : <%=rs.getString(3) %></p>
	    <h5 class="card-text2">Price : <%=rs.getDouble(4) %></h5>

	  	<label for="quantity">Quantity</label><br>
	  	<input type = "hidden" name = "product_id">
	  	<input type="number" id="quantity" value="1" name="quantity">
	 
	
	  
	  <input type="submit" class="btn btn-primary" />
  </div>
</div>
</form>
	
<% }} %>

<div class="all">


</div>
<!-- <h2>Purchase</h2>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  <div class="form-group">
    <label for="exampleFormControlSelect1">Select Product</label>
    <select class="form-control" id="exampleFormControlSelect1" name="product">
    <option selected>Choose...</option>
    
      <option>Lenovo</option>
      <option>Dell</option>
    </select>
    <label for="quantity">Quantity</label><br>
  <input type="number" id="quantity" name="quantity" value="1" name="quantity">
  </div>
  <div class="form-group">
    <label for="exampleInputPrice">Enter Price</label>
    <input type="number" class="form-control" id="exampleInputPrice"  placeholder="" name="price">
    </div>
  <div class="form-group">
    <label for="exampleFormControlTextarea1">Product Description</label>
    <textarea class="form-control" id="exampleFormControlTextarea1" rows="2" name="description"></textarea>
  </div><br>
  <button type="submit" class="btn btn-primary">Purchase</button> -->


<%@include file="footer.jsp" %>

</body>
</html>