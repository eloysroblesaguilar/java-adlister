<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title><%= "Login" %>--%>
<%--    </title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<main>--%>

<%--    <h1>HELLO HELLO</h1>--%>

<%--    <div>--%>
<%--        <label for="username"><b>Username</b></label>--%>
<%--        <input type="text" placeholder="Enter Username" name="uname" required>--%>

<%--        <label for="password"><b>Password</b></label>--%>
<%--        <input type="password" placeholder="Enter Password" name="psw" required>--%>

<%--        <button type="submit">Login</button>--%>

<%--    </div>--%>

    <c:choose>
    <c:when test="${param.username.equals('admin') && param.password.equals('password')}">
        <% response.sendRedirect("/profile.jsp"); %> </c:when>
    <c:when test="${!param.username.equals('admin') || !param.password.equals('password')}">
        <p>you are wrong</p>
        <% response.sendRedirect("login.jsp");%>
    </c:when>
    </c:choose>
<%--</main>--%>
<%--</body>--%>
<%--</html>--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.util.Arrays"%>
<html>
<head>
    <title><%= "Welcome" %></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>
<%@include file="partials/navbar.jsp"%>
<%! String name = "Jay"; %>
<%
    int[] numbers = {1, 2 ,3, 4, 5};
    int total = 0;
    for (int num : numbers) {
        total += num;
    }
    int avg = total / numbers.length;
    request.setAttribute("numbers", numbers);
%>

<c:choose>
    <c:when test="${param.condition}">
        <h1>The statement evaluates to true.</h1>
    </c:when>
    <c:when test="${param.numbers}">
        <h1>This time, I wanna show you some numbers. 1, 2, 3, 4, 5!</h1>
    </c:when >
    <%--Otherwise tags are optional.--%>
    <c:otherwise>
        <c:choose>
            <c:when test="true">
                <h1>test</h1>
            </c:when>
        </c:choose>
        <h1>The statements evaluates to false.</h1>
    </c:otherwise>
</c:choose>

<c:if test="">
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequuntur culpa dignissimos iusto minus nulla provident quae quos sed sint ullam!</p>
</c:if>

<c:forEach items="${numbers}" var="num">
    <ul>
        <li>${num}</li>
    </ul>
</c:forEach>




<h1>Hello <%= avg %></h1>

<h1>Welcome To The Site!</h1>
<p>Path: <%= request.getRequestURL() %></p>
<p>Query String: <%= request.getQueryString() %></p>
<p>"name" parameter: <%= request.getParameter("name") %></p>
<p>"method" attribute: <%= request.getMethod() %></p>
<p>User-Agent header: <%= request.getHeader("user-agent") %></p>

<%--Used for singular parameters--%>
<h4>${param.name}</h4>
<%--Used for multiple values in one parameter--%>
<h4>${paramValues.name}</h4>
<h4>${Arrays.toString(numbers)}</h4>




<!--HTML COMMENT-->
<%--JSP COMMENT--%>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</body>
</html>
