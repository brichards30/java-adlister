<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<%--    <jsp:include page="partials/head.jsp">--%>
<%--        <jsp:param name="title" value="Welcome to my site!" />--%>
<%--    </jsp:include>--%>
    <title>Showing Ads</title>
</head>
<body>
<%--    <jsp:include page="partials/navbar.jsp" />--%>
<%--    <div class="container">--%>
<%--        <h1>Welcome to the Adlister!</h1>--%>
<%--    </div>--%>

<c:forEach var="ad" items="${ads}">
    <div class="item">
        <h3>${ad.title}</h3>
        <p>${ad.description}</p>
    </div>
</c:forEach>
</body>
</html>
