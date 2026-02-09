<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String ms = (String)request.getAttribute("msg");
		
	%>
	
		<%@include file="Login.jsp" %>

</body>
</html>