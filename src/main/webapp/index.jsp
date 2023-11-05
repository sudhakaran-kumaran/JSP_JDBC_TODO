<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>
<h2 class="text-center fs-1 my-5">Welcome to TodoApp !!!</h2>
<div class="container d-flex justify-content-center align-items-center ">
<form class=" p-5 form-control w-50" action="login" method="post">
    <p>UserName : <input type="text" name="username"></p>
    <p>Password : <input type="text" name="password"></p>
    <a href="register.jsp">Register Here!!!</a>.
    <% if(request.getAttribute("error") != null){
    out.print("<p>Invalid Credentials!!!</p>");
    } %>
    <input class="btn btn-primary" type="submit" value="login"/>

</form></div>

</body>
</html>
