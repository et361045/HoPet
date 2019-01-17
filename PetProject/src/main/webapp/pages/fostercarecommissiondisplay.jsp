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
		<th>name</th>
		<th>variety</th>
		<th>picture</th>
		<th>area</th>
		<th>starttime</th>
		<th>endtime</th>
		<th>reason</th>
		<th>remark</th>
	</tr>
	</thead>
	<tbody>
	<c:forEach var="bean" items="${select}">
		<c:url value="/pages/fostercarecommission.jsp" var="path">
			<c:param name="name" value="${bean.name}" />
			<c:param name="variety" value="${bean.variety}" />
			<c:param name="picture" value="${bean.picture}" />
			<c:param name="area" value="${bean.area}" />
			<c:param name="area" value="${bean.starttime}" />
			<c:param name="area" value="${bean.endtime}" />
			<c:param name="reason" value="${bean.reason}" />
			<c:param name="remark" value="${bean.remark}" />
		</c:url>
	<tr>
		<td>${bean.name}</td>
		<td>${bean.variety}</td>
		<td>${bean.picture}</td>
		<td>${bean.area}</td>
		<td>${bean.starttime}</td>
		<td>${bean.endtime}
		<td>${bean.reason}</td>	
		<td>${bean.remark}</td>
	</tr>	
	</c:forEach>
	</tbody>
</table>
</c:if>

<h3><a href="<c:url value="/pages/fostercarecommission.jsp" />">fostercare Table</a></h3>
</body>
</html>