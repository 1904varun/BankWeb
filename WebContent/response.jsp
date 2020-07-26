<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- CSS only -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">

<title>Insert title here</title>
</head>
<body style="background: linear-gradient(0deg, rgba(236,222,240,1) 0%, rgba(255, 229, 229,1) 100%);">
	<nav class="navbar fixed navbar-expand-lg navbar-light"
		style="background-color: #ffffff;"> <a class="navbar-brand"
		href="<%=request.getContextPath()%>/index.jsp"><img
		src="<%=request.getContextPath()%>/Tulips.jpg" width="200" height="30"
		alt="" loading="lazy"></a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarNavDropdown">
		<ul class="navbar-nav">
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#"
				id="navbarDropdownMenuLink" data-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false" style="color: black">
					IVP (Pilot) </a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
					<a class="dropdown-item"
						href="<%=request.getContextPath()%>/MyServlet">Arizona</a> <a
						class="dropdown-item"
						href="<%=request.getContextPath()%>/MyServletTexas">Texas</a> <a
						class="dropdown-item"
						href="<%=request.getContextPath()%>/MyServletVirginia">Virginia</a>
				</div></li>
		</ul>
	</div>
	</nav>
	<table class="table table-striped"
		style="border-collapse: collapse; border: 2px solid black">
		<thead>
			<tr>
				<th scope="col" colspan="5"
					style="border-right: 2px solid black; text-align: center; border-bottom: 2px solid black">IVP
					App URLs Arizona Pilot</th>
			</tr>
		</thead>
		<thead>
			<tr>
				<th scope="col"
					style="border-right: 2px solid black; text-align: center; border-bottom: 2px solid black">Slice</th>
				<th scope="col"
					style="border-right: 2px solid black; text-align: center; border-bottom: 2px solid black">Server</th>
				<th scope="col"
					style="border-right: 2px solid black; text-align: center; border-bottom: 2px solid black">Status</th>
				<th scope="col"
					style="border-right: 2px solid black; text-align: center; border-bottom: 2px solid black">Version</th>
				<th scope="col"
					style="border-right: 2px solid black; text-align: center; border-bottom: 2px solid black">Health</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th scope="row" style="border-right: 2px solid black; text-align: center; border-bottom: 2px solid black"><c:out value="${slice[0]}"/></th>
				<th style="border-right: 2px solid black; text-align: center; border-bottom: 2px solid black"><c:out value="${server[0]}"/></th>
				<th style="border-right: 2px solid black; text-align: center; border-bottom: 2px solid black"><c:out value="${status[0]}"/></th>
				<th style="border-right: 2px solid black; text-align: center; border-bottom: 2px solid black"><c:out value="${version[0]}"/></th>
				<th style="border-right: 2px solid black; text-align: center; border-bottom: 2px solid black; background-color: <c:out value="${health[0]}"/> ">&nbsp;</th>
			</tr>
			<tr>
				<th scope="row" style="border-right: 2px solid black; text-align: center; border-bottom: 2px solid black"><c:out value="${slice[1]}"/></th>
				<th style="border-right: 2px solid black; text-align: center; border-bottom: 2px solid black"><c:out value="${server[1]}"/></th>
				<th style="border-right: 2px solid black; text-align: center; border-bottom: 2px solid black"><c:out value="${status[1]}"/></th>
				<th style="border-right: 2px solid black; text-align: center; border-bottom: 2px solid black"><c:out value="${version[1]}"/></th>
				<th style="border-right: 2px solid black; text-align: center; border-bottom: 2px solid black; background-color: <c:out value="${health[1]}"/> ">&nbsp;</th>
			</tr><tr>
				<th scope="row" style="border-right: 2px solid black; text-align: center; border-bottom: 2px solid black"><c:out value="${slice[2]}"/></th>
				<th style="border-right: 2px solid black; text-align: center; border-bottom: 2px solid black"><c:out value="${server[2]}"/></th>
				<th style="border-right: 2px solid black; text-align: center; border-bottom: 2px solid black"><c:out value="${status[2]}"/></th>
				<th style="border-right: 2px solid black; text-align: center; border-bottom: 2px solid black"><c:out value="${version[2]}"/></th>
				<th style="border-right: 2px solid black; text-align: center; border-bottom: 2px solid black; background-color: <c:out value="${health[2]}"/> ">&nbsp;</th>
			</tr><tr>
				<th scope="row" style="border-right: 2px solid black; text-align: center; border-bottom: 2px solid black"><c:out value="${slice[3]}"/></th>
				<th style="border-right: 2px solid black; text-align: center; border-bottom: 2px solid black"><c:out value="${server[3]}"/></th>
				<th style="border-right: 2px solid black; text-align: center; border-bottom: 2px solid black"><c:out value="${status[3]}"/></th>
				<th style="border-right: 2px solid black; text-align: center; border-bottom: 2px solid black"><c:out value="${version[3]}"/></th>
				<th style="border-right: 2px solid black; text-align: center; border-bottom: 2px solid black; background-color: <c:out value="${health[3]}"/> ">&nbsp;</th>
			</tr>
		</tbody>
	</table>
	<!-- JS, Popper.js, and jQuery -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
		integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
		crossorigin="anonymous"></script>
</body>
</html>