<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="test.MovieTicketBeans"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		MovieTicketBeans mv = (MovieTicketBeans)application.getAttribute("mvs");	
		String name = mv.getName();
		String mailid = mv.getMailid();
		String pwd = mv.getPassword();
		int number = mv.getNumber();
		
	%>
	<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f7f7f7;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 80%;
            max-width: 800px;
            margin: 50px auto;
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h4 {
            text-align: center;
            color: #333;
            font-size: 24px;
            margin-bottom: 20px;
        }

        form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        input[type="text"] {
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
            width: 100%;
            box-sizing: border-box;
        }

        input[type="submit"] {
            padding: 10px 15px;
            font-size: 16px;
            background-color: #007BFF;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        .profile-info {
            margin-bottom: 20px;
            font-size: 16px;
            color: #555;
        }

        .profile-info span {
            font-weight: bold;
        }
    </style>
</head>
<body>

    <div class="container">
        <h4>Profile Details</h4>

        <div class="profile-info">
            <p><span>Name:</span> <%= name %></p>
            <p><span>Email:</span> <%= mailid %></p>
            <p><span>Password:</span> <%= pwd %></p>
            <p><span>Phone Number:</span> <%= number %></p>
        </div>

        <form action="edit" method="get">
            <label for="name">Enter a name:</label>
            <input type="text" id="name" name="name" value="<%= name %>" readonly>
            
            <label for="mailid">Enter a mailid:</label>
            <input type="text" id="mailid" name="mailid" value="<%= mailid %>">

            <label for="pwd">Enter a password:</label>
            <input type="text" id="pwd" name="pwd" value="<%= pwd %>">
            
            <label for="number">Enter a phone number:</label>
            <input type="text" id="number" name="number" value="<%= number %>">

            <input type="submit" value="Submit">
        </form>
    </div>
	
	
	
		
</body>
</html>