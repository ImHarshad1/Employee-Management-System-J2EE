<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Login</title>

<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: "Poppins", sans-serif;
    }

    body {
        height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
        background: linear-gradient(135deg, #4f46e5, #9333ea);
    }

    .login-container {
        width: 350px;
        padding: 35px;
        backdrop-filter: blur(20px);
        background: rgba(255, 255, 255, 0.15);
        border-radius: 18px;
        box-shadow: 0 8px 25px rgba(0, 0, 0, 0.25);
        color: white;
        text-align: center;
    }

    .login-container h2 {
        margin-bottom: 25px;
        font-weight: 600;
        letter-spacing: 1px;
    }

    input {
        width: 100%;
        padding: 12px 14px;
        margin-top: 12px;
        border-radius: 10px;
        border: none;
        outline: none;
        background: rgba(255, 255, 255, 0.25);
        font-size: 15px;
        color: white;
    }

    input::placeholder {
        color: #f0e9ff;
        opacity: 0.9;
    }

    input[type="submit"] {
        background: #ffffff;
        color: #4f46e5;
        font-weight: bold;
        cursor: pointer;
        transition: 0.3s;
        margin-top: 25px;
    }

    input[type="submit"]:hover {
        transform: translateY(-3px);
        background: #e5e5ff;
    }

    .links {
        margin-top: 18px;
        font-size: 14px;
    }

    .links a {
        color: #fff;
        text-decoration: underline;
        cursor: pointer;
    }

</style>

</head>
<body>

    <div class="login-container">
    		<h4 style='color:red'>${msg}</h4>
        <h2>Welcome Back</h2>

        <form action="login" method="post">

            <input type="email" placeholder="Enter Email" name="email" required>
            <input type="password" placeholder="Enter Password" name="password" required>

            <input type="submit" value="login">

        </form>

        <div class="links">
           <p>Don't have an account? <a href="employee.jsp">Sign Up</a>
        </div>

    </div>

</body>
</html>
