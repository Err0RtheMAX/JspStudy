<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<!--jdbc에서 테이블 생성하기-->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Class.forName("org.mariadb.jdbc.Driver");
try (Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/sqltest",
		"root", "Good2cu0105!");
	Statement stmt = conn.createStatement();)
{
	String sql = "create table score(" + 
	" num	int		primary key, " +
	" name	varchar(20), "+
	" kor	int, "+
	" math	int, " +
	" eng	int " + ")"; // create table
	
	stmt.executeUpdate(sql);
	// create table sql 명령어 statement 실행하고 update하는 executeUpdate(sql) 메소드 실행
	out.println("성적 테이블 생성 성공!");
} catch (Exception e){e.printStackTrace();}

%>
</body>
</html>