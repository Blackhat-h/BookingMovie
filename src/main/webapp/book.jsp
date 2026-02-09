<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="test.MovieTicketBeans" %>
 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking Page</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f1f1f1;
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

        .container {
            width: 80%;
            max-width: 900px;
            margin: 40px auto;
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #333;
            font-size: 24px;
            margin-bottom: 30px;
        }

        form {
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        input[type="text"] {
            padding: 12px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
            width: 100%;
            box-sizing: border-box;
            transition: border-color 0.3s;
        }

        input[type="text"]:focus {
            border-color: #007BFF;
        }

        input[type="submit"] {
            padding: 12px 20px;
            font-size: 16px;
            background-color: #28a745;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #218838;
        }

        .hidden-inputs input {
            display: none;
        }

        .booking-details {
            background-color: #f8f9fa;
            padding: 15px;
            border-radius: 8px;
            margin-bottom: 20px;
            font-size: 18px;
            text-align: center;
        }

        .label {
            font-weight: bold;
            color: #333;
        }
    </style>
</head>
<body>

    <!-- Header -->
    <header>
        🎬 Movie Booking System
    </header>

    <div class="container">
        <% 
            // Retrieve parameters passed from previous page
            String movie = request.getParameter("movie");
            String genre = request.getParameter("genre");
            String showTime = request.getParameter("showtime");
            int price = Integer.parseInt(request.getParameter("price"));
            
            MovieTicketBeans mv = (MovieTicketBeans)application.getAttribute("mvs");
            String name = mv.getName();
            int number = mv.getNumber();
        %>

        <div class="booking-details">
            <h2>Booking for: <%= movie %> | <%= genre %> | <%= showTime %> | <%= price %> Rs</h2>
        </div>

        <form action="BookMovie" method="get">
            <!-- Hidden fields for movie data -->
            <div class="hidden-inputs">
                <input type="hidden" name="movie" value="<%= movie %>">
                <input type="hidden" name="genre" value="<%= genre %>">
                <input type="hidden" name="showTime" value="<%= showTime %>">
                <input type="hidden" name="price" value="<%= price %>">
            </div>

            <!-- User input fields -->
            <div>
                <label for="name" class="label">Enter your Name:</label>
                <input type="text" name="name" value="<%= name %>">
            </div>

            <div>
                <label for="number" class="label">Enter your Phone Number:</label>
                <input type="text" name="number" value="<%= number %>">
            </div>

            <div>
                <label for="qty" class="label">Enter Quantity of Movie Tickets:</label>
                <input type="text" name="qty">
            </div>

            <div>
                <input type="submit" value="Confirm Booking">
            </div>
        </form>
    </div>

    <!-- Footer -->
    <footer>
        &copy; 2025 Movie Booking System | Designed by YourName
    </footer>

</body>
</html>
