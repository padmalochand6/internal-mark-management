<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>student login</title>
</head>
<body>
<%
    String s1 = request.getParameter("regdno");   
    String s2 = request.getParameter("pass");
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system", "1234");

Statement st = con.createStatement();
ResultSet rs = st.executeQuery("select * from student where regdno='" + s1 + "' and password='" + s2 + "'");

if (rs.next()) {
session.setAttribute("user", s1);
response.sendRedirect("student.jsp");
    } 
else {
out.println("Invalid password <a href='studentlogin.jsp'>try again</a>");
    }
    }
catch(Exception e){e.printStackTrace();out.print(e.getMessage());}
%>
</body>
</html>