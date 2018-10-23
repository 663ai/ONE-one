<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>用户信息</title>
</head>
<body>
<table border="1" style="border-collapse: collapse; text-align:center;" cellpadding="20" cellspacing="20" >
	<tr >
		<td>用户编号</td>
		<td>用户姓名</td>
		<td>用户生日</td>
		<td>用户年龄</td>
		<td>用户类型</td>
	</tr>
	<c:forEach items="${data}" var="row">
		<tr>
			<td>${row.id}</td>
			<td>${row.name}</td>
			<td><fmt:formatDate value="${row.birthday}" pattern="yyyy-MM-dd"/></td>
			<td>${row.age}</td>
			<td>${row.type.typeName}</td>
		</tr>
	</c:forEach>
</table>
</body>
</html>