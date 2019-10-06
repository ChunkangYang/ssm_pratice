<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>ログイン</title>
<table align="center" border="1" width="600" height="50" cellspacing="0">
<tr>
<td align="center">wit社員IDシステム</td>
</tr>
</table>
</head>
<hr width="100%"></hr>
<body>
<center>
  <font color="red">${requestScope.message}</font>
<form action="${pageContext.request.contextPath}/login/login.action" method="post">
<table height="100">
<tr>
<td>社員ID:</td>
<td border="1" width="400"><input type="text" required name="userId"></td>
</tr>
<tr>
<td>パスワード:</td>
<td border="1" width="400"><input type="password" required name="password"></td>
</tr>
<tr>
<td colspan="2" align="center"><input type="submit" value="登録"></td>
</tr>
</table>
</table>
</form>
</center>
</body>
</html>