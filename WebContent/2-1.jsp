<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.time.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset ="UTF-8">

<title>Test page</title>

</head>
<body>
<%
	out.println("Today is " + LocalDate.now() + "<br>");
	out.println("The Time is " + LocalTime.now() + "<br>");
%>
</body>
</html>
