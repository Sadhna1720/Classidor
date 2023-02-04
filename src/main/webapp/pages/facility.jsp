<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>facility</title>
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
		<h4><strong>Guest-House</strong></h4>
		<div class="row">
			<div class="col" >
			<img src="http://localhost:8080/Classidor/images/guestHouse.jpg" class="img-thumbnail">
			</div>
			<div class="col">
				<p>Institute Guest house has one VIP, 5 rooms with (attached toilet), and 8 rooms with (non-attached toilets).</p>
				<p><strong>Incharge -</strong> Mr. Lalit Garia</p>
				<p><strong>Phone. -</strong> 97*******3</p>
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