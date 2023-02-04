<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
<title>Create_acc</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/style/master.css" />
</head>
<style>
body, html {
	background-color: #dbd8bf;
}
</style>
<body>
	<h1 class="heading" style="text-align:center;">Registration </h1>
	<div class="container createAcc" style="font-size: 20px;margin-top:100px;">
		<form action="${pageContext.request.contextPath}/create" method="post">
			<div class="row createAccRow">
				<div class="col createAccCol" >
					<label>First-name :</label>
				</div>
				<div class="col createAccCol">
					<input class="form-control" type="text" id="fname" name="fname"
						placeholder="John">
					<span  id="fnameSpan" style="size:10px; color:red; background-color:cyan;"></span>
				</div>
				<div class="col createAccCol">
					<label>Last-name :</label>
				</div>
				<div class="col createAccCol">
					<input class="form-control" type="text" id="lname" name="lname"
						placeholder="Das" autocomplete="off">
					<span  id="lnameSpan" style=" size:10px; color:red; background-color:cyan;"></span>
				</div>
			</div>

			<div class="row createAccRow">
				<div class="col createAccCol" >
					<label>Roll-No. :</label>
				</div>
				<div class="col createAccCol">
					<input class="form-control" type="text" id="roll" name="roll"
						placeholder="1234.." autocomplete="off">
					<span  id="rollSpan" style="size:10px; font-size: 13px; color:red; background-color:cyan;"></span>
				</div>

				<div class="col createAccCol">
					<label>Email-id :</label>
				</div>
				<div class="col createAccCol">
					<input class="form-control" type="email" id="email" name="email"
						placeholder="abc123@gmail.com">
					<span  id="emailSpan" style="size:10px; font-size: 13px; color:red; background-color:cyan;"></span>
				</div>
			</div>

			<div class="row createAccRow">
				<div class="col createAccCol" >
					<label>Branch :</label>
				</div>
				<div class="col createAccCol">
					<select class="dropdown select" name="branch"
						id="branch">
						<option disabled selected>Select</option>
						<c:forEach var="b" items="${branch}">
							<option>${b}</option>
						</c:forEach>
					</select> <span  id="branchSpan" style="size:10px; font-size: 13px; color:red; background-color:cyan;"></span>
				</div>

				<div class="col createAccCol">
					<label>Course :</label>
				</div>
				<div class="col createAccCol ">
					<select class="dropdown select" name="course"
						id="course">
						<option disabled selected>Select</option>
						<c:forEach var="c" items="${course}">
							<option>${c}</option>
						</c:forEach>
					</select>
					<span  id="courseSpan" style="font-size: 13px; color:red; background-color:cyan;"></span>
				</div>
			</div>

			<div class="row createAccRow">
				<div class="col createAccCol">
					<label>Father's Name :</label><br>
				</div>
				<div class="col createAccCol">
					<input class="form-control" type="text" id="father" name="father"
						placeholder="Father-name" autocomplete="off">
					<span  id="fatherSpan" style="font-size: 13px; color:red; background-color:cyan;"></span>
				</div>

				<div class="col createAccCol">
					<label>Mother's Name :</label><br>
				</div>
				<div class="col createAccCol">
					<input class="form-control" type="text" id="mother" name="mother"
						placeholder="Mother-name" autocomplete="off">
					<span  id="motherSpan" style="font-size: 13px; color:red; background-color:cyan;"></span>
				</div>
			</div>

			<div class="row createAccRow">
				<div class="col createAccCol">
					<label>State :</label>
				</div>
				<div class="col createAccCol">
					<input class="form-control" type="text" id="state" name="state"
						placeholder="state" autocomplete="off">
					<span  id="stateSpan" style="font-size: 13px; color:red; background-color:cyan;"></span>
				</div>

				<div class="col createAccCol">
					<label>District :</label>
				</div>
				<div class="col createAccCol">
					<input class="form-control" type="text" id="district"
						name="district" placeholder="district" autocomplete="off">
					<span  id="districtSpan" style="font-size: 13px; color:red; background-color:cyan;"></span>
				</div>
			</div>

			<div class="row createAccRow">
				<div class="col createAccCol" >
					<label>Date-of-birth :</label>
				</div>
				<div class="col createAccCol" >
					<input class="form-control" type="date" id="dob" name="dob">
					<span  id="dobSpan" style="font-size: 13px; color:red; background-color:cyan;"></span>
				</div>

				<div class="col createAccCol">
					<label>Year :</label>
				</div>
				<div class="col createAccCol">
					<select class="dropdown select" name="year"
						id="year">
						<option disabled selected>Select</option>
						<c:forEach var="y" items="${year}">
							<option>${y}</option>
						</c:forEach>
					</select>
					<span  id="yearSpan" style="font-size: 13px; color:red; background-color:cyan;"></span>
				</div>
			</div>

			<div class="row createAccRow">
				<div class="col createAccCol">
					<label>Contact-No. :</label>
				</div>
				<div class="col createAccCol">
					<input class="form-control" type="text" id="contact" name="contact"
						placeholder="0123456789" autocomplete="off">
					<span  id="contactSpan" style="font-size: 13px; color:red; background-color:cyan;"></span>
				</div>

				<div class="col createAccCol">
					<label>Parents No. :</label>
				</div>
				<div class="col createAccCol">
					<input class="form-control" type="text" id="pContact"
						name="pContact" placeholder="0123456789" autocomplete="off">
					<span  id="parentNoSpan" style="font-size: 13px; color:red; background-color:cyan;"></span>
				</div>
			</div>

			<div class="row createAccRow">
				<div class="col createAccCol" >
					<label>Gender :</label>
				</div>

				<div class="col createAccCol">
					<select class="dropdown select" name="gender"
						id="gender">
						<option disabled selected>Select</option>
						<c:forEach var="g" items="${gender}">
							<option>${g}</option>
						</c:forEach>
					</select>
					<span  id="genderSpan" style="font-size: 13px; color:red; background-color:cyan;"></span>
				</div>
				<div class="col createAccCol">
					<label>Aadhaar No. :</label>
				</div>
				<div class="col createAccCol">
					<input class="form-control" type="text" id="adhar" name="adhar"
						placeholder="XXXX-XXXX-XXXX" autocomplete="off">
						<span  id="aadharSpan" style="font-size: 13px; color:red; background-color:cyan;"></span>
				</div>
			</div>

			<div class="row createAccRow">
				<div class="col createAccCol">
					<label>Password :</label>
				</div>
				<div class="col createAccCol">
					<input class="form-control" type="password" id="password"
						name="password">
					<span  id="passwordSpan" style="font-size: 13px; color:red; background-color:cyan;"></span>
				</div>

				<div class="col createAccCol">
					<label>Confirm Passwd :</label>
				</div>
				<div class="col createAccCol">
					<input class="form-control" type="text" id="cPassword"
						name="cPassword" autocomplete="off">
					<span  id="cPasswordSpan" style="font-size: 13px; color:red; background-color:cyan;"></span>
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