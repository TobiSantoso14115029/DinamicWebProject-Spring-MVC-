<%--
  Created by IntelliJ IDEA.
  User: karunia
  Date: 12/14/17
  Time: 9:55 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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
    <h2>Informasi Pegawai</h2>
    <table>
        <tr>
            <td>Name        :</td>
            <td>${name}</td>
        </tr>
        <tr>
            <td>Id     :</td>
            <td>${id}</td>
        </tr>
        <tr>
            <td>ContactNumber :</td>
            <td>${contactNumber}</td>
        </tr>

    </table>
</div>
</body>
</html>
