<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <title>Applications List</title>
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
    <h1>Applications List</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>Job Title</th>
            <th>Applicant Name</th>
            <th>Resume</th>
            <th>Status</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="application" items="${applications}">
            <tr>
                <td data-label="ID">${application.id}</td>
                <td data-label="Job Title">${application.jobTitle}</td>
                <td data-label="Applicant Name">${application.applicantName}</td>
                <td data-label="Resume"><a href="${application.resumePath}">View Resume</a></td>
                <td data-label="Status">${application.status}</td>
                <td data-label="Actions" class="actions">
                    <a href="application?action=view&id=${application.id}">View</a>
                    <a href="application?action=edit&id=${application.id}">Edit</a>
                    <a href="application?action=delete&id=${application.id}" onclick="return confirm('Are you sure?');">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
