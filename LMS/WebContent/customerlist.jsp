<!DOCTYPE html>

<html>
<head>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<meta charset="ISO-8859-1">
<!-- 
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
 -->
<link href="CSS/paymentlist/css/main.css" rel="stylesheet" type="text/css">
<link href="CSS/paymentlist/css/util.css" rel="stylesheet" type="text/css">
<link href="CSS/paymentlist/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="CSS/paymentlist/fonts/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="CSS/paymentlist/vendor/animate/animate.css" rel="stylesheet" type="text/css">
<link href="CSS/paymentlist/vendor/select2/select2.min.css" rel="stylesheet" type="text/css">
<link href="CSS/paymentlist/vendor/perfect-scrollbar/perfect-scrollbar.css" type="text/css">

<title>Customer Management</title>
</head>
<body>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.lms.model.Customer,com.lms.service.*,com.lms.util.*,java.util.*" %>
	
	
	<%
	List<Customer> listCustomer = CustomerService.listallcustomer();
	request.setAttribute("listCustomer",listCustomer);
	%>
	
<div class="limiter">
<div class="container-table100">
<div class="wrap-table100">
<div class="table100">
<h1>Customer List</h1>
	<table>
		<thead>
			<tr class="table100-head">
				<th>Customer ID</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Address</th>
				<th>Email</th>
				<th>Phone</th>
				<th>Username</th>
				<th>Password</th>
				<th>View</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
		</thead>
		<c:forEach var="customer" items="${listCustomer}">
			<tbody>
				<tr>
					<td><c:out value="${customer.custId}" /></td>
					<td><c:out value="${customer.firstName}" /></td>
					<td><c:out value="${customer.lastName}" /></td>
					<td><c:out value="${customer.address}" /></td>
					<td><c:out value="${customer.email}" /></td>
					<td><c:out value="${customer.phone}" /></td>
					<td><c:out value="${customer.userName}" /></td>
					<td><c:out value="${customer.password}" /></td>
					<th>View</th>
					<td>Edit</td>
					<td>Delete</td>
				</tr>
			</tbody>					
		</c:forEach>	
	</table>
	</div>
</div>
</div>
</div>
</body>
</html>