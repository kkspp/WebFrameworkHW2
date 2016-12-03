<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="kr.ac.hansung.model.Course"%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ page session="false"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<h1>학기별 이수 학점 조회</h1>
<title>Insert title here</title>
</head>


<body>
	<table border="1">
	<p> 학년/학기별 이수 총 학점 내역</p>
		<tr><td>년도</td><td>학기</td><td>총학점</td><td>상세보기</td></tr>
		<c:forEach var="semesterList" items="${semesterList}">
			<tr>
				<td><c:out value="${semesterList.year}"></c:out></td>
				<td><c:out value="${semesterList.semester}"></c:out></td>
				<td><c:out value="${semesterList.credit}"></c:out></td>
				<td><a href="${pageContext.request.contextPath}/view_registered?year=${semesterList.year}&semester=${semesterList.semester }">버튼</a></td>
			</tr>
		</c:forEach>
	</table>
	
	
	<p><a href="${pageContext.request.contextPath }/">돌아가기</a><p>
</body>
</html>