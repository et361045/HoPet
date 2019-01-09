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

<h3>Select Hospital Table Result : ${fn:length(select)} row(s) selected</h3>

<c:if test="${not empty select}">
<table>
 <thead>
 <tr>
  <th>hospitalId</th>
  <th>hospitalName</th>
  <th>hospitalAddress</th>
  <th>hospitalphone</th>
  <th>hospitalowner</th>
  <th>longitude</th>
  <th>latitude</th>
 </tr>
 </thead>
 <tbody>
 <c:forEach var="bean" items="${select}">
  <c:url value="/pages/hospital.jsp" var="path">
   <c:param name="hospitalId" value="${bean.hospitalId}" />
   <c:param name="hospitalName" value="${bean.hospitalName}" />
   <c:param name="hospitalAddress" value="${bean.hospitalAddress}" />
   <c:param name="hospitalphone" value="${bean.hospitalphone}" />
   <c:param name="hospitalowner" value="${bean.hospitalowner}" />
   <c:param name="longitude" value="${bean.longitude}" />
   <c:param name="latitude" value="${bean.latitude}" />
  </c:url>
 <tr>
  <td>${bean.hospitalId}</td>
  <td>${bean.hospitalName}</td>
  <td>${bean.hospitalAddress}</td>
  <td>${bean.hospitalphone}</td>
  <td>${bean.hospitalowner}</td>
  <td>${bean.longitude}</td>
  <td>${bean.latitude}</td>
 </tr> 
 </c:forEach>
 </tbody>
</table>
</c:if>

<h3><a href="<c:url value="/pages/hospital.jsp" />">hospital Table</a></h3>
</body>
</html>