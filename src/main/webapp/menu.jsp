<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.ArrayList, java.util.*, p1.buildmenu, p1.donut, p1.donutMenu" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sprinkle Squad Donuts</title>
    <style>
        body {
            font-family: Georgia, serif;
            background-color: #6AB2CB;
            margin: 0;
            padding: 20px;
        }
        h1 {
            text-align: center;
            color: #F2F8FA;
        }
        .donut-tile {
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
            margin: 20px;
            padding: 15px;
            text-align: center;
            display: inline-block;
            width: calc(33% - 75px); /* Three tiles per row with space */
            vertical-align: top;
        }
        .donut-tile h2 {
            margin: 10px 0;
            color: #333;
        }
        .donut-tile p {
            margin: 5px 0;
            color: #666;
        }
    </style>
</head>
<body>
    <h1>Sprinkle Squad Donuts</h1>
    <div class="donut-container">
        <%
            buildmenu ourmenu = new buildmenu();
            ArrayList<donut> ourdonuts = ourmenu.getMenu();
            for (donut d : ourdonuts) {
        %>
            <div class="donut-tile">
                <h2><a href="serv?donutid=<%= d.getDonutID() %>">Donut <%= d.getDonutID() %></a></h2>
                <p>Type: <%= d.getType() %></p>
                <p>Flavor: <%= d.getFlavor() %></p>
                <p>Price: $<%= d.getPrice() %></p>
            </div> 
        <%
            }
        %>
    </div>
</body>
</html>
