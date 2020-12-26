<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Admin</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body background="images/img.jpg">

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <!-- Brand -->
  <a class="navbar-brand" href="admin.jsp">Home</a>

  <!-- Links -->
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="enterstudent.jsp" target="iframe">Enter student </a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="entersubject.jsp" target="iframe">Enter subject </a>
    </li>
     <li class="nav-item">
      <a class="nav-link" href="entermark.jsp" >Enter mark</a>
    </li>
	<li class="nav-item">
      <a class="nav-link" href="viewstudent.jsp" target="">View student </a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="viewsubject.jsp" target="">View subject </a>
    </li>
     <li class="nav-item">
      <a class="nav-link" href="viewmark.jsp" >View mark </a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="logout.jsp">Logout</a>
    </li>
  </ul>
</nav>
<div>
  <center><h1>Welcome Admin</h1></center>
</div><br><br><br>

<iframe height="500px" width="100%" src="welcome.jsp" name="iframe"></iframe>
</body>
</html>
    