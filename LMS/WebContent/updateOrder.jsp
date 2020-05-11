<%@page import="com.lms.model.Order"%>
<%@page import="com.lms.util.OrderDBUtil"%>
<%@ page import="java.util.ArrayList" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.lms.util.*,java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Order</title>


<style type="text/css">
  <%@include file="CSS/addOrder.css" %>
</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>

<body>
	
	<form method = "POST" action = "ViewOrderServlet">
	<table>
		<tr>
			<th WIDTH="2500"></th>
			<th WIDTH="2500"></th>
			<th WIDTH="100"><input type = "submit" value = "Show all orders" /></th>
		</tr>
	</table>
	</form>
	
	<fieldset>
	<legend>New Order</legend><br>
	<form method="post" action="UpdateOrderServlet">
	
<!-- 
	List<Order> orders = OrderDBUtil.selectAllOrders();
	request.setAttribute("orders",orders);
 -->
	
		<table style="width: 100%;">
		<c:forEach items="${UpdateOrder}" var="order">
		<tr>
			<td>Order Id</td>
			<td><input type="text" name="orderId" id="orderId" value="${order.orderId}"></td>
		</tr>
		<tr>
			<td>Customer Id</td>
			<td><input type="text" name="custId" id="custId" value="${order.custId}"></td>
		</tr>
		<tr>
			<td>Weight</td>
			<td><input type="text" name="weight" id="weight" value="${order.weight}"></td>
		</tr>
		<tr>
			<td>Order Date</td>
			<td><input type="text" name="orderDate" id="orderDate" value="${order.orderDate}"></td>
		</tr>
		<tr>
			<td>Delivery Date</td>
			<td><input type="text" name="deliveryDate" id="deliveryDate" value="${order.deliveryDate}"></td>
		</tr>
		<tr>
			<td colspan="2" align="right"><input type="submit" value="Submit" /></td>
		</tr>
		</c:forEach>   
		</table>
	
	</form>
	</fieldset>
</body>
</html>