<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Login2</title>
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

	<div id="carouselExampleIndicators"
		class="carousel slide container-fluid" data-bs-ride="carousel"
		style="margin-top: 55px;">
		<div class="carousel-indicators ">
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="2" aria-label="Slide 4"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="2" aria-label="Slide 5"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="http://localhost:8080/Classidor/images/college1.jpg"
					class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img src="http://localhost:8080/Classidor/images/college2.jpg"
					class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img src="http://localhost:8080/Classidor/images/college3.jpg"
					class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img src="http://localhost:8080/Classidor/images/college4.jpg"
					class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img src="http://localhost:8080/Classidor/images/college5.jpg"
					class="d-block w-100" alt="...">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span>
		</button>
	</div>

	<div class="container">
		<div class="ticker mt-3 merqu">
			<div class="news">
				<marquee class="news-content">
					<p>Welcome to Bipin Tripathi Kumaun Institute of Technology.
						Thanks for visiting our website!</p>
				</marquee>
			</div>
		</div>
	</div>
	<div class="container login2Container" style="margin-top: 20px;">
		<div class="row login2row">
			<div class="col login2col shadow1 ">
				<form action="${pageContext.request.contextPath}/details"
					method="get">

					<abbr title="Details"><input type="image"
						style="width: 150px;" src="/Classidor/images/userDetail.png"></abbr>
					<label>User Details</label>
				</form>
			</div>
			<div class="col login2col shadow1">
				<form action="${pageContext.request.contextPath}/registration"
					method="get">
					<abbr title="Register For End-Sem"><input type="image"
						style="width: 150px;" src="/Classidor/images/register.jpg"></abbr>
					<label>Register</label>
				</form>
			</div>
			<div class="col login2col shadow1">
				<form action="${pageContext.request.contextPath}/leave" method="get">
					<abbr title="Leave Section"><input type="image"
						style="width: 150px;" src="/Classidor/images/leave.jpg"></abbr>
					<label>Leave Section</label>
				</form>
			</div>
			<div class="col login2col shadow1">
				<form action="${pageContext.request.contextPath}/notice"
					method="get">
					<abbr title="Notices and News"><input type="image"
						style="width: 140px;" src="/Classidor/images/notice.png"></abbr>
					<label>Notice</label>
				</form>
			</div>
		</div>
		<div class="row login2row">
			<div class="col login2col shadow1">
				<form action="${pageContext.request.contextPath}/admitCard"
					method="get">
					<abbr title="Download Admit-Card"><input type="image"
						style="width: 150px;" src="/Classidor/images/admitCard.jfif"></abbr>
					<label>Admit Card </label>
				</form>
			</div>
			<div class="col login2col shadow1">
				<form action="${pageContext.request.contextPath}/libraryCard"
					method="get">
					<abbr title="Apply For Library-Card"><input type="image"
						style="width: 150px;" src="/Classidor/images/libraryCard.jpg"></abbr>
					<label>Library Card</label>
				</form>
			</div>
			<div class="col login2col shadow1">
				<form action="${pageContext.request.contextPath}/book" method="get">
					<abbr title="Issued Books"><input type="image"
						style="width: 150px;" src="/Classidor/images/book.jpg"></abbr>
					<label>Books</label>
				</form>
			</div>
			<div class="col login2col shadow1">
				<form action="${pageContext.request.contextPath}/logout"
					method="get">
					<abbr title="Logout"><input type="image"
						style="width: 140px;" src="/Classidor/images/logout.jpg"></abbr>
					<label>Logout</label>
				</form>
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