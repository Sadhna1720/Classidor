<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Admit_Card</title>
<%
response.addHeader("Cache-Control", "no-cache,no-store,private,must-revalidate,max-stale=0,post-check=0,pre-check=0");
response.addHeader("Pragma", "no-cache");
response.addDateHeader("Expires", 0);
%>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/style/userDetails.css" />
<style >
	.form-control{
		margin-top:-150px;
	}
	.content{
	  display: grid;
	  margin-bottom:100px;
	}
	.btn{
		margin-bottom: 15px;
		height:60px;
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
		<span class="alert alert-success alert-dismissible fade show" style="visibility: hidden;" role="alert" id="alertAdmit">
			<strong>Admit Card in your desktop</strong>
		  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
	</span>
		<div class="header">
			<h2>Downloads</h2>
		</div>
		<form action="${pageContext.request.contextPath}/admitCard"	method="post" >
			
				<div class="container-fluid content" >
					 <input type="submit" class="btn btn-outline-primary" value="Download Admit-Card..." id="downloadAdmit" onclick="Admit()">
					 <input type="submit" class="btn btn-outline-primary" disabled value="Download Library-Card...">
				</div>		
		</form>
	</div>
	<script>
		function Admit(){
			console.log("in admit Function");
			document.getElementById("alertAdmit").style.visibility = "";
			//document.getElementById("alertAdmit").innerHTML="Admit Card Downloaded in your Desktop!!";
		}
	</script>
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