<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>ee</title>
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
		<h4 style="text-align: center; text-decoration: underline;">
			<strong>Electrical Engineering</strong>
		</h4>
		<div class="row mt-5">
			<div class="col">
				<img src="http://localhost:8080/Classidor/images/guestHouse.jpg"
					class="img-thumbnail">
				<p style="margin-top: 80px;">
					<strong>Head of the Department</strong>
				<ul>
					<li>Name : Ms. Rachna Arya</li>
					<li>Phone (Head's office) : +91-****-******</li>
					<li>Mobile No : 9*******07</li>
					<li>Email : abc@r****.com</li>
				</ul>
				</p>
			</div>
			<div class="container col">
				<p>The global scenario of Electrical Engineers is very bright.
					There is a vast opening abroad and also in the country. Computer
					Aided Design and Database Management Systems have acquired a
					position of high relevance in which electrical engineers are able
					to do a lot. The industrial and technological developments of the
					country depend upon how efficiently the electrical energy is
					utilized. The control of electrical devices through
					microcontrollers has become increasingly important and opens new
					vistas of research and development. All the labs are fully equipped
					with modern and latest equipment, software which provides in -
					depth and real life exposure to the students. These labs contain
					all types of rotating and stationary machines, trainer kits and all
					types of electrical and electronic components for fabrication
					purposes.
				<ul>
					<h5 style="margin-top: 30px;">Mission:</h5>
					<li>To create awareness about the current needs of the society
						and the country.</li>
					<li>To motivate electrical engineering professionals about
						their overall responsibility towards the society and inculcate the
						feeling of pride in them to serve the nation.</li>
					<li>To create entrepreneurial environment and industry
						interaction for mutual benefit.</li>
					<li>To associate with internationally reputed Institutions for
						academic excellence and collaborative research to cater the needs
						of Himalayan region.</li>
					<li>To develop in-house research, development, and testing
						capabilities with industrial collaboration.</li>
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