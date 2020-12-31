<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>My Home</title>
</head>
<body>
<h1>
	My Home! ~~~~  
</h1>

<sec:authorize access="isAnonymous()">
<p><a href="<c:url value="/login/loginForm.do" />">로그인</a>
</sec:authorize>

<sec:authorize access="isAuthenticated()">
<form:form action="${pageContext.request.contextPath}/logout" method="POST">
	<input type="submit" value="로그아웃" />
</form:form>
</sec:authorize>

<h3>
	[<a href="<c:url value="/intro/introduction.do" /> ">소개 페이지</a>]
	[<a href="<c:url value="/admin/adminHome.do" /> ">관리자 홈</a>]
</h3>
</body>
</html>