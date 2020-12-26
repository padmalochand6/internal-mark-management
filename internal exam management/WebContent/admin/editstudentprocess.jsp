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
String regd=request.getParameter("regdno");
String name=request.getParameter("name");
String branch=request.getParameter("branch");
String semester=request.getParameter("semester");

int k=0; 
try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234");
	
	PreparedStatement stmt=con.prepareStatement("update studentdata set regdno= '" +regd+ "', name= '" +name+ "', branch= '" +branch+ "' ,semester= '" +semester+ "' where regdno = '" +regd+ "' ");
   
    		 k=stmt.executeUpdate();
    		   if(k>0)
    		   {
    			   response.sendRedirect("studentedit.jsp?regd="+regd);
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