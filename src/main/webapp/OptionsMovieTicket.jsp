<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="test.MovieTicketBeans"%>
<%@ page import="jakarta.servlet.http.*, jakarta.servlet.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Movie Ticket Booking</title>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
<style>
    body {
        font-family: 'Poppins', sans-serif;
        margin: 0;
        background: linear-gradient(135deg, #2193b0, #6dd5ed);
        display: flex;
        flex-direction: column;
        min-height: 100vh;
    }

    /* Header */
    header {
        background: #0d47a1;
        color: #fff;
        text-align: center;
        padding: 20px;
        font-size: 1.8rem;
        font-weight: 600;
        box-shadow: 0 3px 10px rgba(0,0,0,0.3);
    }

    /* Main content */
    main {
        flex: 1;
        display: flex;
        justify-content: center;
        align-items: center;
        padding: 30px;
    }

    .card {
        background: #fff;
        padding: 40px 50px;
        border-radius: 15px;
        box-shadow: 0px 8px 20px rgba(0,0,0,0.2);
        text-align: center;
        max-width: 500px;
        width: 100%;
    }

    h2 {
        margin-bottom: 25px;
        color: #333;
    }

    .button-container {
        display: flex;
        flex-direction: column;
        align-items: center;
        gap: 15px;
    }

    .button-container form {
        width: 100%;
    }

    button {
        width: 100%;
        padding: 12px;
        font-size: 1rem;
        font-weight: 600;
        border: none;
        border-radius: 8px;
        background: #2196F3;
        color: #fff;
        cursor: pointer;
        transition: all 0.3s ease;
    }

    button:hover {
        background: #1976D2;
        transform: translateY(-2px);
        box-shadow: 0 4px 12px rgba(0,0,0,0.2);
    }

    /* Footer */
    footer {
        background: #0d47a1;
        color: #fff;
        text-align: center;
        padding: 12px;
        font-size: 0.9rem;
        box-shadow: 0 -2px 8px rgba(0,0,0,0.2);
    }
</style>
</head>
<body>

<header>
    🎬 Movie Ticket Booking System
</header>

<main>
    <div class="card">
        <%
            MovieTicketBeans mv = (MovieTicketBeans)application.getAttribute("mvs");
            if(mv != null){
        %>
            <h2>Welcome, <%= mv.getName() %>!</h2>
        <%
            } else {
        %>
            <h2>Welcome, Guest!</h2>
        <%
            }
        %>

        <%
            HttpSession s = request.getSession(false);
            if (s == null || session.getAttribute("mvs") == null) {
                out.println("<p style='color:red;font-weight:600;'>Session Expired. Please login again.</p>");
                return;
            }
        %>

        <div class="button-container">
            <form action="ViewMovie.jsp" method="get">
                <button type="submit">🎟 Book Ticket</button>
            </form>

            <form action="Details" method="get">
                <button type="submit">📄 View Ticket Details</button>
                <input type="hidden" name="name" value="<%= mv.getName() %>">
            </form>

            <form action="ViewMovie.jsp" method="get">
                <button type="submit">🎬 View Available Movies</button>
            </form>

            <form action="ViewUser.jsp" method="get">
                <button type="submit">👤 View Profile</button>
            </form>

            <form action="Edit.jsp" method="get">
                <button type="submit">✏️ Edit Profile</button>
            </form>

            <form action="Logout" method="get">
                <button type="submit" style="background:#f44336;">🚪 Logout</button>
            </form>
        </div>
    </div>
</main>

<footer>
    &copy; 2025 Movie Ticket Booking System | All Rights Reserved
</footer>

</body>
</html>
