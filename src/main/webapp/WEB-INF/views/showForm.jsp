<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">

<title>Complex Form</title>
</head>

<link rel="stylesheet" href="<c:url value="/resources/css/style.css" />">
<script src="<c:url value="/resources/js/script.js" />"></script>

<body >
<%-- <img src="<c:url value="/resources/image/Naman_Photo.jpg"/>"> --%>
	<div class="container mt-5">
		<div class="card">
			<div class="card-body">
				<h1>Complex Form</h1>
				<form action="processForm" method="post" enctype="multipart/form-data">
					<div class="form-group">
						<label>Name</label> <input type="text" name="name"
							class="form-control">
					</div>

					<div class="form-group">
						<label>Id</label> <input type="number" name="id" max="10000"
							class="form-control">
					</div>

					<div class="form-group">
						<label>Date</label> <input type="text" name="date"
							placeholder="dd/mm/yyyy" class="form-control">
					</div>

					<div class="form-group">
						<label>Courses</label> <select name="courses" class="form-control"
							multiple>
							<option>Java</option>
							<option>Python</option>
							<option>C</option>
							<option>C++</option>
						</select>
					</div>

					<div class="form-group">
						<label>Gender</label> <input type="radio" name="gender"
							value="Male">Male <input type="radio" name="gender"
							value="Female">Female
					</div>

					<div class="form-group">
						<label>Student Type</label> <select name="type"
							class="form-control">
							<option>Old Student</option>
							<option>New Student</option>
						</select>
					</div>

					<div class="form-group">
						<label>Address</label>
						<div class="form-group">
							<label>Street</label> <input type="text" name="address.street"
								class="form-control">
						</div>
						<div class="form-group">
							<label>City</label> <input type="text" name="address.city"
								class="form-control">
						</div>
					</div>
					
					<div class="form-group">
						<label>Upload Profile Pic</label>
						<input type="file" name="file" class="form-control-file">
					</div>

					<button class="btn btn-success" type="submit">Submit</button>

				</form>
			</div>
		</div>
	</div>







	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>
</body>
</html>