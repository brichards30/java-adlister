<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setAttribute("username", request.getParameter("username"));%>
<% request.setAttribute("password", request.getParameter("password"));%>

<html>
<head>
    <title>Title</title>
    <style>
        * {
            background-color: darkred;
            color: goldenrod;
        }

    </style>
</head>
<body>
<jsp:include page="partials/navbar.jsp"/>
<form action="/login.jsp" method="POST">
    <label for="username">Username:</label>
    <input type="text" id="username" name="username"><br><br>
    <label for="password">Password:</label>
    <input type="password" id="password" name="password"><br><br>
    <button type="submit">Submit</button>
</form>

<c:choose>

    <c:when test="${username == 'admin' && password == 'password'}">
        <% response.sendRedirect("/profile.jsp");%>
    </c:when>

</c:choose>



<jsp:include page="partials/scriptsAndLinks.jsp"/>

</body>
</html>