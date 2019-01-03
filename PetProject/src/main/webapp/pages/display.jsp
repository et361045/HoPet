<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="../css/table.css" />
<title>Display</title>
</head>
<body>

<h3>Select Product Table Result : ${fn:length(select)} row(s) selected</h3>

<c:if test="${not empty select}">
<table>
	<thead>
	<tr>
		<th>FostercareCommissionid</th>
		<th>owner</th>
		<th>txt</th>
		<th>petid</th>
		<th>region</th>
		<th>dday</th>
		<th>size</th>
		<th>Variety</th>
	</tr>
	</thead>
	<tbody>
	<c:forEach var="bean" items="${select}">
		<c:url value="/pages/fostercarecommission.jsp" var="path">
			<c:param name="FostercareCommissionid" value="${bean.FostercareCommissionid}" />
			<c:param name="owner" value="${bean.owner}" />
			<c:param name="txt" value="${bean.txt}" />
			<c:param name="petid" value="${bean.petid}" />
			<c:param name="region" value="${bean.region}" />
			<c:param name="dday" value="${bean.dday}" />
			<c:param name="size" value="${bean.size}" />
			<c:param name="Variety" value="${bean.Variety}" />
		</c:url>
	<tr>
		<td>${bean.FostercareCommissionid}</td>
		<td><a href="${path}">${bean.owner}</a></td>
		<td>${bean.txt}</td>
		<td>${bean.petid}</td>
		<td>${bean.region}</td>
		<td>${bean.dday}</td>
		<td>${bean.size}</td>
		<td>${bean.Variety}</td>
	</tr>	
	</c:forEach>
	</tbody>
</table>
</c:if>

<h3><a href="<c:url value="/pages/fostercarecommission.jsp" />">Product Table</a></h3>
</body>
</html>