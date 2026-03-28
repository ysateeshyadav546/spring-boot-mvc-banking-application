<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Transfer Money</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background: #f0f4ff;
        margin: 0;
        padding: 0;
    }

    .container {
        width: 450px;
        background: #ffffff;
        margin: 50px auto;
        padding: 20px 30px;
        border-radius: 12px;
        box-shadow: 0 0 15px rgba(0,0,0,0.15);
    }

    h2 {
        text-align: center;
        color: #4a148c;
        margin-bottom: 20px;
    }

    label {
        font-weight: bold;
        color: #333;
    }

    select, input[type="number"], input[type="text"] {
        width: 100%;
        padding: 10px;
        margin-top: 5px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 8px;
        font-size: 15px;
    }

    .btn {
        width: 100%;
        background: #6a1b9a;
        color: white;
        padding: 12px;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        font-size: 16px;
        transition: 0.3s;
    }

    .btn:hover {
        background: #4a148c;
    }

    .back-link {
        display: block;
        text-align: center;
        margin-top: 15px;
        color: #6a1b9a;
        text-decoration: none;
        font-weight: bold;
    }

    .back-link:hover {
        text-decoration: underline;
    }

    .success-message {
        text-align: center;
        color: green;
        font-size: 18px;
        margin-top: 10px;
        font-weight: bold;
    }
</style>
</head>

<body>

<div class="container">
    <h2>Transfer Money</h2>

    <form action="transfer" method="post" modelAttribute="transferMoney">

        <label>From Account</label>
        <select name="fromAccountNumber" required>
            <c:forEach var="acc" items="${accounts}">
                <option value="${acc.id}">
                    ${acc.customer.name} - ${acc.id}
                </option>
            </c:forEach>
        </select>

        <label>To Account</label>
        <select name="toAccountNumber" required>
            <c:forEach var="acc" items="${accounts}">
                <option value="${acc.id}">
                    ${acc.customer.name} - ${acc.id}
                </option>
            </c:forEach>
        </select>

        <label>Amount</label>
        <input type="number" name="amount" step="0.01" required>

        <label>Remarks</label>
        <input type="text" name="remarks" maxlength="255">

        <button type="submit" class="btn">Transfer</button>
    </form>

    <a class="back-link" href="./">← Back to Accounts</a>

    <c:if test="${not empty success}">
        <div class="success-message">${success}</div>
    </c:if>

</div>

</body>
</html>
