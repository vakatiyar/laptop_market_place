<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="javax.servlet.http.HttpSession" %> 
   <%! String pname,pdesc;
   int pquant;
   double pprice; %>
<%
HttpSession session1 = request.getSession(); 
session1.setAttribute("pname","Lenovo" );
session1.setAttribute("pdesc", "next");
session1.setAttribute("pprice", "2345678");
session1.setAttribute("pqant", "45");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style type="text/css">
body {
            background-color: #343a40; 
            color: #ffffff;
        }

        .container {
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

<div class="container">
    <div class="card">
        <div class="cheader">
            <h5>Product Details</h5>
        </div>
        <div class="body">
            <p class="ctext">Name of product: <%= pname %></p>
            <p class="ctext">Description: <%= pdesc %></p>
            <p class="ctext">Price: <%= pprice %></p>
            <p class="ctext">Quantity Available: <%= pquant %></p>
        </div>
    </div>
</div>
<%@include file="footer.jsp" %>
</body>
</html>