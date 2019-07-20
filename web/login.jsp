<%-- 
    Document   : login
    Created on : Jul 25, 2018, 12:35:38 PM
    Author     : Andre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
       <style>
            body{
                padding: 0.01em 10px;
                margin: 16px 16px;
            }
       </style>
    </head>
    <body>
        <div class="limiter">
	<div class="container-login100">
	<div class="wrap-login100">
<!--	<div class="login100-pic js-tilt" data-tilt>
            <img src="image/logopgi.gif" alt="IMG" style="align-content: center;">
	</div>-->
            
        <form action="CekLogin" method="post" class="login100-form validate-form">
         <span class="login100-form-title">
            Login
         </span>
            
        
            <div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
            <input type="text"name="username" placeholder="Username" class="input100">
            <span class="focus-input100"></span>
            <span class="symbol-input100">
            <i class="fa fa-envelope" aria-hidden="true"></i>
            </span>
            </div>

            <div class="wrap-input100 validate-input" data-validate = "Password is required">
            <input type="password" name="password" placeholder="Password"class="input100">
            <span class="focus-input100"></span>
            <span class="symbol-input100">
            <i class="fa fa-lock" aria-hidden="true"></i>
            </span>
            </div>
            <div class="container-login100-form-btn">
            <input type="submit" value="Login"class="login100-form-btn" style="cursor: pointer"/>
            </div>
                   </form>

	<div class="text-center p-t-12">
	<a class="txt2" href="Register">
	Create your Account
	<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
	</a>
          
            </div>
            </div>
        </div>
        <!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

    </body>
</html>
