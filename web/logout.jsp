<%--
  Created by IntelliJ IDEA.
  User: csing
  Date: 3/4/2019
  Time: 5:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Logout</title>
</head>
<body>
<form action="central" method="post">

    <%--could copy code from inside to validate user--%>

    <label>In order to log out please click on the button below </label>
    <input type="hidden" name="hiddena" value="leave">
    <input type="submit" value="Logout">
    ${pageContext.session.invalidate()}

</form>
</body>
</html>
