<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Available Movies</title>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
<style>
    body {
        font-family: 'Poppins', sans-serif;
        margin: 0;
        background: #f2f6fc;
        display: flex;
        flex-direction: column;
        min-height: 100vh;
    }

    /* Header */
    header {
        background: #0d47a1;
        color: white;
        padding: 20px;
        text-align: center;
        font-size: 1.8rem;
        font-weight: 600;
        box-shadow: 0 3px 10px rgba(0, 0, 0, 0.2);
    }

    /* Main content */
    main {
        flex: 1;
        padding: 30px;
        text-align: center;
    }

    h1 {
        margin-bottom: 20px;
        color: #333;
    }

    table {
        width: 85%;
        margin: auto;
        border-collapse: collapse;
        background: #fff;
        box-shadow: 0 6px 16px rgba(0,0,0,0.1);
        border-radius: 12px;
        overflow: hidden;
    }

    th, td {
        padding: 15px;
        text-align: center;
    }

    th {
        background: #4CAF50;
        color: white;
        font-size: 18px;
    }

    tr:nth-child(even) {
        background: #f9f9f9;
    }

    tr:hover {
        background: #e8f5e9;
        transition: background-color 0.3s ease;
    }

    .action-buttons {
        display: flex;
        justify-content: center;
        gap: 10px;
    }

    .action-buttons a {
        text-decoration: none;
        padding: 8px 16px;
        background: #2196F3;
        color: white;
        border-radius: 6px;
        font-size: 14px;
        font-weight: 600;
        transition: all 0.3s ease;
    }

    .action-buttons a:hover {
        background: #0b7dda;
        transform: translateY(-2px);
    }

    .action-buttons a.view {
        background: #4CAF50;
    }

    .action-buttons a.view:hover {
        background: #45a049;
    }

    /* Footer */
    footer {
        background: #0d47a1;
        color: white;
        text-align: center;
        padding: 12px;
        font-size: 0.9rem;
        box-shadow: 0 -2px 8px rgba(0,0,0,0.2);
    }
</style>
</head>
<body>
<%
    session = request.getSession(false);
    if(session==null){
        out.println("<p style='color:red; text-align:center; font-weight:600;'>Session Expired. Please login again.</p>");
        return;
    }
%>

<header>
    🎬 Available Movies
</header>

<main>
    <h1>Choose Your Favorite Movie</h1>
    
    <table>
        <tr>
            <th>Movie Name</th>
            <th>Genre</th>
            <th>Show Time</th>
            <th>Price</th>
            <th>Action</th>
        </tr>
        <tr>
            <td>Movie-1</td>
            <td>Action</td>
            <td>6:00 PM</td>
            <td>200</td>
            <td>
                <div class="action-buttons">
                    <a href="book.jsp?movie=Movie-1&genre=Action&showtime=6:00&price=200">Book</a>
                    <a href="viewStatus.jsp?movie=Movie-1" class="view">View</a>
                </div>
            </td>
        </tr>
        <tr>
            <td>Movie-2</td>
            <td>Comedy</td>
            <td>8:30 PM</td>
            <td>300</td>
            <td>
                <div class="action-buttons">
                    <a href="book.jsp?movie=Movie-2&genre=Comedy&showtime=8:30&price=300">Book</a>
                    <a href="viewStatus.jsp?movie=Movie-2" class="view">View</a>
                </div>
            </td>
        </tr>
        <tr>
            <td>Movie-3</td>
            <td>Drama</td>
            <td>9:45 PM</td>
            <td>250</td>
            <td>
                <div class="action-buttons">
                    <a href="book.jsp?movie=Movie-3&genre=Drama&showtime=9:45&price=250">Book</a>
                    <a href="viewStatus.jsp?movie=Movie-3" class="view">View</a>
                </div>
            </td>
        </tr>
    </table>
</main>

<footer>
    &copy; 2025 Movie Ticket Booking System | All Rights Reserved
</footer>

</body>
</html>
