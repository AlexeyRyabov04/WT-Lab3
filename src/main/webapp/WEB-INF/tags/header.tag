<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set value='${sessionScope["user"]}' var="user"/>
<%@ attribute name="title" required="true" %>
<html>
<head>
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/styles/modal.css">
    <title>${title}</title>
</head>
<header>
    <ul>
        <c:choose>
            <c:when test="${user.getRole() == 'admin'}">
                <c:if test="${user.getRole() == 'admin'}">
                    <li class="left-link">
                        <a href="${pageContext.servletContext.contextPath}/users">
                            Admin Panel
                        </a>
                    </li>
                </c:if>
            </c:when>
            <c:otherwise>
                <li>
                    <a href="${pageContext.servletContext.contextPath}/films">
                        Film Ratings
                    </a>
                </li>
            </c:otherwise>
        </c:choose>
        <ul>
            <li><c:out value="${user.getName()}"/></li>
            <li>
                <form action="${pageContext.servletContext.contextPath}/auth/logout" method="POST">
                    <button type="submit">
                        Logout
                    </button>
                </form>
            </li>
        </ul>
    </ul>
</header>
<jsp:doBody />
</html>
