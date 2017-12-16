<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Welcome</title>
    <spring:url value="/css/bootstrap.min.css" var="mainCss" />
    <spring:url value="/css/narrow-jumbotron.css" var="main2Css" />
    <spring:url value="/js/jquery-2.1.1.js" var="jqueryJs" />
    <link href="${mainCss}" rel="stylesheet" />
    <link href="${main2Css}" rel="stylesheet" />
    <script src="${jqueryJs}"></script>
</head>

<body>
<div class="container">
    <h3>Pleas enter the correct details</h3>
    <table>
    <tr>
        <td><a href="employee">Retry</a></td>
    </tr>
    </table>
</div>
</body>
</html>