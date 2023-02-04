<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
<title>registration</title>
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
	
	<style>
		 .col2{
				max-width: 60%;	
			} 
	</style>
	
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
			<h2>Registration</h2>
		</div>
			<form action="${pageContext.request.contextPath}/registration" method="post" class="form" id="form">
				<div class="row form-controle">
					<div class="col">
					<label style="margin-left:90px;">Subject1 :</label>
					</div>
					<div class="col ">
						<input class="form-control col2" type="text" id="sub1" name="sub1">
					</div>
					<div class="col">
						<label style="margin-left:90px;">Subject2 :</label>
					</div>
					<div class="col ">
						<input class="form-control col2" type="text" id="sub2" name="sub2">
					</div>
				</div>
				<div class="row form-controle">
					<div class="col">
					<label style="margin-left:90px;">Subject3 :</label>
					</div>
					<div class="col ">
						<input class="form-control col2" type="text" id="sub3" name="sub3">
					</div>
	
					<div class="col">
						<label style="margin-left:90px;">Subject4 :</label>
					</div>
					<div class="col ">
						<input class="form-control col2" type="text" id="sub4" name="sub4">
					</div>
				</div>
				<div class="row form-controle">
					<div class="col">
					<label style="margin-left:90px;">Subject5 :</label>
					</div>
					<div class="col ">
						<input class="form-control col2" type="text" id="sub5" name="sub5">
					</div>
					<div class="col">
						<label style="margin-left:90px;">Subject6 :</label>
					</div>
					<div class="col ">
						<input class="form-control col2" type="text" id="sub6" name="sub6">
					</div>
				</div>
				<div class="row form-controle">
					<div class="col">
					<label style="margin-left:90px;">Practical1 :</label>
					</div>
					<div class="col ">
						<input class="form-control col2" type="text" id="pract1" name="pract1">
					</div>
	
					<div class="col">
						<label style="margin-left:90px;">Practical2 :</label>
					</div>
					<div class="col ">
						<input class="form-control col2" type="text" id="pract2" name="pract2">
					</div>
				</div>
				<div class="row form-controle">
					<div class="col">
					<label style="margin-left:90px;">Practical3 :</label>
					</div>
					<div class="col ">
						<input class="form-control col2" type="text" id="pract3" name="pract3">
					</div>
	
					<div class="col">
						<label style="margin-left:90px;">Practical4 :</label>
					</div>
					<div class="col ">
						<input class="form-control col2" type="text" id="pract4" name="pract4">
					</div>
				</div>
				<div class="row form-controle">
					<div class="col">
					<label style="margin-left:90px;">Password :</label>
					</div>
					<div class="col ">
						<input class="form-control col2" type="password" id="password" name="password">
					</div>
					<div class="col">
						<label style="margin-left:90px;">Re-enter Password :</label>
					</div>
					<div class="col ">
						<input class="form-control col2" type="text" id="cpassword" name="cpassword">
					</div>
				</div>
				
				<div style="margin-top: 25px; text-align: center;">
					<input type="submit" class="btn btn-outline-success" name="submit" id="submit">
					<input type="reset" class="btn btn-outline-primary">
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