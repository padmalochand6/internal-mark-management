<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="java.sql.*" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.io.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<%


String sem=request.getParameter("sem");
String branch=request.getParameter("branch");

int k=0;
try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234");
	Statement stmt=con.createStatement();
	
   	k=stmt.executeUpdate("delete from subject where branch='" +branch+ "' and semester='" +sem+ "' ");
    		 
    		
    		   if(k>0)
    		   {
    			   response.sendRedirect("viewsubject.jsp");
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