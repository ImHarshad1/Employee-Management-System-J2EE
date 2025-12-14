<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Dashboard</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(135deg, #74ebd5 0%, #9face6 100%);
        margin: 0;
        padding: 0;
    }
    .container {
        max-width: 900px;
        margin: 50px auto;
        background: #fff;
        border-radius: 12px;
        box-shadow: 0 8px 20px rgba(0,0,0,0.15);
        padding: 30px;
        animation: fadeIn 1s ease-in-out;
    }
    h3 {
        text-align: center;
        color: #444;
        margin-bottom: 20px;
        font-size: 24px;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
        border-radius: 8px;
        overflow: hidden;
    }
    th, td {
        padding: 14px;
        text-align: center;
    }
    th {
        background: #007BFF;
        color: white;
        font-weight: 600;
        letter-spacing: 0.5px;
    }
    tr:nth-child(even) {
        background: #f9f9f9;
    }
    tr:hover {
        background: #eaf4ff;
        transition: 0.3s;
    }
    td {
        color: #333;
    }
    @keyframes fadeIn {
        from {opacity: 0; transform: translateY(20px);}
        to {opacity: 1; transform: translateY(0);}
    }
</style>
</head>
<body>

    <div class="container" >
        <h3>👋 Welcome, <c:out value="${employee.name}" /></h3>
        
        <table>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Gender</th>
                <th>City</th>
            </tr>
            
            <tr>
                <td><c:out value="${employee.id}" /></td>
                <td><c:out value="${employee.name}" /></td>    
                <td><c:out value="${employee.email}" /></td>    
                <td><c:out value="${employee.gender}" /></td>    
                <td><c:out value="${employee.city}" /></td>        
            </tr>
        </table>
    </div>

</body>
</html>
