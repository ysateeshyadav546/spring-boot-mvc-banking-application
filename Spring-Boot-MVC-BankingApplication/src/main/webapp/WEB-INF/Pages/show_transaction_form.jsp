<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="frm" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Transaction History Form</title>

<style>
    body {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
        background: linear-gradient(to right, #4facfe, #00f2fe);
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .card {
        background: white;
        width: 350px;
        padding: 30px;
        border-radius: 15px;
        box-shadow: 0 10px 25px rgba(0,0,0,0.15);
        animation: fadeIn 1s ease-in-out;
    }

    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(20px); }
        to   { opacity: 1; transform: translateY(0); }
    }

    h2 {
        text-align: center;
        color: #0B5ED7;
        margin-bottom: 20px;
    }

    label {
        font-size: 15px;
        font-weight: bold;
        color: #333;
    }

    .input-box {
        width: 100%;
        padding: 10px;
        margin-top: 5px;
        margin-bottom: 15px;
        border-radius: 8px;
        border: 1px solid #aaa;
        font-size: 15px;
    }

    .btn {
        width: 100%;
        padding: 12px;
        background: #0B5ED7;
        border: none;
        color: white;
        font-size: 17px;
        border-radius: 8px;
        cursor: pointer;
        transition: 0.3s;
    }

    .btn:hover {
        background: #084298;
    }
</style>

</head>
<body>

<div class="card">
    <h2>Transaction History</h2>

    <frm:form action="history" method="post" modelAttribute="transactions">

        <label>Enter Account Number</label>
        <frm:input path="id" cssClass="input-box"/>

        <input type="submit" class="btn" value="SEE ALL TRANSACTION">

    </frm:form>
</div>

</body>
</html>
