<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>index界面</title>
</head>
<body>
<div style="border:1px #000000 solid; width: 100px; height: 100px; text-align: center;">
${requestScope.manager}</div>
</br>
</br>

<div style="border:1px #000000 solid; width: 300px; height: 100px; padding:20px; text-align: center;">
	<input type="text" id="vevew" value="${vevew}" />
	<input type="text" id="veved" value="${veved}" />
	<input type="text" id="vevex" value="${vevex}" />
</div>

</body>
</html>