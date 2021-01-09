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
	request.setCharacterEncoding("utf-8");
	
	String[] lang  = request.getParameterValues("lang");
	String[] hobby = request.getParameterValues("hobby");
    // setCharacterEncoding으로 해서 인코딩한 문자열을 받는다.
    // lang, hobby 문자열 배열에서 name이 lang, hobby에 있는 value를 가져오는 getParameterValues를 사용한다.
%>

	관심언어:
	<%
		for(int i = 0; i < lang.length; i++) {
			
			out.println(lang[i] + " ");
		}
		
	%><br>
	
	취미:
	<%
		for(int i = 0; i < hobby.length; i++){
			
			
			out.println(hobby[i] + " ");
		}
	%><br>

</body>
</html>