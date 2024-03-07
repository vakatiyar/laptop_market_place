<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<style type="text/css">
.container
{
margin-top: 150px;
}</style>
</head>
<body>
<%@ include file="header.jsp" %>
<h3 align="center">Select a product</h3>
 <div class="container">
        <form action="show" method="post">
            <div class="form-check">
                <input class="form-check-input" type="radio" name="pname" id="dell" value="option1">
                <label class="form-check-label" for="dell">Dell</label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="pname" id="lenovo" value="option2">
                <label class="form-check-label" for="lenovo">Lenovo</label>
            </div>
            <button type="button" class="btn btn-primary mt-2">Submit</button>
        </form>
    </div>
 <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <%@ include file="footer.jsp" %>
</body>
</html>