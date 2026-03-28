<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="frm" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Deposit / Withdraw</title>

<style>
/* ---------- Body Styling ---------- */
body {
    margin: 0;
    padding: 0;
    font-family: "Poppins", sans-serif;
    background: linear-gradient(135deg, #667eea, #764ba2);
    min-height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
}

/* ---------- Card Container ---------- */
.form-card {
    background: rgba(255, 255, 255, 0.95);
    padding: 30px 40px;
    border-radius: 15px;
    box-shadow: 0px 15px 40px rgba(0,0,0,0.25);
    width: 400px;
    animation: fadeIn 1s ease-in-out;
}

/* ---------- Heading ---------- */
h1 {
    color: #333;
    text-align: center;
    margin-bottom: 25px;
    font-size: 28px;
    animation: slideDown 1s ease-in-out;
}

/* ---------- Form Table ---------- */
table {
    width: 100%;
    border-collapse: collapse;
}

td {
    padding: 12px;
    font-size: 16px;
}

/* Input Fields */
input[type="text"], input[type="number"] {
    width: 100%;
    padding: 10px;
    border: 1.5px solid #ccc;
    border-radius: 8px;
    font-size: 16px;
    transition: 0.3s;
}

input[type="text"]:focus, input[type="number"]:focus {
    border-color: #667eea;
    box-shadow: 0px 0px 8px rgba(102, 126, 234, 0.5);
    outline: none;
}

/* Submit Button */
input[type="submit"] {
    background: #667eea;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 8px;
    font-size: 18px;
    cursor: pointer;
    transition: 0.3s;
}

input[type="submit"]:hover {
    background: #764ba2;
    transform: scale(1.05);
}

/* Create Account Link */
a {
    color: #764ba2;
    text-decoration: none;
    font-weight: 600;
    transition: 0.3s;
}

a:hover {
    color: #667eea;
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
</style>

</head>
<body>

<div class="form-card">
    <h1>Deposit / Withdraw</h1>

    <frm:form action="withdraw" modelAttribute="account" method="post">
    <table>
        <tr>
            <td>Account Number:</td>
            <td><input type="text" name="id" required></td>
        </tr>

        <tr>
            <td>Amount:</td>
            <td><input type="number" name="amount" required></td>
        </tr>

        <tr>
            <td>Remarks:</td>
            <td><input type="text" name="remarks" required></td>
        </tr>

        <tr>
            <td colspan="2" style="text-align: center; padding-top: 15px;">
                <input type="submit" value="Submit">
            </td>
        </tr>
    </table>
    </frm:form>

    <center>
        <a href="accounts/add">Create New Account</a>
    </center>
</div>

</body>
</html>
