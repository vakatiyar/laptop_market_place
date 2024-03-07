<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
input[type=submit] {
  background-color: #04AA6D;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: center;
}
</style>


</head>

<body>
<div style="text-align:center">
<h1>Sell Your Product Here</h1>
<form>
  <label for="product">Choose a product:</label>
  <select id="product" name="product">
    <option value="Laptop">Laptop</option>
    <option value="Dell">Dell</option>
    <option value="Lenovo">Lenovo</option>
  </select>
  <br><br>
  <label for="quantity">Quantity:</label>
  <input type="number" id="quantity" name="quantity" value="1">
  <br><br>
   <label for="selling_price">Selling Price:</label>
  <input type="number" id="selling_price" name="selling_price" value="25000"><br><br>
  <label for="total_amount">Total Amount:</label>
  <input type="number" id="total_amount" name="total_amount" value="25000"><br><br>
  <input type="submit" value="Sell">
</form>
</div>

</body>
</html>