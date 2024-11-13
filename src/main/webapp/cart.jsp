<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.ArrayList, java.util.*, p1.BuildMenu, p1.Donut, p1.DonutMenu" %>
<html>
<head>
<meta charset="UTF-8">
<title>The Cart</title>
</head>
<body>
<h1>Your Cart</h1>
<a href="mserv"> Home</a>
    <%
    	HttpSession sesh = request.getSession();
        // Retrieve the cart from the session
        ArrayList<Donut> cart = (ArrayList<Donut>) sesh.getAttribute("cart");

        if (cart == null || cart.isEmpty()) {
    %>
        <p>Your cart is empty!</p>
    <% } else {
    for (Donut d: cart) { 
    %>
    <p>Type: <%= d.getType() %> Flavor: <%= d.getFlavor() %> Price: <%= d.getPrice() %> Quantity: <%= d.getQuantity() %></p>
    <form action="rserv" method="post">
                <input type="hidden" name="donutID" value="<%= d.getDonutID() %>" />
            	<button type="submit"> - </button>
    </form>
                
    <%} %>
    <button type="submit"> Checkout </button> <% } %>
</body>
</html>
