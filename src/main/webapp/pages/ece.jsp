<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>ece</title>
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
			<strong>Electronics and Communication Engineering</strong>
		</h4>
		<div class="row mt-5">
			<div class="col">
				<img src="http://localhost:8080/Classidor/images/guestHouse.jpg"
					class="img-thumbnail">
				<p style="margin-top: 80px;">
					<strong>Head of the Department</strong>
				<ul>
					<li>Name :  Mr. Lalit Garia</li>
					<li>Phone (Head's office) : +91-****-******</li>
					<li>Mobile No : 9*******07</li>
					<li>Email : abc@r****.com</li>
				</ul>
				</p>
			</div>
			<div class="container col">
				<p>Electronics & Communication Engineering Department has excellent laboratory facilities in the field of Electronics & Communication Engineering. This department is accredited in 2006 by NBA AICTE for next 3 years. Department have state of the art laboratories. Rapid growth in the field of Electronics and Communication Engineering has a profound effect on modern society. Technological advances in personal communication such as mobile phone, satellite comm. etc. has led to exciting and diverse opportunities for employment for the telecommunication graduate.
				<ul>
					<h5 style="margin-top: 30px;">Mission:</h5>
					<li>To create learning, development and testing environment to meet ever challenging needs of the electronic & communication industry</li>
					<li>To provide students with a sound foundation in the mathematical, scientific engineering fundamentals necessary to formulate, solve and analyse engineering problems.</li>
					<li>To promote students awareness for the lifelong learning based on ethical values and to provide them opportunities to work as individual and a team on multidisciplinary project</li>
					<li>To encourage students to inculcate communication skills, curricular, extracurricular, co- curricular activities for overall personality development and be a responsible person for society.</li>
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