<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
    <%-- import="jspbook.ch07.LoginBean" --%>
 <jsp:useBean id="Login" class="jspbook.ch07.LoginBean" scope="page" />
 <jsp:setProperty name="Login" property="*" />
 	<%-- setProperty 할때 Bean 자바 변수 이름과 request Parameter의 이름 값이 동일해야된다.!! --%>
 <%--<%
 	둘중하나만 사용해야됨 두개 모두 사용시 에러가 발생됨
 	Login.setUserid(request.getParameter("uid"));
 	Login.setPasswd(request.getParameter("pwd"));
 %>--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Main Page</title>
</head>
<body>
<div align='center'>
		<h1>Beans 로그인</h1>
		<hr>
		<%
			if( !Login.checkUser() ){
				out.println("로그인 실패!!");
			}else{
				out.println("로그인 성공!!!");
			}
		%>
		
		<hr>
		사용자 아이디 : <jsp:getProperty name='Login' property='userid' /><br>
		사용자 패스워드 : <jsp:getProperty name='Login' property='passwd' />
		<%-- <%= login.getPasswd() || ${login.passwd} <-- Expression Language : login 이라는 변수의 passwd 값을 출력하라  최종은 Expression Language 사용할것 %> --%>
	</div>
</body>
</html>