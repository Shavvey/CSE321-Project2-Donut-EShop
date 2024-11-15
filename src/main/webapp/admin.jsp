<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import= "java.util.ArrayList, java.util.*,p1.Order,p1.Donut,p1.OrdersList" %>
<!DOCTYPE html>
<html>
<head>
<link href="index.css" rel="stylesheet" />
<meta charset="UTF-8">
<title>Admin</title>
<style>
p {
  text-align: center;
}
</style>
</head>
<body>

<%
OrdersList list = new OrdersList();
%>
<!-- generate the orders that are closed given a timestamp -->
	<h1> Totals this Week </h1>
		<p> <%= list.weeklyTotal() %> </p>
	<h1>Totals this Month</h1>
		<p> <%= list.monthlyTotal() %> </p>
	<h1> Totals this Year</h1>	
		<p> <%= list.yearlyTotal() %> </p>
	<br/>
	<a href="mserv">Back to Menu</a>
</body>
</html>
