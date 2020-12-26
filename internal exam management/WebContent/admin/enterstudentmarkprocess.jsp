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

<form action="savemark.jsp">
<h2 align="center">Enter mark</h2>
<table align="center" cellpadding="3" cellspacing="" border="1">
<tr>

</tr>
<tr >
<td><b>Regd no</b></td>
<td><b>branch</b></td>
<td><b>semester</b></td>
<td><b>sub1</b></td>
<td><b>sub2</b></td>
<td><b>sub3</b></td>
<td><b>sub4</b></td>
<td><b>sub5</b></td>
<td><b>sub6</b></td>
</tr>

<%
String i1 = request.getParameter("internal");
String s1 = request.getParameter("sem");
String branch = request.getParameter("branch");
session.setAttribute("internal",i1);
try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234");
	
	
	
	PreparedStatement ps=con.prepareStatement("select sub1,sub2,sub3,sub4,sub5,sub6 from subject where branch=? and semester=?");
	ps.setString(1,branch);
	ps.setString(2,s1);
	ResultSet resultSet=ps.executeQuery();
	resultSet.next();
	%>
	<tr >
<td colspan="3"></td>
<td><b><%=resultSet.getString("sub1") %></b></td>
<td><b><%=resultSet.getString("sub2") %></b></td>
<td><b><%=resultSet.getString("sub3") %></b></td>
<td><b><%=resultSet.getString("sub4") %></b></td>
<td><b><%=resultSet.getString("sub5") %></b></td>
<td><b><%=resultSet.getString("sub6") %></b></td>

</tr>
	
	<%
    String data= "select regdno,branch,semester from studentdata  where branch=? and semester=? ";
    PreparedStatement preparedStatement = con.prepareStatement(data);
    preparedStatement.setString(1, branch);
    preparedStatement.setString(2, s1);
	ResultSet rs = preparedStatement.executeQuery();
	
    
    
	
	
	while(rs.next()){
%>
		<tr>

		<td><input type="text" style="width:100px;" name="regdno" readonly value='<%=rs.getString("regdno") %>'></td>
		<td><input type="text" style="width:100px;" name="branch" readonly value='<%=rs.getString("branch") %>'></td>
		<td><input type="text" style="width:100px;" name="semester" readonly value='<%=rs.getString("semester") %>'></td>
		<td><input type="text" style="width:100px;" name="sub1"  required></td>
		<td><input type="text" style="width:100px;" name="sub2"  required></td>
		<td><input type="text" style="width:100px;" name="sub3"  required></td>
		<td><input type="text" style="width:100px;" name="sub4"  ></td>
		<td><input type="text" style="width:100px;" name="sub5"  ></td>
		<td><input type="text" style="width:100px;" name="sub6"  ></td>
		
		</tr>
<% 
	
	}
	
}
		 catch (Exception e) {
		e.printStackTrace();
		out.print(e.getMessage());
		}

%>
		</table>
		<br>
		<center>
		<input type="reset" value="reset">
		<input type="submit" value="submit"></center>
		</form>

    </body>
</html>