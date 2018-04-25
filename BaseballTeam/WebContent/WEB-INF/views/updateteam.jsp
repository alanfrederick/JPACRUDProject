<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Show Page</title>
</head>
<body>
	<div>
		<ul>
				<h5>
					<li>Team Name: ${team.name}</li>
					<li>Team City: ${team.city }</li>
					<li>Team State: ${team.state }</li>
					<li>Team Manager:${team.managerFirstName }
						${team.managerLastName}</li>
					<li>Team Trivia: ${team.teamTrivia }</li>
				</h5>
		</ul>
	</div>
	
			<form action="updateTeam.do" method="POST">
		<input type="hidden" name="id" value="${team.id }"/> <br>
		<input type="text" name="name" placeholder="Team Name" /> <br>
		<input type="text" name="league" placeholder="Team League" /> <br>
		<input type="text" name="city" placeholder="Team City"/> <br>
		<input type="text" name="state" placeholder="Team State" /> <br>
		<input type="text" name="managerFirstName" placeholder="Manager First Name"/> <br> 
		<input type="text" name="managerLastName" placeholder="Manager Last Name" />  <br>
		<input type="text" name="teamTrivia" placeholder="Trivia about team" /> <br>
		<input type="submit" value="Submit team" /> <br>
	</form>

</body>
</html>