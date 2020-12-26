<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="database.jsp" %>
<%
	String password=null,cpass=null,uname=null,sql=null;
	
	password=request.getParameter("pass");
	cpass=request.getParameter("cpass");
	uname=request.getParameter("uname");
	try
	{
		sql="update student set password='"+password+"' where regdno='"+uname+"'" ;
		stmt.executeUpdate(sql);
	}
	catch(Exception e)
	{
		out.print(e.getMessage());
	}
	
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Password Updated</title>
</head>

<body background="images/tail-middle.jpg" style="margin-top:80px;">


<h1 align="center"><b>Your password is updated</b></h1>
<h1 align="center"><a href="studentlogin.jsp">login</a></h1>

</body>
</html>