<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String s3=request.getParameter("branch");
String s4=request.getParameter("sem");
String s5=request.getParameter("sub1");
String s6=request.getParameter("sub2");
String s7=request.getParameter("sub3");
String s8=request.getParameter("sub4");
String s9=request.getParameter("sub5");
String s10=request.getParameter("sub6");


int k=0;
try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234");
	PreparedStatement ps=con.prepareStatement("insert into SUBJECT values(?,?,?,?,?,?,?,?)");
    ps.setString(1, s3);
    ps.setString(2, s4);
    ps.setString(3, s5);
    ps.setString(4, s6);
    ps.setString(5, s7);
    ps.setString(6, s8);
    ps.setString(7, s9);
    ps.setString(8, s10);
    
   k=ps.executeUpdate();
   if(k>0)
   {
	   out.println("subject enter successfully");
	   response.sendRedirect("entersubject.jsp");
   }
}
catch(Exception e)
{
	e.printStackTrace();
	out.print(e.getMessage());
}
%>
</body>
</html>