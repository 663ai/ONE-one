<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>登陆界面</title>
</head>
<body>
<form method="post" action="login.action">
  用户：
  <label>
  <input type="text" name="managername" />
  </label>
  <p>密码：
    <label>
    <input type="text" name="passwd" />
    </label>
  </p>
  <p>
    <label>
    <input type="submit" name="Submit" value="提交" />
    </label>
  </p>
</form>
</body>
</html>