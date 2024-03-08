<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show Products</title>
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style type="text/css">
body {
            background-color: #343a40; 
            color: #ffffff;
        }

        .containr {
            background-color: #444d56;
            padding: 20px;
            border-radius: 10px;
            margin-top: 50px;
        }

        .card {
            background-color: #555d66;
            border: none;
            border-radius: 10px;
        }

        .cheader {
            background-color: #495057; 
            color: #ffffff; 
        }
</style>

</head>
<body>

<%if (request.getSession().getAttribute("result") != null){	
		ResultSet res = (ResultSet)request.getSession().getAttribute("result");%>
  		<%while (res.next()) { %>
			<div class="containr">
    		<div class="card">
       		 <div class="cheader">
            <h5>Product Details</h5>
        </div>
        <div class="body">
            <p class="ctext">Name of product: <%=res.getString(1) %></p>
            <p class="ctext">Description: <%= res.getString(2) %></p>
            <p class="ctext">Price: <%=res.getDouble(3) %></p>
            <p class="ctext">Quantity Available: <%=res.getInt(4) %></p>
            
        </div>
    </div>
</div>
  		<%}%>
	<%}%>
<%@include file="footer.jsp" %>
</body>
</html>