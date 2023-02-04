<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>About</title>

<%
   response.addHeader("Cache-Control", "no-cache,no-store,private,must-revalidate,max-stale=0,post-check=0,pre-check=0"); 
   response.addHeader("Pragma", "no-cache"); 
   response.addDateHeader ("Expires", 0);
 %>
</head>

<body>
	<%@include file="navbar.html"%>
	<%
	try {
		String k = (String) session.getAttribute("loginSession");
		if (k == null)
			response.sendRedirect("http://localhost:8080/Classidor/pages/login.jsp");
	} catch (Exception e) {
		System.out.println("Exception in session");
		response.sendRedirect("http://localhost:8080/Classidor/pages/login.jsp");
	}
	%>
	
	<div class="container content">
		<h4 style="text-align: center;text-decoration:underline;">
			<strong>Central Computing Facility Center (CCFC)</strong>
		</h4>
		<div class="row mt-5">
			<div class="col">
				<img src="http://localhost:8080/Classidor/images/ccfc.jfif"
					class="img-thumbnail">
				
			</div>
			<div class="container col">
				<strong>CCFC Incharge</strong>
				<ul>
				<li>Mr. Deepak Harbola
				<li>Designation : Programmer
				<li>Phone : 6*******50
				</ul>
			</div>
		</div>
		<h3 style="text-align: center;center;margin-top:50px;">	-------------------------------------------</h3>
		<h4 style="text-align:center;margin-top:50px; text-decoration:underline;">
			<strong>Library</strong>
		</h4>
		<div class="row mt-5">
			<div class="container col mx-5" style="margin-top:30px;">
				<strong>Library Incharge</strong>
				<ul>
				<li>Mr. Keshav Singh
				<li>Phone : 9*******50
				</ul>
			</div>
			
			<div class="col">
				<img src="http://localhost:8080/Classidor/images/library.jfif"
					class="img-thumbnail">
				
			</div>
		</div>
		<h3 style="text-align: center;margin-top:50px;">	-------------------------------------------</h3>
		<h4 style="text-align: center;margin-top:50px;text-decoration:underline;">
			<strong>Admin</strong>
		</h4>
		<div class="row mt-5">
			<div class=" col">
				<img src="http://localhost:8080/Classidor/images/admin.jfif"
					class="img-thumbnail">
				
			</div>
			<div class="container col">
				<strong>CCFC Incharge</strong>
				<ul>
				<li>Mr. Deepak Harbola
				<li>Designation : Programmer
				<li>Phone : 6*******50
				</ul>
			</div>
		</div>
		
	</div>
	
	<script src="../script/master.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
		integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
		integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
		crossorigin="anonymous"></script>
</body>
</html>