<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Account Details</title>

<style>

    body {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
        background: linear-gradient(135deg, #4facfe, #00f2fe);
        min-height: 100vh;
        display: flex;
        flex-direction: column;
        align-items: center;
        padding-top: 40px;
    }

    .card {
        background: white;
        width: 70%;
        max-width: 650px;
        padding: 30px;
        border-radius: 15px;
        box-shadow: 0 12px 25px rgba(0,0,0,0.2);
        animation: fadeIn 1s ease-in-out;
    }

    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(25px); }
        to   { opacity: 1; transform: translateY(0); }
    }

    h2 {
        text-align: center;
        margin-bottom: 20px;
        color: #003b7a;
    }

    table {
        width: 100%;
        border-collapse: collapse;
    }

    th {
        background: #0275d8;
        color: white;
        padding: 12px;
        font-size: 16px;
    }

    td {
        background: #f7f7f7;
        padding: 12px;
        text-align: center;
        border-bottom: 1px solid #ddd;
        font-size: 15px;
    }

    tr:hover td {
        background: #e7f7ff;
        transition: 0.3s;
    }

    .status-active {
        background: #28a745;
        color: white;
        padding: 6px 12px;
        border-radius: 6px;
        font-weight: bold;
    }

    .status-inactive {
        background: #dc3545;
        color: white;
        padding: 6px 12px;
        border-radius: 6px;
        font-weight: bold;
    }

    .congrats {
        margin-top: 20px;
        text-align: center;
        font-size: 22px;
        font-weight: bold;
        color: #004494;
        opacity: 0;
        animation: popUp 1.4s forwards;
    }

    @keyframes popUp {
        0% { opacity: 0; transform: scale(0.8); }
        100% { opacity: 1; transform: scale(1); }
    }

</style>

</head>
<body>

<div class="card">

    <h2>Account Details</h2>

    <table>
        <tr>
            <th>Account ID</th>
            <th>Customer</th>
            <th>Account Type</th>
            <th>Balance</th>
            <th>Status</th>
        </tr>

        <tr>
            <td>${account.id}</td>
            <td>${account.customer.name}</td>
            <td>${account.accountType}</td>
            <td><b>₹ ${account.balance}</b></td>

            <td>
                <c:choose>
                    <c:when test="${account.active}">
                        <span class="status-active">ACTIVE</span>
                    </c:when>
                    <c:otherwise>
                        <span class="status-inactive">INACTIVE</span>
                    </c:otherwise>
                </c:choose>
            </td>
        </tr>
    </table>

    <h2 class="congrats">${congrats}</h2>

</div>

</body>
</html>
