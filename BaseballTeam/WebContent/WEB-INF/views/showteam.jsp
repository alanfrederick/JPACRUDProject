<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Show Page</title>
</head>

	<form action="getTeam.do" method="GET">
		<input type="text" name="teamName" /> <input type="submit"
			value="Find Team by Name" />
	</form>
<body>
	<div>
		<ul>
			<c:forEach items="${team}" var="team">
				<h5>
					<li>Team ID: ${team.id}</li>
					<li>Team Name: ${team.name}</li>
					<li>Team City: ${team.city }</li>
					<li>Team State: ${team.state }</li>
					<li>Team Manager:${team.managerFirstName }
						${team.managerLastName}</li>
					<li>Team Trivia: ${team.teamTrivia }</li>
				</h5>
			</c:forEach>
		</ul>
	</div>
	
		<form action="update.do" method="GET">
		<input type="hidden" name="id" value="${team.id }"/> <input type="submit"
			value="Update" />
	</form>

</body>
</html>