<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="frm" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Open New Account</title>

<style>

    body {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
        background: linear-gradient(135deg, #4f9cff, #6ae8ff);
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .card {
        background: #ffffff;
        width: 400px;
        padding: 30px;
        border-radius: 15px;
        box-shadow: 0 12px 25px rgba(0,0,0,0.15);
        animation: fadeIn 0.9s ease-in-out;
    }

    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(20px); }
        to   { opacity: 1; transform: translateY(0); }
    }

    h2 {
        text-align: center;
        color: #0275d8;
        margin-bottom: 25px;
    }

    label {
        font-size: 15px;
        font-weight: bold;
        color: #333;
        display: block;
        margin-bottom: 5px;
    }

    .input-box, select {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border-radius: 8px;
        border: 1px solid #aaa;
        font-size: 15px;
        background: #f8f8f8;
    }

    .btn {
        width: 100%;
        padding: 12px;
        background: #0275d8;
        border: none;
        color: white;
        font-size: 17px;
        border-radius: 8px;
        cursor: pointer;
        transition: 0.3s;
    }

    .btn:hover {
        background: #0258a3;
    }

</style>

</head>
<body>

<div class="card">

    <h2>Open New Account</h2>

    <frm:form method="post" action="save" modelAttribute="account">

        <label>Account Type</label>
        <frm:input path="accountType" cssClass="input-box"/>

        <label>Initial Balance</label>
        <frm:input path="balance" cssClass="input-box"/>

        <label>Select Customer</label>
        <select name="customerId" class="input-box">
            <c:forEach var="c" items="${customers}">
                <option value="${c.id}">${c.name}</option>
            </c:forEach>
        </select>

        <input type="submit" class="btn" value="Create Account">

    </frm:form>
    <br>
    <center>
    
    <a href="${pageContext.request.contextPath}/" class="back-btn">Back to Home Page</a>
    
    </center>
    

</div>


</body>
</html>
