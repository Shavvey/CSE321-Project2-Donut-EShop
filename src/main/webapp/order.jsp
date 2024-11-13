<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, java.util.*,p1.BuildMenu,p1.Donut,p1.DonutMenu" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Success!</title>
</head>
<body>
<h1>Order Details: </h1>
    <%
    	HttpSession sess = request.getSession();
        // Retrieve the cart from the session
        ArrayList<Donut> cart = (ArrayList<Donut>) sess.getAttribute("cart");
    %><ul> <%
    for (Donut d: cart) {
      %>
      <li>Type: <%= d.getType() %> Flavor: <%= d.getFlavor() %> 
      Price: <%= d.getPrice() %> Quantity: <%=d.getQuantity()%></li>
      <%
    }
    cart.clear();
    %>
    <a href="mserv">Home</a>
</body>
</html>
