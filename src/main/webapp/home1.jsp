<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<style> 
        body, html { 
            height: 100%; 
            margin: 0; 
            font-family: Arial, Helvetica, sans-serif; 
        } 
        
        .background { 
            position: absolute; 
            height: 100%; 
            width: 100%; s
            background-size: cover; 
            background-position: center; 
            filter: blur(10px); 
            z-index: -1; 
        } 
        
        .text-container { 
            text-align: center; 
        } 
        .mainbody{
             margin-top: 150px;
        }
    </style> 
</head>
<body >
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<%@include file="header.jsp" %>
<div class="mainbody" align ="center">
  <ul class="nav nav-pills nav-fill">
  <li class="nav-item">
    <a class="nav-link" aria-current="page" href="show.jsp" style="color:black">Show</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="Sell" style="color:black">Sell</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="Purchase2" style="color:black">Purchase</a>
  </li>
</ul>
</div>
<%@include file="footer.jsp" %>
</body>
</html>