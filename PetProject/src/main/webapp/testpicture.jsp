<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="<c:url value='/test'/>" enctype="multipart/form-data">

<input name="file" type="file" accept="image/gif, image/jpeg, image/png">
<input type="submit" value="上傳照片">

</form>
</body>
</html>