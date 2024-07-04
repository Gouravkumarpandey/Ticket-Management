<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ticket Confirmation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            padding: 20px;
        }
        
        h1 {
            color: #333;
        }
        
        table {
            border-collapse: collapse;
            width: 100%;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-top: 20px;
        }
        
        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        
        tr:hover {
            background-color: #f5f5f5;
        }
        
        span {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div>
        <h1>Ticket Confirmation</h1>
        <p><strong>Passenger Name:</strong> <%= session.getAttribute("passengerName") %></p>
        <p><strong>Age:</strong> <%= session.getAttribute("age") %></p>
        <p><strong>Station From:</strong> <%= session.getAttribute("stationFrom") %></p>
        <p><strong>Station To:</strong> <%= session.getAttribute("stationTo") %></p>
        <p><strong>Indian:</strong> <%= session.getAttribute("indian") %></p>
        <p><strong>Meal:</strong> <%= session.getAttribute("meal") %></p>
        <p><strong>Journey Date:</strong> <%= session.getAttribute("journeyDate") %></p>
    </div>
</body>
</html>