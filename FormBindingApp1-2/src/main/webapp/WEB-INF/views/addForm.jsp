<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1 align="center">Student Registration</h1>
	<form:form action="registration-success" method="GET" modelAttribute="addForm">
	<div align="center">
		<h5 align="center">
			<label>StudentID :</label>
			<form:input path="sid" /><br> <br>
			
			<label>StudentNAME :</label>
			<form:input path="sname" /> <br> <br> 
			
			<label>StudentADDR :</label>
			<form:input path="saddr" /> <br> <br> 
			
			<label>StudentEMAIL :</label>
			<form:input path="email" /> <br> <br>
			
			<label>Password :</label>
			<form:password path="password" /> <br> <br> 
			
			<label>StudentCOUNTRY :</label>
			<form:select path="country" >
				<form:option value="Ind" label="INDIA"></form:option>
				<form:option value="USA" label="UNITED STATES"></form:option>
				<form:option value="SRI" label="SRILANKA"></form:option>
				<form:option value="PAK" label="PAKISTAN"></form:option>
				<form:option value="UK" label="UNITED KINGDOM"></form:option>
			</form:select> <br> <br>
			
			<label>Hobbies :</label>
				Books :<form:checkbox path="hobbies" value="books"/>
				Cricket :<form:checkbox path="hobbies" value="cricket"/>
				Chess :<form:checkbox path="hobbies" value="chess"/><br> <br>
			
			<label>Gender :</label>
				Male<form:radiobutton path="gender" value="male"/>
				Female<form:radiobutton path="gender" value="female"/><br> <br>
				
				<input type="submit" value="register">
	 </h5>
	</div>
   </form:form>
  </body>
</html>