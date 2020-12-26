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
String branch=request.getParameter("branch");
String semester=request.getParameter("semester");
String sub1=request.getParameter("sub1");
String sub2=request.getParameter("sub2");
String sub3=request.getParameter("sub3");
String sub4=request.getParameter("sub4");
String sub5=request.getParameter("sub5");
String sub6=request.getParameter("sub6");
int k=0; 
try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234");
	
	PreparedStatement stmt=con.prepareStatement("update subject set branch= '" +branch+ "', semester= '" +semester+ "', sub1= '" +sub1+ "' ,sub2= '" +sub2+ "',sub3= '" +sub3+ "', sub4= '" +sub4+ "', sub5= '" +sub5+ "' ,sub6= '" +sub6+ "'  where branch = '" +branch+ "' and semester='"+semester+"' ");
   
    		 k=stmt.executeUpdate();
    		   if(k>0)
    		   {
    			   response.sendRedirect("subjectedit.jsp?sem="+semester+"&branch="+branch);
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