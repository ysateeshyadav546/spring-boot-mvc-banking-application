<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<h2 style="color: red;text-align: center">All Accounts</h2>

<table border="1" align="center" bgcolor="cyan">
		<tr>
		  <th>Account No</th>
		  <th>Customer Name</th>
		  <th>Account Type</th>
		  <th>Balance</th>
		</tr>
		
		<c:forEach var="acc" items="${accounts}">
		<tr>
		<td>${acc.id}</td>
		<td>${acc.customer}
		<td>${acc.accountType}</td>
		<td> ${acc.balance} </td>
		<td>${acc.active} </td>
		</tr>
		</c:forEach>
		
		
</table>

<center> 
           <a href="/accounts/add">Open New Account</a>
           <a href="./">Home</a>
</center>