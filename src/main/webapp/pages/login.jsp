<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>login</title>
<%
   response.addHeader("Cache-Control", "no-cache,no-store,private,must-revalidate,max-stale=0,post-check=0,pre-check=0"); 
   response.addHeader("Pragma", "no-cache"); 
   response.addDateHeader ("Expires", 0);
 %>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous" />
 <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/style/master.css">

</head>
<style>
body, html {
	background-image: url("/Classidor/images/login2.1.jpg");
	background-repeat: no-repeat;
	background-size: cover;
	background-attachment: fixed;
}

.size1 {
	width: 90%;
}
</style>
<body>
	<div class="container-md b form-floating mb-3"
		style="box-shadow: -9px 10px 38px #888888; margin-left: 250px; margin-top: 170px;">
		<h1
			style="text-align: center; color: white; margin-top: 50px; text-shadow: 4px 4px 6px white;">Login</h1>
		<form action="${pageContext.request.contextPath}/login" method="post">
			<div class="input-group size1 mx-5 mt-5">
				<span class="input-group-text">@</span> <span
					class="input-group-text"><input class="form-control"
					type="text" id="UserId" name="UserId" autocomplete="off"
					placeholder="UserId.." required></span>
			</div>
			<div class="input-group mt-3 mx-5">
				<span class="input-group-text" style="width: 40px;">#</span> <span
					class="input-group-text" style="width: 230px; height: 50px;">
					<input type="password" style="width: 204px; height: 35px;"
					name="lPassword" id="lPassword" placeholder="Password.." required>
					<i class="bi bi-eye-slash" id="togglePassword"
					onclick="togglePass()"></i>
				</span>
			</div>
			<div style="margin-top: 50px;">
				<input type="submit" class="btn login-btn">
			</div>
		</form>
		<form action="create" method="get">
			<div style="margin-top: 20px;">
				<h6>
					<button
						style="border: none; color: red; background: none; font-weight: bold;">Sign-up</button>
				</h6>
			</div>
		</form>
	</div>

	<script src="script/master.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
		integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
		integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
		crossorigin="anonymous"></script>

</body>
</html>