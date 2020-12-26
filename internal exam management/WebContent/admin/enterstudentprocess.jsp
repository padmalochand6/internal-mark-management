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
String s1=request.getParameter("regdno");
String s2=request.getParameter("name");
String s3=request.getParameter("branch");
String s4=request.getParameter("sem");


int k=0;
try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234");
    PreparedStatement ps=con.prepareStatement("insert into studentdata values(?,?,?,?)");
    ps.setString(1, s1);
    ps.setString(2, s2);
    ps.setString(3, s3);
    ps.setString(4, s4);
    
   k=ps.executeUpdate();
   if(k>0)
   {
	   out.println("student data entered successfully");
	   response.sendRedirect("enterstudent.jsp");
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