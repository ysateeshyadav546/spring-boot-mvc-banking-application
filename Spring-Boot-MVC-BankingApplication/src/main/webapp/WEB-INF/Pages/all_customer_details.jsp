<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Account Holder Details</title>

<style>
    body {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
        background: linear-gradient(135deg, #74ebd5, #ACB6E5);
        min-height: 100vh;
        display: flex;
        flex-direction: column;
        align-items: center;
        padding-top: 40px;
    }

    .card {
        background: #fff;
        width: 70%;
        max-width: 700px;
        padding: 25px;
        border-radius: 15px;
        box-shadow: 0 10px 25px rgba(0,0,0,0.15);
        animation: fadeIn 0.9s ease-in-out;
    }

    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(20px); }
        to   { opacity: 1; transform: translateY(0); }
    }

    h2 {
        text-align: center;
        margin-bottom: 20px;
    }

    .success-msg {
        color: green;
        text-align: center;
        font-size: 20px;
        margin-top: 15px;
    }

    .error-msg {
        color: red;
        text-align: center;
        font-size: 20px;
        margin-top: 15px;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 15px;
    }

    th {
        background: #0275d8;
        color: white;
        padding: 12px;
        border-radius: 5px 5px 0 0;
    }

    td {
        padding: 12px;
        background: #f8f8f8;
        border-bottom: 1px solid #ddd;
        text-align: center;
    }

    tr:hover td {
        background: #eaffff;
        transition: 0.3s;
    }

    .back-btn {
        display: block;
        margin: 25px auto;
        width: 200px;
        text-align: center;
        padding: 12px;
        background: #0275d8;
        color: white;
        text-decoration: none;
        border-radius: 8px;
        font-size: 17px;
        transition: 0.3s;
    }

    .back-btn:hover {
        background: #014f9a;
    }
</style>

</head>
<body>

<div class="card">

    <h2 style="color:#d9534f;">Account Holder Details</h2>
    
    
    
    
    <c:choose>

    <c:when test="${!empty cust}">
        <table>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Mobile</th>
                <th>Address</th>
            </tr>

            <tr>
                <td>${cust.id}</td>
                <td>${cust.name}</td>
                <td>${cust.email}</td>
                <td>${cust.phoneNo}</td>
                <td>${cust.address}</td>
            </tr>
        </table>

        <c:if test="${!empty customerId}">
            <p class="success-msg">Customer Added Successfully! ID: ${customerId}</p>
        </c:if>
    </c:when>

    <c:otherwise>
        <p class="error-msg">Account Holder Does Not Exist!</p>
    </c:otherwise>

</c:choose>
    
    
   

</div>

<a href="${pageContext.request.contextPath}/" class="back-btn">Back to Home Page</a>

</body>
</html>
