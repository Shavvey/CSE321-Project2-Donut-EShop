<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import= "java.util.ArrayList, java.util.*,p1.BuildMenu,p1.Donut,p1.DonutMenu" %>
<html>
<head>
<meta charset="UTF-8">
<title> Some Donut</title>
<style>
        body {
            font-family: Georgia, serif;
            background-color: #6AB2CB;
            margin: 0;
            padding: 20px;
        }
        h1 {
            text-align: center;
            color: #FCFCFC;
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
<%
BuildMenu ourmenu = new BuildMenu();
	
	String p = request.getParameter("donutid");
	Integer id = Integer.parseInt(p);
	Donut d = ourmenu.getDbyId(id);
%>

<center> <div class = "donut-tile"> 
<h2> Donut <%= d.getDonutID() %> </h2>
<p>Type: <%= d.getType() %></p>
<p> Flavor: <%= d.getFlavor() %></p>
<p> Price: <%= d.getPrice() %></p>
<p> <%= d.getDescription() %></p>
<p> Quantity Available: <%= d.getAvailableQuantity() %></p>
</div> </center>

</body>
</html>