<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	table{width: 400px; text-align:center;}
	th{background-color: cyan;}
</style>

<title>Insert title here</title>
</head>
<body>
<table>
	<tr>
		<th>번호</th><th>이름</th>
		<th>국어</th><th>수학</th><th>영어</th>
		<th>총점</th><th>평균</th>
	</tr>


<%
Class.forName("org.mariadb.jdbc.Driver");
try (Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/sqltest",
		"root", "Good2cu0105!");
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery("SELECT * FROM SCORE");)
{
	while(rs.next()) {
		int sum = rs.getInt("kor") + rs.getInt("math") + rs.getInt("eng");
%>
	<tr>
		<td><%=rs.getInt("num") %></td>
		<td><%=rs.getString("name") %></td>
		<td><%=rs.getInt("kor") %></td>
		<td><%=rs.getInt("math") %></td>
		<td><%=rs.getInt("eng") %></td>
		<td><%=sum%></td>
		<td><%=String.format("%.2f", (float)sum / 3)%></td>
	</tr>
<%

	}
} catch(Exception e){e.printStackTrace();}


%>
</table>
</body>
</html>