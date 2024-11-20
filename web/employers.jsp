<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Employers List</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        h1 {
            text-align: center;
            margin-top: 20px;
        }
        a {
            text-decoration: none;
            color: #007BFF;
        }
        a.register {
            display: block;
            text-align: center;
            margin: 20px 0;
            padding: 10px 20px;
            background-color: #007BFF;
            color: white;
            border-radius: 5px;
            width: 200px;
            margin-left: auto;
            margin-right: auto;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #f5f5f5;
        }
        .actions a {
            margin-right: 10px;
        }
        @media screen and (max-width: 768px) {
            table, th, td {
                display: block;
                width: 100%;
            }
            th {
                display: none;
            }
            td {
                position: relative;
                padding-left: 50%;
                text-align: left;
            }
            td::before {
                content: attr(data-label);
                position: absolute;
                left: 10px;
                white-space: nowrap;
                font-weight: bold;
            }
            .actions {
                text-align: right;
            }
            .actions a {
                display: block;
                margin: 5px 0;
            }
        }
    </style>
</head>
<body>
    <h1>Employers List</h1>
    <a href="registerEmployer.jsp" class="register">Register New Employer</a>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Company</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="employer" items="${employers}">
            <tr>
                <td data-label="ID">${employer.id}</td>
                <td data-label="Name">${employer.name}</td>
                <td data-label="Email">${employer.email}</td>
                <td data-label="Phone">${employer.phone}</td>
                <td data-label="Company">${employer.company}</td>
                <td data-label="Actions" class="actions">
                    <a href="employer?action=view&id=${employer.id}">View</a>
                    <a href="employer?action=edit&id=${employer.id}">Edit</a>
                    <a href="employer?action=delete&id=${employer.id}" onclick="return confirm('Are you sure?');">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
