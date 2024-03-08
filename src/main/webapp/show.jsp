<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Show Product</title>

<style type="text/css">
.container
{
margin-top: 150px;
margin-side: 150px;
}
background-color: #04AA6D;
</style>
</head>
<body>
<%@ include file="header.jsp" %>


<h3 align="center">Select a product</h3>
 <div class="container">
        <form action="show" method="post">
            <div class="form-check">
                <input class="form-check-input" type="radio" name="pname" id="dell" value="Dell">
                <label class="form-check-label" for="dell">Dell</label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="pname" id="lenovo" value="lenovo">
                <label class="form-check-label" for="lenovo">Lenovo</label>
            </div>
            <input type="submit" class="btn btn-primary">
        </form>
    </div>
 <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
    <%@ include file="footer.jsp" %>
</body>
</html>