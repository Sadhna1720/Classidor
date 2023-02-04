<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>mech</title>
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
			<strong>Mechanical Engineering</strong>
		</h4>
		<div class="row mt-5">
			<div class="col">
				<img src="http://localhost:8080/Classidor/images/mechBio.jfif"
					class="img-thumbnail">
				<p style="margin-top: 80px;">
					<strong>Head of the Department</strong>
				<ul>
					<li>Name : Dr. Anirudh Gupta</li>
					<li>Phone (Head's office) : +91-****-******</li>
					<li>Mobile No : 9*******07</li>
					<li>Email : abc@r****.com</li>
				</ul>
				</p>
			</div>
			<div class="container col">
				<p>Mechanical Engineering is one of the core branches of the
					Engineering curriculum. Mechanical Engineering Department started
					functioning in 1999 after the start of the institute. The
					department offers a four-year course leading to the Bachelor’s
					Degree in Mechanical Engineering. It also offers a full-time post
					graduate program in Thermal Engineering. Department has also
					started Ph.D. programme in various specializations of the
					Mechanical Engineering recently. It is a matter of great pride that
					the department has a well-qualified, academically dynamic and well
					experienced faculty and a well experienced support staff. They have
					high dedication for imparting learning and analytical skills to the
					students. Apart from teaching, the faculty is engaged in diverse
					research areas and publishes their work in highly reputed journals
					and presents their work at reputed national and international
					conferences. We are continually striving to improve the quality of
					our programs by finding new ways of structuring our curriculum and
					exploring new delivery methods. The department has fully
					established and functional labs & workshops. Providing our students
					opportunities to engage in experiments, design work, project work,
					industrial training, seminars, and team work to enhance their
					learning process that is so important for holistic development of
					skills and exploring new ideas on their own. Our students well
					prepared for the life-long learning, able to innovate, and acquire
					a strong foundation in technical knowledge. The alumni of the
					department are today occupying good positions in a large number of
					governments, semi-government and private organizations in the
					country and abroad.
				<ul>
					<h5 style="margin-top: 30px;">Mission:</h5>
					<li>To provide state of art teaching to impart theoretical and
						practical knowledge.</li>
					<li>To create knowledge through strong foundation in
						mathematics, science and technology by engaging in research and
						innovation to promote academic growth to formulate, solve and
						analyze engineering problems.</li>
					<li>To promote students awareness for the lifelong learning
						based on ethical values and to provide them opportunities to work
						as an individual and a team on multidisciplinary project.</li>
					<li>To encourage students to inculcate communication skills,
						curricular, extracurricular, co-curricular activities for overall
						personality development and be a responsible person for society
						and environment.</li>
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