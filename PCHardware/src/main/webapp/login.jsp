<%@ page contentType="text/html;charset=UTF-8" errorPage="loginError.jsp" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="mine" uri="customTags" %>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags" %>

<fmt:setLocale value="${locale}"/>
<fmt:bundle basename="l10n">
    <fmt:message key="signInPls" var="signInPls"/>
    <fmt:message key="username" var="username"/>
    <fmt:message key="password" var="password"/>
    <fmt:message key="signIn" var="signIn"/>
</fmt:bundle>

<html>
<head>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<tag:header/>
<h2>${signInPls}:</h2>
<br><br>
<div class="productBody">
    <div class="inputForm">
    <form action="j_security_check" method=post>
    <table class="adminTable">
        <tr><td>${username}:</td><td><input type="text" name="j_username" size="25" required></td></tr>
        <tr><td>${password}:</td><td><input type="password" size="25" name="j_password" required></td></tr>
    </table>
        <input type="submit" value="${signIn}">
    </form>
    </div>
</div>
</body>
</html>
