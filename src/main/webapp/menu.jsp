<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.ArrayList, java.util.*,p1.BuildMenu,p1.Donut,p1.DonutMenu" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sprinkle Squad Donuts</title>
    <link href="index.css" rel="stylesheet"> 
</head>
<body>
	<%
		ArrayList<Donut> cart = (ArrayList<Donut>) session.getAttribute("cart");
	%>
	<div class="topnav" id="menu-topnav">
		<a class="active">Menu</a>
		<a href="eserv">Employee</a>
		<a>Admin</a>
		<a href="cserv">Cart</a> <div class="circle"><%= Donut.getTotal(cart) %></div>
	</div>
    <h1>Sprinkle Squad Donuts</h1>
    <div class="donut-container">
        <%  
            BuildMenu ourmenu = new BuildMenu();
            ArrayList<Donut> ourdonuts = ourmenu.getMenu();
           

            for (Donut d : ourdonuts) {
        %>
            <div class="donut-tile">
                <h2><a href="serv?donutid=<%= d.getDonutID() %>">Donut <%= d.getDonutID() %></a></h2>
                <p>Type: <%= d.getType() %></p>
                <p>Flavor: <%= d.getFlavor() %></p>
                <p>Price: $<%= d.getPrice() %></p>
                <form action="mserv" method="post">
                 <input type="hidden" name="donutID" value="<%= d.getDonutID() %>" />
                    <input type="hidden" name="donutType" value="<%= d.getType() %>" />
                    <input type="hidden" name="donutFlavor" value="<%= d.getFlavor() %>" />
                    <input type="hidden" name="donutPrice" value="<%= d.getPrice() %>" />
                    <input type="hidden" name="donutDesc" value="<%= d.getDescription() %>" />
            	<button type="submit"> + </button>
            	</form>
            </div> 
             
            
        <%
            }
        %>
    </div>
</body>
</html>

