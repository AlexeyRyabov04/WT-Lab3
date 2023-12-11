<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<html>
<head>
    <title>Registration</title>
</head>
<body style="margin: 0">
<div>
    <form action="${pageContext.servletContext.contextPath}/auth/signup" method="post" class="form">
        <h1>Registration</h1>
        <div>
            <label for="name">Full name:</label>
            <input type="text" id="name" name="name" placeholder="John Smith" required/>
        </div>
        <div>
            <label for="email">Email address:</label>
            <input type="email" id="email" name="email" placeholder="john.smith@mail.ru" required/>
        </div>
        <div>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" placeholder="johnsmith1974" required/>
        </div>
        <div>
            <label for="re_password">Repeat password:</label>
            <input type="password" id="re_password" name="re_password" placeholder="johnsmith1974" required/>
        </div>
        <div>${error}</div>
        <div>${message}</div>
        <button type="submit" class="submit">
            Create account
        </button>
        <div>
            <span>Already have an account?</span>
            <a href="${pageContext.servletContext.contextPath}/auth/login">
                Sign In
            </a>
        </div>
    </form>
</div>
</body>
</html>
