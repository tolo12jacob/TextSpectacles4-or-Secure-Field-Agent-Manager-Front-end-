<%-- 
    Document   : login
    Created on : 24 May 2026, 7:48:09 PM
    Author     : Jacob
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login</title>

    <link rel="stylesheet" href="styles.css">
</head>

<body>

<div class="container">

    <h1>System Login</h1>

    <p>
        Please enter your username and password to access the Field Agent Management System.
    </p>

    <form action="j_security_check" method="POST">

        <label for="username">Username</label>

        <input
            type="text"
            id="username"
            name="j_username"
            placeholder="Enter your username"
            required>

        <label for="password">Password</label>

        <input
            type="password"
            id="password"
            name="j_password"
            placeholder="Enter your password"
            required>

        <input type="submit" value="Login">

    </form>

</div>

</body>
</html>