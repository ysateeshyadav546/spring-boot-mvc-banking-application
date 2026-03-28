<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Customers</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f3f4f6;
            margin: 0;
            padding: 20px;
        }

        .container {
            width: 90%;
            max-width: 900px;
            margin: auto;
            background: white;
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 25px;
        }

        .add-btn {
            display: inline-block;
            background: #2563eb;
            color: white;
            padding: 10px 18px;
            border-radius: 8px;
            text-decoration: none;
            font-size: 14px;
            margin-bottom: 20px;
            transition: 0.3s;
        }

        .add-btn:hover {
            background: #1e4ecc;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            overflow: hidden;
            border-radius: 10px;
        }

        th {
            background: #2563eb;
            color: white;
            padding: 12px;
            text-align: left;
            font-size: 14px;
        }

        td {
            padding: 12px;
            background: #fff;
            border-bottom: 1px solid #e5e7eb;
        }

        tr:hover td {
            background: #f0f4ff;
        }

        /* Responsive */
        @media (max-width: 600px) {
            table, thead, tbody, th, td, tr {
                display: block;
            }
            tr {
                margin-bottom: 15px;
                background: #fff;
                border-radius: 8px;
                padding: 10px;
            }
            td {
                border: none;
                display: flex;
                justify-content: space-between;
            }
            td::before {
                content: attr(data-label);
                font-weight: bold;
                color: #333;
            }
            th {
                display: none;
            }
        }
    </style>

</head>
<body>

<div class="container">

    <h2>Customer List</h2>

    <a href="/customers/add" class="add-btn">➕ Add Customer</a>

    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
        </tr>

        <c:forEach var="c" items="${customers}">
            <tr>
                <td data-label="ID">${c.id}</td>
                <td data-label="Name">${c.name}</td>
                <td data-label="Email">${c.email}</td>
            </tr>
        </c:forEach>

    </table>

</div>

</body>
</html>
