<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
<title>details</title>
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
	<link rel="stylesheet" href="<%=request.getContextPath() %>/style/userDetails.css" />
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

	<div class="container form-control" >
		<div class="header">
			<h2>Details</h2>
		</div>
			<form action="${pageContext.request.contextPath}/details" method="get" class="form" id="form">
				<div class="row form-controle">
					<div class="col">
					<label style="margin-left:70px;">First-name :</label>
					</div>
					<div class="col ">
						${fname}
					</div>
					<div class="col">
						<label style="margin-left:70px;">Last-name :</label>
					</div>
					<div class="col ">
						${lname}
					</div>
				</div>
				<div class="row form-controle">
					<div class="col">
					<label style="margin-left:70px;">Roll-No. :</label>
					</div>
					<div class="col ">
						${loginSession}
					</div>
	
					<div class="col">
						<label style="margin-left:70px;">Email-id :</label>
					</div>
					<div class="col ">
						${email}
					</div>
				</div>
				<div class="row form-controle">
					<div class="col">
					<label style="margin-left:70px;">Branch :</label>
					</div>
					<div class="col ">
						${branch}
					</div>
					<div class="col">
						<label style="margin-left:70px;">contact :</label>
					</div>
					<div class="col ">
						${contact}
					</div>
				</div>
				<div class="row form-controle">
					<div class="col">
					<label style="margin-left:70px;">AadharNo. :</label>
					</div>
					<div class="col ">
						${aadhar}
					</div>
	
					<div class="col">
						<label style="margin-left:70px;">Year :</label>
					</div>
					<div class="col ">
						${year}
					</div>
				</div>
				<div class="row form-controle">
					<div class="col">
					<label style="margin-left:70px;">Father's name :</label>
					</div>
					<div class="col ">
						${fatherName}
					</div>
	
					<div class="col">
						<label style="margin-left:70px;">Mother's name :</label>
					</div>
					<div class="col ">
						${motherName}
					</div>
				</div>
				<div class="row form-controle">
					<div class="col">
					<label style="margin-left:70px;">DOB :</label>
					</div>
					<div class="col ">
						${dob}
					</div>
					<div class="col">
						<label style="margin-left:70px;">Address :</label>
					</div>
					<div class="col ">
						${address}
					</div>
				</div>
				
			</form>
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