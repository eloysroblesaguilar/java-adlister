<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><%= "Login" %>
    </title>
</head>
<body>
<main>

    <h1>HELLO HELLO</h1>

    <form method="post">
        <<label for="username"><b>Username</b></label>
        <input type="text" placeholder="Enter Username" name="username" required>

        <label for="password"><b>Password</b></label>
        <input type="password" placeholder="Enter Password" name="password" required>

        <button type="submit">Login</button>

    </form>

    
</main>

    <c:if test="${param.username == 'admin' && param.password == 'password'}">
        <% response.sendRedirect("/profile.jsp"); %>
</c:if>


    <c:if test="${!param.username.equals('admin') || !param.password.equals('password')}">
        <p>you are wrong</p>
<%--        <% response.sendRedirect("login.jsp");%>--%>
    </c:if>

</body>
</html>
