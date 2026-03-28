<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Accounts List</title>

<style>

/* ---------- Global Page Styling ---------- */
body {
    margin: 0;
    padding: 0;
    font-family: "Poppins", sans-serif;
    background: linear-gradient(135deg, #4facfe, #00f2fe);
    min-height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
}

/* ---------- Page Header ---------- */
h1 {
    color: white;
    text-align: center;
    margin-bottom: 20px;
    font-size: 38px;
    font-weight: 600;
    text-shadow: 0px 3px 8px rgba(0,0,0,0.3);
    animation: fadeIn 1s ease-in-out;
}

/* ---------- Table Container with Border ---------- */
.table-container {
    padding: 20px;
    border-radius: 16px;
    border: 4px solid rgba(255, 255, 255, 0.7);
    background: rgba(255, 255, 255, 0.2);
    backdrop-filter: blur(12px);
    box-shadow: 0px 15px 35px rgba(0, 0, 0, 0.2);
    animation: slideUp 1s ease;
    transition: 0.3s ease-in-out;
}

/* ---------- Stylish Table ---------- */
table {
    width: 900px;
    border-collapse: collapse;
    background: white;
    padding: 10px;
    border-radius: 12px;
    overflow: hidden;
    animation: fadeIn 1.2s ease-in-out;
    border: 2px solid #0078ff;
    border:1;
}

/* Header Style */
th {
    background: #0078ff;
    color: white;
    padding: 12px;
    font-size: 18px;
    letter-spacing: 0.5px;
    border-bottom: 2px solid #005fcc;
}

/* Cell Style */
td {
    padding: 12px;
    font-size: 16px;
    border-bottom: 1px solid #ddd;
}

/* Row Hover Animation */
tr:hover {
    background: #e6f3ff;
    transition: 0.3s;
}

/* ---------- Animations ---------- */
@keyframes fadeIn {
    from { opacity: 0; transform: scale(0.95); }
    to { opacity: 1; transform: scale(1); }
}

@keyframes slideUp {
    from { transform: translateY(40px); opacity: 0; }
    to { transform: translateY(0); opacity: 1; }
}

</style>

</head>

<body>

<div class="table-container">

<h1>All Accounts List</h1>

<table>
    <tr>
       <th>Account ID</th>
       <th>Customer</th>
       <th>Account Type</th>
       <th>Balance</th>
       <th>Status</th>
    </tr>

    <c:forEach var="acc" items="${listOfAllAccounts}">
    <tr>
       <td>${acc.id}</td>
       <td>${acc.customer.name}</td>
       <td>${acc.accountType}</td>
       <td>${acc.balance}</td>
       <td>${acc.active}</td>
    </tr>
    </c:forEach>
</table>

<center>
    <h2><a href="${pageContext.request.contextPath}/" class="back-btn">Back to Home Page</a></h2>
</center>


</div>




</body>
</html>
