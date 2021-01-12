<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
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
	String[][] score = {
			{"1", "홍길동","20", "30", "40"},
			{"2", "이기형", "60", "100", "20"},
			{"3", "문지훈", "69", "22", "0"}
	};
	
	for(int i = 0; i < score.length; i++) {
		String sql = String.format(
				"INSERT INTO SCORE VALUES (%s, '%s', %s, %s, %s)",
				score[i][0], score[i][1], score[i][2], score[i][3], score[i][4]);
		// insert into ~values를 이용하여 생성한 테이블에 튜플 삽입하기
		stmt.executeUpdate(sql);
	} out.println("데이터 삽입 성공!");
} catch(Exception e){e.printStackTrace();}

%>
</body>
</html>