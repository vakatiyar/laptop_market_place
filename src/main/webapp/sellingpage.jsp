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
height: 550px;
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
input[type=submit] {
  background-color: #04AA6D;
  color: white;
  padding: 13px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: center;
}
</style>


</head>

<body>
<%@include file="header.jsp" %>
<div class="all">

<form class="form">
<h2>Sell Your Product Here</h2><br>
  <label for="product">Choose a product:</label><br>
  <select id="product" name="product">
    <option value="Laptop">Select</option>
    <option value="Dell">Dell</option>
    <option value="Lenovo">Lenovo </option>
  </select>
  <br>
  <label for="quantity">Quantity:</label><br>
  <input type="number" id="quantity" name="quantity" value="1">
  <br>
   <label for="selling_price">Selling Price:</label><br>
  <input type="number" id="selling_price" name="selling_price" placeholder="Enter selling price in INR" ><br>
  <label for="total_amount">Total Amount:</label><br>
  <input type="number" id="total_amount" name="total_amount" placeholder="Amount in INR" ><br><br>
  <input type="submit" value="Sell">
</form>

</div>
<%@include file="footer.jsp" %>

</body>
</html>