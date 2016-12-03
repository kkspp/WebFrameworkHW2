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
	<table border="1">
		<tr>
			<td>년도</td>
			<td>학기</td>
			<td>교과코드</td>
			<td>교과명</td>
			<td>구분</td>
			<td>학점</td>
		</tr>
		<c:forEach var="getCourseByYearSemester" items="${getCourseByYearSemester }">
			<tr>
				<td><c:out value="${getCourseByYearSemester.year }"></c:out></td>
				<td><c:out value="${getCourseByYearSemester.semester }"></c:out></td>
				<td><c:out value="${getCourseByYearSemester.course_code }"></c:out></td>
				<td><c:out value="${getCourseByYearSemester.course_name }"></c:out></td>
				<td><c:out value="${getCourseByYearSemester.division }"></c:out></td>
				<td><c:out value="${getCourseByYearSemester.credit}"></c:out></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>