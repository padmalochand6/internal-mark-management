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
String[] regdno=request.getParameterValues("regdno");
String[] branch=request.getParameterValues("branch");
String[] semester=request.getParameterValues("semester");
String[] sub1=request.getParameterValues("sub1");

String[] sub2=request.getParameterValues("sub2");
String[] sub3=request.getParameterValues("sub3");
String[] sub4=request.getParameterValues("sub4");
String[] sub5=request.getParameterValues("sub5");
String[] sub6=request.getParameterValues("sub6");

int k=0;
try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234");
	Statement stmt=con.createStatement();
   	String q="update studentmark set sub1= '" +sub1+ "', sub2= '" +sub2+ "', sub3= '" +sub3+ "' ,sub4= '" +sub4+ "',sub5= '" +sub5+ "',sub6= '" +sub6+ "' where regdno = '" +regdno+ "' ";
    		 
    		 k=stmt.executeUpdate(q);
    		   if(k>0)
    		   {
    			   response.sendRedirect("successfullyedit.jsp");
    		   }
    		}
    		catch(Exception e)
    		{
    			
    			e.printStackTrace();
    		}
  %>
    	
</body>
</html>