<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<html>
<head>
    <title>Login</title>
</head>
<body style="margin: 0">
<div>
    <form action="${pageContext.servletContext.contextPath}/auth/login" method="post" class="form">
        <h1>Login</h1>
        <div >
            <label for="email">Email address:</label>
            <input type="email" id="email" name="email" placeholder="john.smith@mail.ru" required/>
        </div>
        <div>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" placeholder="johnsmith1974" required/>
        </div>
        <div>${error}</div>
        <button type="submit" class="submit">
            Login
        </button>
        <div>
            <span>Don't have an account?</span>
            <a href="${pageContext.servletContext.contextPath}/auth/signup" class="link">
                Sing Up
            </a>
        </div>
    </form>
</div>
</body>
</html>
