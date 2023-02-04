<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>che</title>
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
			<strong>Chemical Engineering</strong>
		</h4>
		<div class="row mt-5">
			<div class="col">
				<img src="http://localhost:8080/Classidor/images/guestHouse.jpg"
					class="img-thumbnail">

			</div>
			<div class="container col">
				<p>BTKIT holds the unique distinction of being the only
					Institute in the state to be running Chemical Engineering
					department. The department's fame has spread far and wide and aims
					at tapping the enormous potential that the next generation of
					engineering holds in itself. The Institute took an early note of
					the significant role that was to be played by biochemical engineers
					and biotechnologists in future industrial development of
					biotechnology related processes and products by initiating this
					activity. The department also plans to tap the enormous resources
					that the biologically diverse habitat of Himalayas provide.
				<p style="margin-top: 80px;">
					<strong>Head of the Department</strong>
				<ul>
					<li>Name :Mr. Anshuman Mishra</li>
					<li>Phone (Head's office) : +91-****-******</li>
					<li>Mobile No : 9*******07</li>
					<li>Email : abc@r****.com</li>
				</ul>
				</p>
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