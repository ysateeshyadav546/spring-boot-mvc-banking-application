<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="frm" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core_1_1" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Deposit Money</title>

<style>
/* ---------- Body & Background ---------- */
body {
    margin: 0;
    padding: 0;
    font-family: "Poppins", sans-serif;
    background: linear-gradient(135deg, #43cea2, #185a9d);
    min-height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
}

/* ---------- Card Container ---------- */
.form-card {
    background: rgba(255, 255, 255, 0.95);
    padding: 35px 40px;
    border-radius: 15px;
    box-shadow: 0px 15px 35px rgba(0,0,0,0.25);
    width: 400px;
    animation: fadeIn 1s ease-in-out;
}

/* ---------- Heading ---------- */
h1 {
    text-align: center;
    color: #333;
    font-size: 28px;
    margin-bottom: 25px;
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
    border-color: #43cea2;
    box-shadow: 0px 0px 8px rgba(67, 206, 162, 0.5);
    outline: none;
}

/* Submit Button */
input[type="submit"] {
    background: #43cea2;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 8px;
    font-size: 18px;
    cursor: pointer;
    transition: 0.3s;
}

input[type="submit"]:hover {
    background: #185a9d;
    transform: scale(1.05);
}

/* Link Styling */
a {
    display: inline-block;
    margin-top: 15px;
    color: #185a9d;
    font-weight: 600;
    text-decoration: none;
    transition: 0.3s;
}

a:hover {
    color: #43cea2;
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

<script>
/* Optional: Simple input focus animation with JS */
document.addEventListener("DOMContentLoaded", function() {
    const inputs = document.querySelectorAll("input[type='text'], input[type='number']");
    inputs.forEach(input => {
        input.addEventListener("focus", () => {
            input.style.backgroundColor = "#f0f9ff";
        });
        input.addEventListener("blur", () => {
            input.style.backgroundColor = "white";
        });
    });
});
</script>

</head>
<body>

<div class="form-card">
    <h1>Deposit Money</h1>

    <frm:form action="deposit" modelAttribute="account" method="post">
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
                    <input type="submit" value="Deposit">
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
