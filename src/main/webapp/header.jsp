<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Header</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<style>
      .header
      {
      color: White;
      margin-left:35%;
  }
      img{
      position: relative;
      border-radius: 30px;
      }
      p{
      color: White;
      margin-right:10px;
      }
      h3{
      align-self: center
      }
      .navbar-brand{
      margin-left:10px;
      }
      </style>
</head>
<body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<div class="fixed-top">

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
<div class="collapse navbar-collapse" id="navbarSupportedContent">
  <a class="navbar-brand"  href="#"><img src="logo.png" alt="Laptop_market" align="middle" width="90" height="90" ></a>
  
<div  class="header">
   <h2>LAPTOP MARKET PLACE</h2>
    <h3 align="center">Sopra Steria</h3>
    </div>
  
   <!--  <div class="header"> 
   
    -->
  </div>
  
  <p><%=new Date() %></p>
</nav>
 </div>  
</body>
</html>