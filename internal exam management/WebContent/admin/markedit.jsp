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

<h2 align="center">edit mark</h2>
<table align="center" cellpadding="3" cellspacing="" border="1">
<tr>

</tr>
<tr >
<td><b>sub1</b></td>
<td><b>sub2</b></td>
<td><b>sub3</b></td>
<td><b>sub4</b></td>
<td><b>sub5</b></td>
<td><b>sub6</b></td>
</tr>
<form action="editmarkprocess.jsp" method="post">
<%
String i1 = request.getParameter("regd");
String branch = request.getParameter("branch");
String semester= request.getParameter("sem");
session.setAttribute("branch1", branch);
session.setAttribute("sem", semester);
try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234");
	PreparedStatement ps=con.prepareStatement("select sub1,sub2,sub3,sub4,sub5,sub6 from subject where branch=? and semester=?");
	ps.setString(1,branch);
	ps.setString(2,semester);
	ResultSet resultSet=ps.executeQuery();
	resultSet.next();
	%>
	<tr >

<td><b><%=resultSet.getString("sub1") %></b></td>
<td><b><%=resultSet.getString("sub2") %></b></td>
<td><b><%=resultSet.getString("sub3") %></b></td>
<td><b><%=resultSet.getString("sub4") %></b></td>
<td><b><%=resultSet.getString("sub5") %></b></td>
<td><b><%=resultSet.getString("sub6") %></b></td>

</tr>
<%
    String data= "select regdno,sub1,sub2,sub3,sub4,sub5,sub6 from  studentmark where regdno=?";
    PreparedStatement preparedStatement = con.prepareStatement(data);
    preparedStatement.setString(1, i1);
	ResultSet rs = preparedStatement.executeQuery();
	if(rs.next()){
	%>
	<tr>
	<input type="hidden" name="regd" value="<%=rs.getString("regdno") %>"/>
		<td><input type="text" style="width:100px;" name="sub1" value='<%=rs.getString("sub1") %>' ></td>
		<td><input type="text" style="width:100px;" name="sub2" value='<%=rs.getString("sub2") %>' ></td>
		<td><input type="text" style="width:100px;" name="sub3" value='<%=rs.getString("sub3") %>' ></td>
		<td><input type="text" style="width:100px;" name="sub4" value='<%=rs.getString("sub4") %>' ></td>
		<td><input type="text" style="width:100px;" name="sub5" value='<%=rs.getString("sub5") %>' ></td>
		<td><input type="text" style="width:100px;" name="sub6" value='<%=rs.getString("sub6") %>' ></td>
		</tr>
<% 
	}
}
		 catch (Exception e) {
		e.printStackTrace();
		out.print(e.getMessage());
		}

%>
</table><br>
<center><input type="submit" value="Submit"/></center>
</form>

</body></html>