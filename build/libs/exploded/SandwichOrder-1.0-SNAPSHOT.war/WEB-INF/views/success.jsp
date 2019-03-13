<%@ page import="java.util.Arrays" %><%--
  Created by IntelliJ IDEA.
  User: son nguyen
  Date: 3/13/2019
  Time: 10:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Sandwich Condiments</title>
</head>
<body>
<c:set scope="application" var="array" value="${condiment}"/>
<%
    String[] arrayCondiments = (String[]) application.getAttribute("array");
    String result = Arrays.toString(arrayCondiments);
    application.setAttribute("result", result);
%>
<h2>You are eating sandwich with : <c:out value="${result}"/></h2>
</body>
</html>