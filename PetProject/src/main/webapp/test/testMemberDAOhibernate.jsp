<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page import="org.springframework.web.context.WebApplicationContext"%>
<%@ page import="org.springframework.context.ApplicationContext"%>
<%@ page import="javax.sql.DataSource" %>
<%@ page import="java.sql.*" %>


<!-- ----------------宣告---------------------------------- -->



<%
ApplicationContext context = (ApplicationContext)
		application.getAttribute(WebApplicationContext.ROOT_WEB_APPLICATION_CONTEXT_ATTRIBUTE);

DataSource dataSource = (DataSource) context.getBean("dataSource");
Connection conn = dataSource.getConnection();
Statement stmt = conn.createStatement();
ResultSet rset = stmt.executeQuery("select * from member");
while(rset.next()) {
	String col1 = rset.getString(1);
	String col2 = rset.getString(2);
	out.println("<h3>"+col1+", "+col2+"</h3>");
}
rset.close();
stmt.close();
conn.close();
%>

<!-- ----------測試HIBERNATE--------------------------------------------- -->

<%@ page import="org.hibernate.SessionFactory" %>
<%@ page import="java.util.List" %>
<%@ page import="model.dao.member.*" %>
<%@ page import="model.member.*" %> 
<%

SessionFactory sessionFactory = (SessionFactory) context.getBean("sessionFactory");
MemberDAOHibernate memberDAOHibernate = (MemberDAOHibernate) context.getBean(MemberDAOHibernate.class);
MemberBean member= memberDAOHibernate.findMemberBean(1);
out.println(member);
// sessionFactory.getCurrentSession().getTransaction().commit();
%>
<!-- ----------測試DAOHIBERNATE--------------------------------------------- -->

</body>
</html>