<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Modify Operation</h1>
<form:form method="post" modelAttribute="trainee">
		<table>
			<tr>
				<td>Trainee Id:</td>
				<td><input type="hidden" path="traineeId" value="${traineeId}"></td>
			</tr>
			<tr>
			<td><input type="button" value="Delete"></td>
			</tr>	
</table><br><br><br><br>
</form:form>
<h4>Trainee Info</h4>
		<table>
			 
			 <form:form  action="update" method="post"  modelAttribute="trainee">
			<tr>
			<td><form:input path="traineeId" value="${ trainee.traineeId }" type="hidden"/></td></tr>
			<tr>
			<td><form:input path="traineeName" type="text" value="${trainee.traineeName}"/></td></tr>
			<tr>
			<td>
			<tr>
				<td>Trainee Location:</td>
				<td><input type="radio" name="traineeLocation" value="Chennai">Chennai<br></td>

				<td><input type="radio" name="traineeLocation"
					value="Banglore">Banglore<br></td>
				
				<td><input type="radio" name="traineeLocation" value="Pune">Pune<br></td>
				
				<td><input type="radio" name="traineeLocation" value="Mumbai">Mumbai<br></td>
				
			</tr>
			<td>
			<form:select path="traineeDomain"  >
    <option ${trainee.traineeDomain == "JEE" ? 'selected="selected"' : ''}   value="JEE">JEE</option>
    <option ${trainee.traineeDomain == "Java" ? 'selected="selected"' : ''} value="Java">Java</option>
    <option ${trainee.traineeDomain == "C#" ? 'selected="selected"' : ''} value="C#">C#</option>
  </form:select></td>
			<td><input type="submit" value="update"/></td>
			</form:form> 			
		</table>
</body>
</html>