<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Transaction History</title>

<style>
    body {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
        background: #f3f7ff;
    }

    h2 {
        text-align: center;
        color: #2d8a4d;
        margin-top: 20px;
    }

    .container {
        width: 90%;
        margin: auto;
        margin-top: 20px;
    }

    .search-box {
        text-align: right;
        margin-bottom: 10px;
    }

    .search-box input {
        padding: 8px;
        width: 250px;
        border-radius: 5px;
        border: 1px solid #aaa;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 10px;
        background: #fff;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }

    th, td {
        padding: 12px;
        text-align: center;
        border-bottom: 1px solid #ddd;
    }

    th {
        background: #2d8a4d;
        color: white;
    }

    tr:hover {
        background: #f1fff1;
    }

    .back-btn {
        display: inline-block;
        margin: 20px auto;
        padding: 10px 20px;
        background: #2d8a4d;
        color: white;
        border-radius: 6px;
        text-decoration: none;
        font-size: 16px;
    }

    .back-btn:hover {
        background: #256f3e;
    }
</style>

</head>
<body>

<h2>Transaction History</h2>

<div class="container">

    <!-- Search Filter -->
    <div class="search-box">
        <input type="text" id="searchInput" placeholder="Search transactions...">
    </div>

    <!-- Table -->
    <table id="transactionTable">
        <thead>
            <tr>
                <th>ID</th>
                <th>Type</th>
                <th>Amount</th>
                <th>Date</th>
                <th>Remarks</th>
            </tr>
        </thead>

        <tbody>
            <!-- JSP loop will come here -->
            <!-- Example dummy rows (replace with your JSTL loop) -->

            
            <c:forEach var="t" items="${transactions}">
                <tr>
                    <td>${t.id}</td>
                    <td>${t.type}</td>
                    <td>${t.amount}</td>
                    <td>${t.timeStamp}</td>
                    <td>${t.remarks}</td>
                </tr>
            </c:forEach>
           

        </tbody>
    </table>

</div>

<center>
    <a href="./" class="back-btn">Back</a>
</center>

<script>
    // Search Filter Function
    document.getElementById("searchInput").addEventListener("keyup", function () {
        let filter = this.value.toLowerCase();
        let rows = document.querySelectorAll("#transactionTable tbody tr");

        rows.forEach(row => {
            const text = row.innerText.toLowerCase();
            row.style.display = text.includes(filter) ? "" : "none";
        });
    });
</script>

</body>
</html>
