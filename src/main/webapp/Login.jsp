<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<style>
    body {
        background: linear-gradient(to right, #6a11cb, #2575fc);
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        height: 100vh;
        margin: 0;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .form-container {
        background-color: #ffffff;
        padding: 40px 30px;
        border-radius: 12px;
        box-shadow: 0px 8px 20px rgba(0, 0, 0, 0.2);
        width: 300px;
        text-align: center;
        position: relative;
    }
    .form-container h2 {
        margin-bottom: 25px;
        color: #333;
    }
    .input-group {
        position: relative;
        width: 100%;
        margin-bottom: 20px;
    }
    input[type="text"],
    input[type="password"] {
        width: 100%;
        padding: 10px 40px 10px 12px;
        border: 1px solid #ccc;
        border-radius: 6px;
        font-size: 16px;
        outline: none;
        transition: 0.3s;
        box-sizing: border-box;
    }
    input[type="text"]:focus,
    input[type="password"]:focus {
        border-color: #2575fc;
        box-shadow: 0 0 5px #2575fc;
    }
    .toggle-password {
        position: absolute;
        top: 50%;
        right: 10px;
        transform: translateY(-50%);
        cursor: pointer;
        color: #888;
        font-size: 18px;
    }
    input[type="submit"] {
        width: 100%;
        background-color: #4CAF50;
        color: white;
        padding: 12px;
        border: none;
        border-radius: 8px;
        font-size: 18px;
        cursor: pointer;
        transition: background-color 0.3s ease, transform 0.3s ease;
    }
    input[type="submit"]:hover {
        background-color: #45a049;
        transform: scale(1.03);
    }
    /* Error / Info Message Styling */
    .message {
        color: red;
        font-weight: bold;
        margin-bottom: 15px;
        text-align: center;
    }
</style>
</head>
<body>

<div class="form-container">
    <h2>Login</h2>

    <!-- Message display -->
    <%
        String msg = (String) request.getAttribute("msg");
        if (msg != null) {
    %>
        <div class="message"><%= msg %></div>
    <%
        }
    %>

    <form action="login" method="post">
        <div class="input-group">
            <input type="text" name="username" placeholder="Enter User Name" required>
        </div>
        
        <div class="input-group">
            <input type="password" id="password" name="pwd" placeholder="Enter Password" required>
            <span class="toggle-password" onclick="togglePassword()">👁️</span>
        </div>
        
        <input type="submit" value="Login">
    </form>    
</div>

<script>
    function togglePassword() {
        var passwordInput = document.getElementById("password");
        var toggleBtn = document.querySelector(".toggle-password");
        if (passwordInput.type === "password") {
            passwordInput.type = "text";
            toggleBtn.textContent = "🙈";
        } else {
            passwordInput.type = "password";
            toggleBtn.textContent = "👁️";
        }
    }
</script>

</body>
</html>
