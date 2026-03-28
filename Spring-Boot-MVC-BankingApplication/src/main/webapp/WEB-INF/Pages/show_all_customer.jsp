<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Customer Details</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f3f4f6;
            margin: 0;
            padding: 20px;
        }

        h2 {
            text-align: center;
            color: #d32f2f;
            margin-bottom: 20px;
        }

        .table-container {
            width: 95%;
            max-width: 1000px;
            margin: auto;
            background: white;
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0px 4px 18px rgba(0,0,0,0.1);
        }

        table {
            width: 100%;
            border-collapse: collapse;
            border-radius: 10px;
            overflow: hidden;
            margin-top: 10px;
        }

        th {
            background: #0d6efd;
            color: white;
            padding: 14px;
            font-size: 15px;
            text-align: left;
        }

        td {
            padding: 12px;
            border-bottom: 1px solid #e0e0e0;
            font-size: 14px;
        }

        tr:hover td {
            background: #f1f5ff;
        }

        /* Not found message */
        .not-found {
            text-align: center;
            font-size: 22px;
            color: #b91c1c;
            font-weight: bold;
            margin-top: 50px;
        }

        /* Responsive view for mobile */
        @media (max-width: 700px) {
            table, thead, tbody, th, td, tr {
                display: block;
            }

            tr {
                margin-bottom: 15px;
                background: #fff;
                padding: 10px;
                border-radius: 10px;
            }

            td {
                display: flex;
                justify-content: space-between;
                padding: 10px;
                border: none;
                border-bottom: 1px solid #eee;
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

<h2>All Customer Details</h2>

<c:choose>

    <c:when test="${not empty cust}">
        <div class="table-container">
            <table>
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email ID</th>
                    <th>Phone Number</th>
                    <th>Address</th>
                </tr>
                </thead>

                <tbody>
                <c:forEach var="cust1" items="${cust}">
                    <tr>
                        <td data-label="ID">${cust1.id}</td>
                        <td data-label="Name">${cust1.name}</td>
                        <td data-label="Email">${cust1.email}</td>
                        <td data-label="Phone">${cust1.phoneNo}</td>
                        <td data-label="Address">${cust1.address}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </c:when>

    <c:otherwise>
        <div class="not-found">Customer Records Not Found</div>
    </c:otherwise>

</c:choose>

</body>
</html>
