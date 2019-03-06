<%--
  Created by IntelliJ IDEA.
  User: csing
  Date: 3/4/2019
  Time: 5:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Inside</title>
</head>
<body>

    //this validates if user has valid session
    //if not, it redirects to index.jsp which is login page
    /*<c:if test="${sessionScope.userAllowed == null}">
        <c:redirect url="index.jsp"></c:redirect>
    </c:if>*/

    <c:out value="${pageContext.session.id}"></c:out>
    <h1>
        Welcome <c:out value="${sessionScope.userAllowed.username}"></c:out>
        <c:out value="${sessionScope.userAllowed.password}"></c:out>
    </h1>
<a href="logout.jsp">Logout</a>

</body>
</html>
