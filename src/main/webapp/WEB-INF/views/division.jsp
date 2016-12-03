<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="kr.ac.hansung.model.Course"%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<p>이수 구분별 학점 조회</p>

	<table border="1">
		<tr>
			<c:forEach var="sumDivision" items="${sumDivision }">
				<td><c:out value="${sumDivision.division }"></c:out></td>
			</c:forEach>	
			<td>총학점<td>
		</tr>	
		<tr>	
			<c:forEach var="sumDivision" items="${sumDivision }">
				<td><c:out value="${sumDivision.credit }"></c:out></td>
			</c:forEach>
			<td>${total}<td>
		</tr>	

	</table>
</body>
</html>