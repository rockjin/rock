<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
</head>

<body>
<h1 align="center">Welcome to my website</h1>
<form action="log.asp" method="get" name="loginform">
	<!-- 登录的表单，单击“提交”按钮会转向log.asp-->
    <input type="text" name="logid" />
    <input type="text" name="password" />
    <input type="submit" name="submit1" value="提交" />
    
</form>
<p align="center">&nbsp;</p>
<% Application.Contents("greeting") = 0 %>

<% set BrowsCap = Server.CreateObject("MSWC.BrowserType") %>
<p>
<table align="center">
<tr><td width="203">浏览器类型</td><td width="48"><%=BrowsCap.Browser%></td></tr>
<tr><td>浏览器版本</td><td><%=BrowsCap.version%></td></tr>
<tr><td>操作系统</td><td><%=BrowsCap.Platform%></td></tr>
<tr><td>是否支持VBScript</td><td><%=BrowsCap.vbscript%></td></tr>
<tr><td>是否支持 Activex</td><td><%=BrowsCap.activexcontrols%></td></tr>
</table>
</body>
</html>
