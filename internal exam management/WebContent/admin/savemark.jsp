

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%
String[] regdno=request.getParameterValues("regdno");
String branch=request.getParameter("branch");
String sem=request.getParameter("semester");
String[] sub1=request.getParameterValues("sub1");
String[] sub2=request.getParameterValues("sub2");
String[] sub3=request.getParameterValues("sub3");
String[] sub4=request.getParameterValues("sub4");
String[] sub5=request.getParameterValues("sub5");
String[] sub6=request.getParameterValues("sub6");
String internal=session.getAttribute("internal").toString();







for(int i=0;i<regdno.length;i++){
	int result=0;



try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection connection=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234");
	
	String data="insert into studentmark values(?,?,?,?,?,?,?,?,?,?)";
	PreparedStatement preparedStatement=connection.prepareStatement(data);
	
 //set value param
	 preparedStatement.setString(1,regdno[i]);
	 preparedStatement.setString(2,branch);
	 preparedStatement.setString(3,sem);
	 
	 preparedStatement.setString(4,sub1[i]);
	
	 preparedStatement.setString(5,sub2[i]);
	
	 preparedStatement.setString(6,sub3[i]);
	 
	 preparedStatement.setString(7,sub4[i]);
	 
	 preparedStatement.setString(8,sub5[i]);
	 
	 preparedStatement.setString(9,sub6[i]);
	 preparedStatement.setString(10,internal);
	 result=preparedStatement.executeUpdate();
	 int k=0;
	 k=preparedStatement.executeUpdate();
	   if(k>0)
	   {
		   response.sendRedirect("successfullyentry.jsp");
	   }
	}

catch(Exception e){
	e.printStackTrace();
	out.print(e.getMessage());
}
}



%>

</body>
</html>