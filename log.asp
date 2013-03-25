<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
</head>

<body>
<%
	Response.Buffer = true
	on error resume next
	dim User
	dim Passwd
	'定义用户名和密码变量
	User = Request.QueryString("logid")
	Passwd = Request.QueryString("password")
	'取得表单中的用户名和密码
	Response.Write(User)
	Response.Write(passwd)
	Response.Write(Request.ServerVariables("REMOTE_ADDR") & "<br>")
	Response.Write(Request.ServerVariables("REMOTE_HOST") & "<br>")
	Response.Write(Request.ServerVariables("URL") & "<br>")
	Response.Write(Request.ServerVariables("PATH_TRANSLATED") & "<br>")
	Response.Write(Request.ServerVariables("HTTP_UA_OS") & "<br>")
	
	Application.Contents("greeting") = Application.Contents("greeting") + 1
	Application("你好") = "你好!"
	
	for each item in Application.Contents
		Response.Write("<br>" & item & Application.Contents(item) & "<br>")
	next
	
	if User = "jeff" then
		if Passwd = "123456" then
			Response.Write(" 登录成功 ")
		else
			Response.Write(" 密码错误 ")
		end if
	else
		Response.Write(" 用户名错误 ")
	end if
	
	Response.Flush()
%>
</body>
</html>	
