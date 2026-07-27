<%-- 
    Document   : login_error
    Created on : 24 May 2026, 7:50:25 PM
    Author     : Jacob
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login Failed</title>

    <link rel="stylesheet" href="styles.css">
</head>

<body>

<div class="container">

    <h1>Login Failed</h1>

    <p style="color:#dc2626; font-weight:bold; font-size:18px;">
        Incorrect username or password.
    </p>

    <p>
        The credentials you entered are invalid.
        Please check your username and password and try again.
    </p>

    <a href="login.jsp" class="button">
        Try Again
    </a>

</div>

</body>
</html>