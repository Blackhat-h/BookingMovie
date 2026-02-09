<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="test.MovieTicketBeans, java.util.*"
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>View Users</title>
<style>
    body {
        background: linear-gradient(to right, #00b09b, #96c93d);
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        margin: 0;
        padding: 20px;
    }
    .container {
        background-color: white;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 8px 16px rgba(0,0,0,0.2);
        width: 90%;
        max-width: 800px;
        margin: 40px auto;
    }
    h1 {
        text-align: center;
        color: #333;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }
    th, td {
        padding: 12px 15px;
        text-align: center;
        border-bottom: 1px solid #ddd;
    }
    th {
        background-color: #4CAF50;
        color: white;
        font-size: 18px;
    }
    tr:hover {
        background-color: #f1f1f1;
    }
    .no-users {
        text-align: center;
        color: red;
        font-size: 20px;
        margin-top: 40px;
    }
</style>
</head>
<body>

<div class="container">
    <h1>User List</h1>

    <%
        ArrayList<MovieTicketBeans> al = (ArrayList<MovieTicketBeans>) request.getAttribute("list");

        if (al == null || al.size() == 0) {
    %>
        <div class="no-users">No User Found</div>
    <%
        } else {
    %>
        <table>
            <tr>
                <th>Name</th>
                <th>Password</th>
                <th>Email ID</th>
                <th>Phone Number</th>
            </tr>
            <%
                Iterator<MovieTicketBeans> it = al.iterator();
                while (it.hasNext()) {
                    MovieTicketBeans mv = it.next();
            %>
            <tr>
                <td><%= mv.getName() %></td>
                <td><%= mv.getPassword() %></td>
                <td><%= mv.getMailid() %></td>
                <td><%= mv.getNumber() %></td>
            </tr>
            <% 
                }
            %>
        </table>
    <%
        }
    %>

</div>

</body>
</html>
