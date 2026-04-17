<%@page import="db.DbHandler"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   request.setCharacterEncoding("utf-8");
   String userid    = request.getParameter("userid");
   String username = request.getParameter("username");
   String email    = request.getParameter("email");
   
   
   // db에 저장
   
   DbHandler db = new DbHandler();
   db.addUser(userid, username, email);
   
   
   
   response.sendRedirect("http://localhose:8080/PrjJsp02/");
   System.out.println(userid);
   System.out.println(username);
   System.out.println(email);
   
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>