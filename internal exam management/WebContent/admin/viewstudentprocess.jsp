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

<form action="">
<h2 align="center">view student</h2>
<table align="center" cellpadding="3" cellspacing="" border="1">
<tr>

</tr>
<tr >
<td><b>Regd no</b></td>
<td><b>name</b></td>
<td><b>branch</b></td>
<td><b>semester</b></td>

<td></td>
</tr>

<%

String s1 = request.getParameter("sem");
String branch = request.getParameter("branch");

try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234");
	
    String data= "select regdno,name,semester,branch from  studentdata where  branch= ? and semester=?";
    PreparedStatement preparedStatement = con.prepareStatement(data);
    preparedStatement.setString(1, branch);
    preparedStatement.setString(2, s1);
	
	ResultSet rs = preparedStatement.executeQuery();
	while(rs.next()){
%>
		<tr>

		<td><input type="text" style="width:100px;" name="regdno" readonly value='<%=rs.getString("regdno") %>'></td>
		<td><input type="text" style="width:100px;" name="name" readonly value='<%=rs.getString("name") %>'></td>
		<td><input type="text" style="width:100px;" name="branch" readonly value='<%=rs.getString("branch") %>'></td>
		<td><input type="text" style="width:100px;" name="semester" readonly value='<%=rs.getString("semester") %>'></td>
		<td><b><a href="studentedit.jsp?regd=<%=rs.getString("regdno")%>">Edit</a></b> &nbsp&nbsp<a href="studentdeleteprocess.jsp?regd=<%=rs.getString("regdno")%>&sem=<%=s1 %>&branch=<%=branch %>" onclick="return confirm('Are yo sure you want to delete this record?')">Delete</a></b></td>
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
		
		</form>

    </body>
</html>