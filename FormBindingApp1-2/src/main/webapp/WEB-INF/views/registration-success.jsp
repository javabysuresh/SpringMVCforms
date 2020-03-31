<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Student Registration is Success</h1>
	<h3>Student Details:</h3>
	<h5>StudentID:	${addForm.sid} <br>
		StudentNAME:	${addForm.sname}<br>
		StudentADDR:	${addForm.saddr}<br>
		StudentEMAIL:	${addForm.email}<br>
		StudentPassword:	${addForm.password}<br>
		StudentCountry:	${addForm.country}<br>
		
		StudentHobbies:	
		<c:forEach var="temp" items="${addForm.hobbies}">
			${temp}
		</c:forEach><br>
				
		StudentGender:	${addForm.gender}<br>
	</h5>
</body>
</html>