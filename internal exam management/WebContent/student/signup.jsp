<%@page import="java.awt.print.Printable"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script>  
function validateform(){  
var name=document.getElementById("name").value;  
var password=document.getElementById("password").value;  
var cpassword=document.getElementById("cpassword").value;
var letters = /^[A-Za-z]+$/;
if (name==null || name=="" && name!=letters){  
  alert("Name can't be blank");  
  return false;  
}
else if(password==cpassword){  
  alert("Password does not match");  
  return false;  
  }  
}  
</script>
</head>
<body background="images/signup1.jpg">

<form action="signupprocess.jsp" onsubmit="" method="post">
<center>
<table style="background-color:#41aaa2; height:400px; width:400px; border-radius:30px; text-align:center;" class="col-md-offset-4">
<tr><th>
<h1 style="text-align:center; padding-top:30px; color:#ffffff;">Sign Up</h1>
</th></tr>
<div class="col-sm-12" style="padding-top:10px;">
<tr>
<td>
Reg.no:</td><td><input type="number" class="form-control" id="regno" placeholder="Registration no" name="regdno" style="border-radius:15px;" required>
</td></tr>
</div>
<div class="col-sm-12" style="padding-top:10px;">
<tr>
<td>
Name:</td><td><input type="text" class="form-control" id="name" placeholder="Name" name="name" style="border-radius:15px;" required pattern="^(?=[A-Za-z])([A-Za-z\s]*)(?<=[A-Za-z])$">
</td></tr>
</div>
<div class="col-sm-12" style="padding-top:10px;">
<tr>
<td>
Branch:</td><td>
<select style="border-radius:15px;" name="branch" required>
<option></option>
<option value="CSE">CSE</option>
<option value="ME">ME</option>
<option value="CE">CE</option>
<option value="IT">IT</option>
<option value="EE">EE</option>
<option value="EEE">EEE</option>
<option value="ET">ET</option>	
</select>
</td></tr>
</div>
<div class="col-sm-12" style="padding-top:10px;">
<tr>
<td>
Password:</td><td><input type="password" class="form-control" id="password" placeholder="Password" name="password" style="border-radius:10px;" required>
</td></tr>
</div>

<div class="col-sm-12" style="padding-top:10px;">
<tr>
<td>
 Confirm Password:</td><td><input type="password" class="form-control" id="cpassword" placeholder="Password" name="password" style="border-radius:10px;" required>
</td></tr>
</div>
<tr>
<td>
<input type="submit" class="col-md-4 col-md-offset-4 btn" style="background-color:#ffffff; color:#626a69; font-size:20px; margin-top:10px;" name="button" value="submit" >
</td></tr>
</div>
</table>
</center>
</form>
</body>
</html>