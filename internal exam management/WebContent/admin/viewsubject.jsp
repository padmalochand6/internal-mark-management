

<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Student Profile</title>
</head>


<body background="images/tail-middle.jpg" style="margin-top:80px;">
<form name="student_entry" method="post" action="viewsubjectprocess.jsp">
<table width="698" border="0" cellspacing="1" cellpadding="1"  bgcolor="#CCFFFF" align="center">
  <tr>
    <th height="33" colspan="2" align="center" bgcolor="#FFCC66" style="font-size:14px; font-family:Verdana, Arial, Helvetica, sans-serif; font-weight:bold" scope="col" > view subject</th>
    </tr>
    
  
  
  <tr>
    <td width="349" height="34" align="right">Semester:</td>
    <td width="342"><select  name="sem" style="width:100px" required>
                     	<option></option>
						<option value="1st">1st</option>
						<option value="2nd">2nd</option>
						<option value="3rd">3rd</option>
						<option value="4th">4th</option>
						<option value="5th">5th</option>
						<option value="6th">6th</option>
						<option value="7th">7th</option>
						<option value="8th">8th</option>	
						</select>
	</td>
	</tr>
	<tr>
    <td height="28" align="right">Branch:</td>
    <td><select  name="branch" style="width:100px" required>
			<option></option>
			<option value="CSE">CSE</option>
			<option value="ME">ME</option>
			<option value="CE">CE</option>
			<option value="IT">IT</option>
			<option value="EE">EE</option>
			<option value="EEE">EEE</option>
			<option value="ET">ET</option>	
			</select></td>
  </tr>
  <tr>
    <td colspan="2"><hr  size="5"  color="#3399FF"/></td>
    </tr>
  <tr>
    <td align="right"><input type="reset" name="reset" value="Rsest" /></td>
    <td><input type="submit" name="Submit" value="view"  /></td>
  </tr>
 
  <tr>
    <td colspan="2"><hr  size="5"  color="#3399FF"/></td>
    </tr>
</table>

</form>
</body>
</html>
