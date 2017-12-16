<%--
  Created by IntelliJ IDEA.
  User: karunia
  Date: 12/14/17
  Time: 9:11 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Welcome</title>
    <spring:url value="/css/bootstrap.min.css" var="mainCss" />
    <spring:url value="/css/narrow-jumbotron.css" var="main2Css" />
    <spring:url value="/js/jquery-2.1.1.js" var="jqueryJs" />
    <link href="${mainCss}" rel="stylesheet" />
    <link href="${main2Css}" rel="stylesheet" />
    <script src="${jqueryJs}"></script>
</html>
<body>
<div class="container">
<h3>Masukan Data Pegawai</h3>
<form:form method="POST" action="/addMahasiswa" modelAttribute="mahasiswa">
    <table>

        <tr>
            <td width="100px;"><form:label path="name">Name    :</form:label></td>
            <td><form:input path="name" cssClass="form-control"/></td>
        </tr>
        <tr>
            <td><form:label path="id">Id     :</form:label></td>
            <td><form:input path="id" cssClass="form-control"/></td>
        </tr>
        <tr>
            <td><form:label path="contactNumber">ContactNumber :</form:label></td>
            <td><form:input path="contactNumber" cssClass="form-control"/></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td colspan="2"><input type="submit" class="btn btn-primary" value="Submit"/></td>
        </tr>
    </table>
</form:form>
</div>
</body>
</html>
