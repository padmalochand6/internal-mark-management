<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Login Page</title>
   
	<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
<form action="aloginprocess.jsp" method="post">




 <header class="s-header">

        <div class="header-logo">
            <a class="site-logo" href="index.html">
                <img src="images/bcetlogo.png" alt="Homepage">
            </a>
        </div> <!-- end header-logo -->

     </header>




<div class="container">
	<div class="d-flex justify-content-center h-100">
		<div class="card">
			<div class="card-header">
				<h3>Admin login</h3>
			</div>
			<div class="card-body">
				<form>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						<input type="text" class="form-control" placeholder="username" name="uname" required>
						
					</div><br><br>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
						<input type="password" class="form-control" placeholder="password" name="pass" required>
					</div><br>
					<div class="row align-items-center remember">
						<input type="checkbox">Remember Me
					</div><br>
					<div class="form-group">
						<input type="submit" value="Login" class="btn float-right login_btn">
					</div>
				</form>
			</div><br>
			<div class="card-footer">
				
				<div class="d-flex justify-content-center">
					<a href="forgetpassword.jsp">Forgot your password?</a>
				</div>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>