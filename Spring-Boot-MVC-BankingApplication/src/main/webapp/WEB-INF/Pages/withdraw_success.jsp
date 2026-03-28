<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Account Details</title>

<style>
/* ---------- Page Background ---------- */
body {
    margin: 0;
    padding: 0;
    font-family: "Poppins", sans-serif;
    background: linear-gradient(135deg, #6a11cb, #2575fc);
    min-height: 100vh;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
}

/* ---------- Card Container ---------- */
.table-card {
    background: rgba(255, 255, 255, 0.95);
    padding: 25px 30px;
    border-radius: 15px;
    box-shadow: 0px 15px 40px rgba(0,0,0,0.25);
    animation: fadeIn 1s ease-in-out;
}

/* ---------- Heading ---------- */
h2 {
    text-align: center;
    color: #333;
    font-size: 28px;
    margin: 20px 0 0 0;
    animation: slideDown 1s ease-in-out;
}

/* ---------- Table Styling ---------- */
table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 15px;
    border-radius: 12px;
    overflow: hidden;
    font-size: 16px;
}

/* Table Header */
th {
    background: #0078ff;
    color: white;
    padding: 12px;
    text-align: left;
}

/* Table Data */
td {
    padding: 12px;
    border-bottom: 1px solid #ddd;
}

/* Hover effect for rows */
tr:hover {
    background: #e6f3ff;
    transition: 0.3s;
}

/* ---------- Animations ---------- */
@keyframes fadeIn {
    from { opacity: 0; transform: scale(0.95); }
    to { opacity: 1; transform: scale(1); }
}

@keyframes slideDown {
    from { opacity: 0; transform: translateY(-20px); }
    to { opacity: 1; transform: translateY(0); }
}

/* ---------- Status Message ---------- */
.status {
    margin-top: 20px;
    font-size: 22px;
    color: #0056d2;
    text-align: center;
    font-weight: 600;
    animation: fadeIn 1.5s ease-in-out;
}
</style>

</head>
<body>

<div class="table-card">

    <table>
        <tr>
            <th>Account Number</th>
            <th>Account Holder Name</th>
            <th>Account Type</th>
            <th>Current Balance</th>
            <th>Remarks</th>
        </tr>

        <tr>
            <td>${AccountDetails.account.id}</td>
            <td>${AccountDetails.account.customer.name}</td>
            <td>${AccountDetails.type}</td>
            <td>${AccountDetails.amount}</td>
            <td>${AccountDetails.remarks}</td>
        </tr>
    </table>

</div>

 
 
 
 

<h2>
<a href="${pageContext.request.contextPath}/" class="back-btn">Back to Home Page</a>
</h2>



<h2 class="status" style="color: ${AccountDetails != null ? 'red' : 'red'};">
    ${status}
</h2>

</body>
</html>
