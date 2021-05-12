<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
  String id = request.getParameter("id");
  String name = request.getParameter("name");
  String email = request.getParameter("email");
  int phone = Integer.parseInt(request.getParameter("phone"));
  String userName = request.getParameter("uid");
  String password = request.getParameter("pw");
  String bday = request.getParameter("bday");
 %>
<form action="#" method="post">

Customer ID:<input type="text" name="cusid" value="<%=id%>"><br>
Name:      <input type="text" name="name" value="<%=name%>"><br>
Email:     <input type="text" name="email" value="<%=email%>"><br>
phone:     <input type="text" name="phone" value="<%=phone%>>"><br>
user name:  <input type="text" name="uid" value="<%=userName%>"><br>
password:  <input type="text" name="pw" value="<%=password%>"><br>
Bday:      <input type="text" name="bday" value="<%=bday%>"><br>
<input type="submit" name="submit" value="update"><br>
</form>
</body>
</html>
