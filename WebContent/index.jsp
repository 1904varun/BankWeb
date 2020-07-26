<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- CSS only -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

<title>Insert title here</title>
</head>
<body style=" background-image:url('<%=request.getContextPath()%>/Lighthouse.jpg');color:white; background-repeat:no-repeat;background-size: cover">
<nav class="navbar fixed navbar-expand-lg navbar-light" style = "background-color: #ffffff;">
  <a class="navbar-brand" href="<%=request.getContextPath()%>/index.jsp"><img src ="<%=request.getContextPath()%>/Tulips.jpg" width="200" height = "30" alt="" loading="lazy"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style = "color:black">
          IVP (Pilot)
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="<%=request.getContextPath()%>/MyServlet">Arizona</a>
          <a class="dropdown-item" href="<%=request.getContextPath()%>/MyServletTexas">Texas</a>
          <a class="dropdown-item" href="<%=request.getContextPath()%>/MyServletVirginia">Virginia</a>
        </div>
      </li>
    </ul>
  </div>
</nav>
<p style="font-size: 45px; text-align: center; margin-left: auto; margin-right: auto; position: absolute; top: 50%; left: 50%; margin-right: -50%; transform: translate(-50%, -50%)">
Contact Center Applications Health Check
</p>
<!-- JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>