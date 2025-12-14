<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Employee Registration</title>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap');

    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Poppins', sans-serif;
    }

    body {
        background: linear-gradient(135deg, #4f46e5, #9333ea);
        padding: 60px 20px;
        display: flex;
        justify-content: center;
    }

    .card {
        width: 400px;
        padding: 30px;
        background: rgba(255, 255, 255, 0.15);
        border-radius: 18px;
        box-shadow: 0 8px 28px rgba(0,0,0,0.35);
        backdrop-filter: blur(18px);
        color: #fff;
        animation: fadeIn 0.9s ease;
    }

    .top-btn {
        text-align: center;
        margin-bottom: 15px;
    }

    .top-btn a {
        display: block;
        width: 100%;
        padding: 10px;
        border-radius: 12px;
        background: #ffffff;
        color: #4f46e5;
        text-decoration: none;
        font-weight: 600;
        transition: 0.3s;
    }

    .top-btn a:hover {
        background: #e5e5ff;
        transform: translateY(-2px);
    }

    .message {
        text-align: center;
        margin-bottom: 15px;
        font-size: 16px;
        font-weight: 600;
        color: #00ffae;
        border-radius: 8px;
    }
    
   .message.success {
        color: #00ffae;
        background: rgba(0, 255, 174, 0.1);
    }

    .message.error {
        color: #ff4d4d;
        background: rgba(255, 77, 77, 0.1);
    }

    h2 {
        text-align: center;
        margin-bottom: 20px;
        font-size: 24px;
        font-weight: 600;
    }

    label {
        font-size: 14px;
        margin-bottom: 6px;
        display: block;
        color: #f0e8ff;
    }

    input, select {
        width: 100%;
        padding: 12px;
        margin-bottom: 14px;
        border-radius: 12px;
        border: none;
        background: rgba(255,255,255,0.25);
        color: #fff;
        font-size: 14px;
        outline: none;
        transition: 0.3s;
    }

    input::placeholder {
        color: #f3eaff;
        opacity: 0.88;
    }

    input:focus, select:focus {
        box-shadow: 0 0 8px rgba(255,255,255,0.7);
        backdrop-filter: blur(25px);
    }

    .gender-options {
        display: flex;
        gap: 20px;
        margin-top: 6px;
        margin-bottom: 14px;
    }

    .gender-options label {
        font-size: 14px;
    }

    .save-btn {
        width: 100%;
        padding: 12px;
        background: #ffffff;
        border: none;
        border-radius: 12px;
        color: #4f46e5;
        font-weight: 600;
        font-size: 15px;
        cursor: pointer;
        transition: 0.3s;
        margin-top: 5px;
    }

    .save-btn:hover {
        background: #e5e5ff;
        transform: translateY(-3px);
    }

    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(20px); }
        to { opacity: 1; transform: translateY(0); }
    }

    @media (max-width: 520px) {
        .card {
            width: 90%;
            padding: 20px;
        }
    }
</style>
</head>
<body>

<div class="card">

    <div class="top-btn">
        <a href="login.jsp">Login</a>
    </div>

     <c:if test="${not empty message}">
        <div class="message ${message eq 'Employee Failed' ? 'error' : 'success'}">
            ${message}
            <c:if test="${not empty error}">
                <br><span style="font-size:13px;">ERROR: ${error}</span>
            </c:if>
        </div>
    </c:if>

    <h2>Employee Registration</h2>

    <form action="save" method="post">

        <label for="id">Employee ID</label>
        <input type="text" id="id" name="id" placeholder="Enter Employee ID" required>

        <label for="name">Full Name</label>
        <input type="text" id="name" name="name" placeholder="Enter Full Name" required>

        <label for="email">Email</label>
        <input type="email" id="email" name="email" placeholder="Enter Email Address" required>

        <label for="password">Password</label>
        <input type="password" id="password" name="password" placeholder="Enter Password" required>

        <label>Gender</label>
        <div class="gender-options">
            <label><input type="radio" name="gender" value="male"> Male</label>
            <label><input type="radio" name="gender" value="female"> Female</label>
        </div>

        <label for="city">City</label>
        <select id="city" name="city" required>
            <option value="Mumbai">Mumbai</option>
            <option value="Pune">Pune</option>
            <option value="Kolhapur">Kolhapur</option>
            <option value="Nashik">Nashik</option>
        </select>

        <button type="submit" class="save-btn">Save Employee</button>

    </form>
</div>

</body>
</html>
