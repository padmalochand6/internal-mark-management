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

<form action="editstudentprocess.jsp">
<h2 align="center">edit student</h2>
<table align="center" cellpadding="3" cellspacing="" border="1">
<tr>

</tr>
<tr >
<td><b>Regd no</b></td>
<td><b>name</b></td>
<td><b>branch</b></td>
<td><b>semester</b></td>


</tr>

<%


String regdno = request.getParameter("regd");

try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234");
	
    String data= "select regdno,name,semester,branch from  studentdata where  regdno=?";
    PreparedStatement preparedStatement = con.prepareStatement(data);
    preparedStatement.setString(1, regdno);
    
	
	ResultSet rs = preparedStatement.executeQuery();
	if(rs.next()){
%>
		<tr>

		<td><input type="number" style="width:100px;" name="regdno"  value='<%=rs.getString("regdno") %>'></td>
		<td><input type="text" style="width:100px;" name="name"  value='<%=rs.getString("name") %>' pattern="^(?=[A-Za-z])([A-Za-z\s]*)(?<=[A-Za-z])$"></td>
		<td><input type="text" style="width:100px;" name="branch" value='<%=rs.getString("branch") %>' pattern="^(?=[A-Za-z])([A-Za-z\s]*)(?<=[A-Za-z])$"></td>
		<td><input type="text" style="width:100px;" name="semester"  value='<%=rs.getString("semester") %>' pattern="^(?=[A-Za-z0-9])([A-Za-z0-9\s]*)(?<=[A-Za-z0-9])$"></td>
		
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

    </body>
</html>