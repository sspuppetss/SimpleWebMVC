<%-- 
    Document   : login
    Created on : Oct 22, 2018, 6:21:38 PM
    Author     : Surya
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <link rel="stylesheet" type="text/css" href="css/login.css">
        <title>Login</title>
    </head>
    <body>
        <div class="login-box">
            <div class="login-banner">
                <p>LOGIN PAGE</p>
            </div>
            <div class="login-body">
                <p class="login-header">Please login first...</p>                
                <form action="Login" method="post">
                    <div class="form">
                    <p>Username</p>
                    <input type="text" name="username" class="form-control" required>
                    </div>
                    <div class="form">
                    <p>Password</p>
                    <input type="password" name="password" class="form-control" required>
                    </div>
                    <div>
                    <input type="submit" value="Login" class="btn">
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>