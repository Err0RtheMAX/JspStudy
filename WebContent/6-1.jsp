<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	Class.forName("org.mariadb.jdbc.Driver");
	try(
			Connection conn = DriverManager.getConnection(
		    "jdbc:mariadb://localhost:3306/sqltest", "root", "Good2cu0105!");
			)
	{	
		out.println("DB 접속 성공");
	} catch(Exception e){ e.printStackTrace();} // jdbc를 이용하여 maria 데이터베이스 서버 접속하기

%>


</body>
</html>