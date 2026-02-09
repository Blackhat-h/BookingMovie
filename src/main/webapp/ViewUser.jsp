<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="test.MovieTicketBeans" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>User Profile Details</title>
<style>
    body {
        background: #f0f2f5;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        margin: 0;
        padding: 0;
    }

    /* Header */
    header {
        background: linear-gradient(90deg, #0072ff, #00c6ff);
        color: white;
        padding: 15px 30px;
        text-align: center;
        font-size: 22px;
        font-weight: bold;
        box-shadow: 0 2px 6px rgba(0,0,0,0.2);
    }

    /* Footer */
    footer {
        margin-top: 40px;
        background: #333;
        color: #f1f1f1;
        text-align: center;
        padding: 15px;
        font-size: 14px;
    }

    .profile-container {
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: calc(100vh - 120px);
        padding: 30px;
    }

    .profile-card {
        background-color: #ffffff;
        padding: 30px 40px;
        border-radius: 12px;
        box-shadow: 0px 8px 20px rgba(0, 0, 0, 0.2);
        text-align: center;
        width: 350px;
    }
    .profile-card h2 {
        margin-bottom: 20px;
        color: #333;
    }
    .profile-details {
        text-align: left;
        margin-top: 20px;
        font-size: 16px;
        color: #555;
    }
    .profile-details p {
        margin: 10px 0;
    }
</style>
</head>
<body>

    <!-- Header -->
    <header>
        🎬 Movie Booking System
    </header>

    <div class="profile-container">
        <div class="profile-card">
            <h2>User Profile</h2>
            <div class="profile-details">
                <%
                    MovieTicketBeans mv = (MovieTicketBeans) application.getAttribute("mvs");
                    if (mv != null) {
                %>
                    <p><strong>Name:</strong> <%= mv.getName() %></p>
                    <p><strong>Email:</strong> <%= mv.getMailid() %></p>
                    <p><strong>Phone Number:</strong> <%= mv.getNumber() %></p>
                    <p><strong>Password:</strong> <%= mv.getPassword() %></p>
                <%
                    } else {
                %>
                    <p>No user information available.</p>
                <%
                    }
                %>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        &copy; 2025 Movie Booking System | Designed by YourName
    </footer>

</body>
</html>
