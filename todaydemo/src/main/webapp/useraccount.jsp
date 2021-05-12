<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table>
<c:forEach var="cus" items="${cusDetails}">

<c:set var="id" value="${cus.id}"/>
<c:set var="name" value="${cus.name}"/>
<c:set var="email" value="${cus.email}"/>
<c:set var="phone" value="${cus.phone}"/>
<c:set var="userName" value="${cus.userName}"/>
<c:set var="password" value="${cus.password}"/>
<c:set var="bday" value="${cus.bday}"/>

<tr>
<td>Customer ID</td>
<td>${cus.id}</td>
</tr>
<tr>
<td>Customer Name</td>
<td>${cus.name}</td>
</tr>
<tr>

<tr>
<td>Customer email</td>
<td>${cus.email}</td>
</tr>
<tr>
<td>Customer phone</td>
<td>${cus.phone}</td>
</tr>
<tr>
<td>Customer userName</td>
<td>${cus.userName}</td>
</tr>
<tr>
<td>Customer password</td>
<td>${cus.password} </td>
</tr>
<tr>
<td>Customer bday</td>
<td>${cus.bday}</td>

</tr>
</c:forEach>
</table>
<c:url value="updateCustomer.jsp" var="cusupdate">
  <c:param name="id" value="$(id)"/>
  <c:param name="name" value="$(name)"/>
   <c:param name="email" value="$(email)"/>
     <c:param name="phone" value="$(phone)"/>
    <c:param name="userName" value="$(userName)"/>
     <c:param name="password" value="$(password)"/>
      <c:param name="bday" value="$(bday)"/>
</c:url>
<a href="${cusupdate}">
<input type="button" name="update" value="update my data">
</a>
</body>
</html>