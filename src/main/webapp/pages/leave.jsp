<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
<title>leaves</title>
<%
response.addHeader("Cache-Control", "no-cache,no-store,private,must-revalidate,max-stale=0,post-check=0,pre-check=0");
response.addHeader("Pragma", "no-cache");
response.addDateHeader("Expires", 0);
%>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/style/userDetails.css" />

<style>
.col2 {
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

	<div class="container form-control">
		<div class="header">
			<h2>You have taken ${leaveTaken} days off</h2>
		</div>
		<form action="${pageContext.request.contextPath}/leave"
			method="get" class="form" id="form">
			<div class="row form-controle"
				style="margin-left: auto; margin-right: auto;">
				<div class="col">
					<label style="margin-left: 170px;">From :</label>
				</div>
				<div class="col ">
					<input class="form-control col2" type="date" id="fromdate" name="fromdate">
				</div>
				<div class="col">
					<label style="margin-left: 90px;">To :</label>
				</div>
				<div class="col ">
					<input class="form-control col2" style="margin-left: -100px;"
						type="date" id="toDate" name="todate">
				</div>
			</div>
			<div class="row form-controle">
				<div class="form-group col">
					<textarea class="form-control"
						style="width: 750px; margin-left: auto;margin-top:20px; margin-right: auto; text-align: center;"
						placeholder="Reason.." id="reason" rows="5" name="reason"></textarea>
				</div>
			</div>
			
			<div style="margin-top: 25px; text-align: center;">
				<input type="submit" style="width: 100%;" value="Apply"
					class="btn btn-outline-warning" name="submit" id="submit">
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