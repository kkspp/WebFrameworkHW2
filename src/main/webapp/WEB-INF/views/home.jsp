<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	종합정보시스템 
</h1>

<p> <a href="${pageContext.request.contextPath}/semester"> 학기별 이수 학점 조회 </a> </p>
<p> <a href="${pageContext.request.contextPath}/division"> 이수 구분별 학점 조회 </a> </p>
<p> <a href="${pageContext.request.contextPath}/register"> 수강신청 </a> </p>
<p> <a href="${pageContext.request.contextPath}/view_registered?year=2017&semester=1"> 수강신청조회 </a> </p>


</body>
</html>
