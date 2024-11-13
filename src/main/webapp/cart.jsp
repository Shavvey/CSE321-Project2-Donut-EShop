<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.ArrayList, java.util.*, p1.BuildMenu, p1.Donut, p1.DonutMenu" %>
<html>
<head>
<meta charset="UTF-8">
<title>The Cart</title>
<link href="cart.css" rel="stylesheet"/>
</head>
<body>
<h1>Your Cart</h1>
<div class="content">
    <%
    	HttpSession sesh = request.getSession();
        // Retrieve the cart from the session
        ArrayList<Donut> cart = (ArrayList<Donut>) sesh.getAttribute("cart");

        if (cart == null || cart.isEmpty()) {
    %>
        <p>Your cart is empty!</p>
    <% } else {
    %><ul> <%
    for (Donut d: cart) { 
    %>
    <li>Type: <%= d.getType() %> Flavor: <%= d.getFlavor() %> Price: <%= d.getPrice() %> Quantity: <%= d.getQuantity() %>
    <form action="rserv" method="post">
                <input type="hidden" name="donutID" value="<%= d.getDonutID() %>" />
            	<button type="submit"> - </button>
    </form>
    </li>
                
    <%} %>
    </ul>
    <br/>
 <% } %>
    <form action = "cserv" method = "POST">
    	<label for="name">Enter your name: </label>
    	<input type="text" name="name" id="name" required /> <br/>
    	<label for="card">Enter your card number: </label>
    	<input type="text" name="card" id="card" required /> <br/>
    	<input type="submit" name="confirm" id="confirm" />
    	
    </form>
</div>
<a href="mserv">Home</a>
</body>
</html>
