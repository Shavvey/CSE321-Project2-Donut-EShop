<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.ArrayList, p1.OrdersList, p1.Order"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee</title>
<link href="index.css" rel="stylesheet"/>
</head>
<body>
<h1>Modify Inventory</h1>
<%-- first we need to get the inventory again --%>
<%

%>
<h1> Current Orders </h1>
<%
	OrdersList ordersList = new OrdersList();
	for (Order o : ordersList.list) {
%><% if (o.isOpen()) { %>	
	<div class="donut-tile">			
			<p> <%=o.getOrderID()%> </p>
			<p> <%=o.getName()%> </p>
			<p> <%=o.getTimeStamp() %> </p>
			<p> <%=o.getCardNumber()%> </p>
			<p> <%=o.getTotal() %> </p>
		    <form action="eserv" method="POST">
                 <input type="hidden" name="OrderID" value="<%= o.getOrderID() %>" />
                    <input type="hidden" name="name" value="<%= o.getName() %>" />
                    <input type="hidden" name="timeStamp" value="<%= o.getTimeStamp() %>" />
                    <input type="hidden" name="cardNumber" value="<%= o.getCardNumber() %>" />
                    <input type="hidden" name="total" value="<%= o.getTotal() %>" />
            	<button type="submit"> Close </button>
          </form>
       <% }%>
	</div>
<%} %>
<br/>
<a href="mserv">Back to Menu</a>
</body>
</html>
