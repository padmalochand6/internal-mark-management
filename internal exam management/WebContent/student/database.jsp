<%@ page import="java.sql.*" %>

<%!
	Connection con=null;
	Statement stmt=null;
	ResultSet rs=null;
	ResultSet rs1=null;
%>
<%
	try
	{
		Class.forName("oracle.jdbc.OracleDriver");
	}
	catch(ClassNotFoundException cnfe)
	{
		out.println(cnfe.getMessage());
	}
	
	try
	{
		con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","1234");
		stmt=con.createStatement();
	}
	catch(SQLException sqle)
	{
		out.println(sqle.getMessage());
	}
%>