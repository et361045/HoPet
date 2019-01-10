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
		<th>activitymemberid</th>
		<th>activityname</th>
		<th>activities</th>
		<th>limit</th>
		<th>signup</th>
		<th>status</th>
	</tr>
	</thead>
	<tbody>
	<c:forEach var="bean" items="${select}">
		<c:url value="/pages/activityCommission.jsp" var="path">
			<c:param name="activitymemberid" value="${bean.activitymemberid}" />
			<c:param name="activityname" value="${bean.activityname}" />
			<c:param name="activities" value="${bean.activities}" />
			<c:param name="limit" value="${bean.limit}" />
			<c:param name="signup" value="${bean.signup}" />
			<c:param name="status" value="${bean.status}" />
		</c:url>
	<tr>
		<td>${bean.activitymemberid}</td>
		<td>${bean.activityname}</td>
		<td>${bean.activities}</td>
		<td>${bean.limit}</td>
		<td>${bean.signup}</td>
		<td>${bean.status}</td>
	</tr>	
	</c:forEach>
	</tbody>
</table>
</c:if>

<h3><a href="<c:url value="/pages/activityCommission.jsp" />">activityCommission Table</a></h3>
</body>
</html>