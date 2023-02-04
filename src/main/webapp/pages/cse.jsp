<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>cse</title>
<%
   response.addHeader("Cache-Control", "no-cache,no-store,private,must-revalidate,max-stale=0,post-check=0,pre-check=0"); 
   response.addHeader("Pragma", "no-cache"); 
   response.addDateHeader ("Expires", 0);
 %>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<%-- <link rel="stylesheet" href="<%=request.getContextPath() %>/style/master.css" /> --%>
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
			<strong>Computer science & Engineering</strong>
		</h4>
		<div class="row mt-5">
			<div class="col">
				<img src="http://localhost:8080/Classidor/images/cseCivil.jfif"
					class="img-thumbnail">
				<p style="margin-top: 80px;">
					<strong>Head of the Department</strong>
				<ul>
					<li>Name : Dr. Ajit Singh</li>
					<li>Phone (Head's office) : +91-****-******</li>
					<li>Mobile No : 9*******07</li>
					<li>Email : abc@r****.com</li>
				</ul>
				</p>
			</div>
			<div class="container col">
				<p>The department has qualified and experienced faculty members
					in the areas of Computer Architecture, Database Systems, Image
					Processing, Artificial Intelligence, Data Mining, Wireless and
					Sensor Networks, Computer Networks, and Software Engineering. There
					is widespread interaction between the Computer Science and
					Engineering department and various other departments like
					Electrical Engineering & Electronics Engineering in the field of
					teaching and research. The overall personality of the students is
					taken care keeping in mind the following aspect: To provide a sound
					academic and technical infrastructure augmented with
					extracurricular facilities to ensure the all round development of
					the students. To mould the technical mind set of the students
					according to the dynamic technological innovations. To produce
					professionally qualified engineers who stand at the cutting edge of
					the technology and provide an impetus to the global economy. The
					Computer Science & Engineering department offers following courses:
				
				<ul>
					<li>Bachelor of Technology (B.Tech)</li>
					<li>Master of Technology (M.Tech)</li>
					<li>Master of Computer Application (MCA)</li>
					<li>Doctor of Philosophy (Ph.D)</li>
					<h5 style="margin-top: 30px;">Mission:</h5>
					<li>Conveying technical knowledge of Computer Sciences &
						Engineering to enable the post graduates to meet the peer hilly
						needs as well as challenges.</li>
					<li>Provide an environment for students to gain expertise in
						theoretical foundations of computer science and engineering with
						emphasis on strong practical training that will enable them to
						develop real world applications catering to the global needs.</li>
					<li>Offer students a quality learning process in a research
						oriented environment with industrial collaboration that motivates
						them to innovate and explore.</li>
					<li>Develop intellectual curiosity and a commitment to
						lifelong learning in students, with societal and environmental
						concerns.</li>
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