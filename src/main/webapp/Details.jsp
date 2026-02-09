<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="test.MovieBookBeans"
    import="java.util.*"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Movie Booking Details</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: #f0f2f5;
        margin: 0;
        padding: 0;
    }

    /* Header */
    header {
        background: linear-gradient(90deg, #4CAF50, #2e7d32);
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

    h1 {
        text-align: center;
        margin: 30px 0;
        color: #333;
    }

    .container {
        display: grid;
        grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
        gap: 20px;
        max-width: 1200px;
        margin: auto;
        padding: 20px;
    }
    .card {
        background: #ffffff;
        padding: 20px;
        border-radius: 15px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        transition: transform 0.3s ease;
    }
    .card:hover {
        transform: translateY(-5px);
    }
    .card h2 {
        font-size: 22px;
        margin-bottom: 10px;
        color: #333;
    }
    .details {
        font-size: 16px;
        color: #555;
        margin: 5px 0;
    }
    .price {
        margin-top: 15px;
        font-weight: bold;
        font-size: 18px;
        color: #28a745;
    }
</style>
</head>
<body>

    <!-- Header -->
    <header>
        🎬 Movie Booking System
    </header>

    <h1>Movie Booking Details</h1>

    <div class="container">
    <%
        ArrayList<MovieBookBeans> al = (ArrayList<MovieBookBeans>) request.getAttribute("list");
        if (al != null) {
            Iterator<MovieBookBeans> it = al.iterator();
            while (it.hasNext()) {
                MovieBookBeans mv = it.next();
    %>
        <div class="card">
            <h2><%= mv.getMovieName() %></h2>
            <div class="details"><strong>Name:</strong> <%= mv.getName() %></div>
            <div class="details"><strong>Contact:</strong> <%= mv.getNumber() %></div>
            <div class="details"><strong>Quantity:</strong> <%= mv.getQty() %> tickets</div>
            <div class="details"><strong>Price per ticket:</strong> ₹<%= mv.getPrice() %></div>
            <div class="details"><strong>Genre:</strong> <%= mv.getGenre() %></div>
            <div class="details"><strong>Show Time:</strong> <%= mv.getTime() %></div>
            <div class="price">Total: ₹<%= mv.getTotal() %></div>
        </div>
    <%
            }
        } else {
    %>
        <p style="text-align:center;">No bookings found!</p>
    <%
        }
    %>
    </div>

    <!-- Footer -->
    <footer>
        &copy; 2025 Movie Booking System | Designed by YourName
    </footer>

</body>
</html>
