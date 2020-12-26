<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<%@ page import="java.sql.SQLException" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String s1=request.getParameter("sub1");
String s2=request.getParameter("sub2");
String s3=request.getParameter("sub3");
String s4=request.getParameter("sub4");
String s5=request.getParameter("sub5");
String s6=request.getParameter("sub6");
String regd=request.getParameter("regd");
String branch=(String)session.getAttribute("branch1");
String sem=(String)session.getAttribute("sem");
int k=0; 
try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234");
	
	PreparedStatement stmt=con.prepareStatement("update studentmark set sub1= '" +s1+ "', sub2= '" +s2+ "', sub3= '" +s3+ "' ,sub4= '" +s4+ "',sub5= '" +s5+ "',sub6= '" +s6+ "' where regdno = '" +regd+ "' ");
   
    		 k=stmt.executeUpdate();
    		   if(k>0)
    		   {
    			   response.sendRedirect("markedit.jsp?regd="+regd+"&branch="+branch+"&sem="+sem);
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