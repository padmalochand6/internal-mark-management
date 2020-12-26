<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Edit profile</title>
</head>


<body background="images/tail-middle.jpg" style="margin-top:80px;">
<form name="setpassword" method="post" action="updatepasswordaction.jsp">
<table width="698" border="0" cellspacing="1" cellpadding="1"  bgcolor="#CCFFFF" align="center">
  <tr>
    <th height="33" colspan="2" align="center" bgcolor="#FFCC66" style="font-size:14px; font-family:Verdana, Arial, Helvetica, sans-serif; font-weight:bold" scope="col" >Reset Password </th>
    </tr>
    <tr>
    <td width="349" height="34" align="right">Enter user id :</td>
    <td width="342"><input type="text" name="uname"  />
	</td>
  <tr>
    <td width="349" height="34" align="right">Enter New Password :</td>
    <td width="342"><input type="password" name="pass"  />
	</td>
  </tr>
  <tr>
    <td height="28" align="right">Confirm Password</td>
    <td><input type="password" name="cpass"  /></td>
  </tr>
  <tr>
    <td colspan="2"><hr  size="5"  color="#3399FF"/></td>
    </tr>
  <tr>
    <td align="right"><input type="reset" name="reset" value="Rsest" /></td>
    <td><input type="submit" name="Submit" value="Update"  /></td>
  </tr>
 
  <tr>
    <td colspan="2"><hr  size="5"  color="#3399FF"/></td>
    </tr>
</table>

</form>
</body>
</html>
