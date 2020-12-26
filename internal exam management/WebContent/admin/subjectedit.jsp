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

<form action="editsubjectprocess.jsp">
<h2 align="center">edit subject</h2>
<table align="center" cellpadding="3" cellspacing="" border="1">
<tr>

</tr>
<tr >
<td><b>branch</b></td>
<td><b>semester</b></td>
<td>sub1</td>
<td>sub2</td>
<td>sub3</td>
<td>sub4</td>
<td>sub5</td>
<td>sub6</td>


</tr>

<%


String s1 = request.getParameter("sem");
String branch = request.getParameter("branch");

try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234");
	
	String data= "select * from  subject where  branch= ? and semester=?";
    PreparedStatement preparedStatement = con.prepareStatement(data);
    preparedStatement.setString(1, branch);
    preparedStatement.setString(2, s1);
	
	ResultSet rs = preparedStatement.executeQuery();
	while(rs.next()){
%>
		<tr>

		
		<td><input type="text" style="width:100px;" name="branch"  value='<%=rs.getString("branch") %>' pattern="^(?=[A-Za-z])([A-Za-z\s]*)(?<=[A-Za-z])$"></td>
		<td><input type="text" style="width:100px;" name="semester" value='<%=rs.getString("semester") %>' pattern="^(?=[A-Za-z0-9])([A-Za-z0-9\s]*)(?<=[A-Za-z0-9])$"></td>
		<td><input type="text" style="width:100px;" name="sub1"  value='<%=rs.getString("sub1") %>' pattern="^(?=[A-Za-z])([A-Za-z\s]*)(?<=[A-Za-z])$"></td>
		<td><input type="text" style="width:100px;" name="sub2"  value='<%=rs.getString("sub2") %>' pattern="^(?=[A-Za-z])([A-Za-z\s]*)(?<=[A-Za-z])$"></td>
		<td><input type="text" style="width:100px;" name="sub3"  value='<%=rs.getString("sub3") %>' pattern="^(?=[A-Za-z])([A-Za-z\s]*)(?<=[A-Za-z])$"></td>
		<td><input type="text" style="width:100px;" name="sub4"  value='<%=rs.getString("sub4") %>' pattern="^(?=[A-Za-z])([A-Za-z\s]*)(?<=[A-Za-z])$"></td>
		<td><input type="text" style="width:100px;" name="sub5"  value='<%=rs.getString("sub5") %>' pattern="^(?=[A-Za-z])([A-Za-z\s]*)(?<=[A-Za-z])$"></td>
		<td><input type="text" style="width:100px;" name="sub6"  value='<%=rs.getString("sub6") %>' pattern="^(?=[A-Za-z])([A-Za-z\s]*)(?<=[A-Za-z])$"></td>
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