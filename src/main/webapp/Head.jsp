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
		String mg = (String)request.getAttribute("msg");%>
		<h3> 
		<%out.println(mg); %>
		</h3>
		
		<%@include file="Choice1.html" %>
		
</body>
</html>