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

<h3>Select businessInformation Table Result : ${fn:length(select)} row(s) selected</h3>

<c:if test="${not empty select}">
<table>
	<thead>
	<tr>
		<th>businessId</th>
		<th>pointnumber</th>
		<th>externalname</th>
		<th>companyname</th>
		<th>idname</th>
		<th>businessproject</th>
		<th>businessPhone</th>
		<th>region</th>
		<th>businessAddress</th>
		<th>businessScore</th>
		<th>latitude</th>
		
	</tr>
	</thead>
	<tbody>
	<c:forEach var="bean" items="${select}">
		<c:url value="/pages/businessInformation.jsp" var="path">
			<c:param name="businessId" value="${bean.businessId}" />
<%-- 			<c:param name="pointnumber" value="${bean.pointnumber}" /> --%>
			<c:param name="externalname" value="${bean.externalname}" />
			<c:param name="companyname" value="${bean.companyname}" />
			<c:param name="idname" value="${bean.idname}" />
			<c:param name="businessproject" value="${bean.businessproject}" />
			<c:param name="businessPhone" value="${bean.businessPhone}" />
			<c:param name="region" value="${bean.region}" />
			<c:param name="businessAddress" value="${bean.businessAddress}" />
			<c:param name="businessScore" value="${bean.businessScore}" />
			<c:param name="latitude" value="${bean.latitude}" />
		</c:url>
	<tr>
		<td>${bean.businessId}</td>
<%-- 		<td>${bean.pointnumber}</td> --%>
		<td>${bean.externalname}</td>
		<td>${bean.companyname}</td>
		<td>${bean.idname}</td>
		<td>${bean.businessproject}</td>
		<td>${bean.businessPhone}</td>
		<td>${bean.region}</td>
		<td>${bean.businessAddress}</td>
		<td>${bean.businessScore}</td>
		<td>${bean.latitude}</td>
	</tr>	
	</c:forEach>
	</tbody>
</table>
</c:if>

<h3><a href="<c:url value="/pages/businessInformation.jsp" />">businessInformation Table</a></h3>
</body>
</html>