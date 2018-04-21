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
	<form action="getTeam.do" method="GET">
		<input type="text" name="teamName" /> <input type="submit"
			value="Find Team by Name" />
	</form>
		<form action="getTeamId.do" method="GET">
		<input type="int" name="teamId" /> <input type="submit"
			value="Find Team by Id" />
	</form>
	<div>
		<ul>
			<c:forEach items="${teams}" var="team">
				<h5>
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

</body>
</html>