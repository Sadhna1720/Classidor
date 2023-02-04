<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<title>Books</title>
<%
   response.addHeader("Cache-Control", "no-cache,no-store,private,must-revalidate,max-stale=0,post-check=0,pre-check=0"); 
   response.addHeader("Pragma", "no-cache"); 
   response.addDateHeader ("Expires", 0);
 %>
<body>
<%@include file="navbar.html"%>
<%
try {
	String k = (String) session.getAttribute("loginSession");
	if (k == null)
		response.sendRedirect("http://localhost:8080/Classidor/pages/login.jsp");
} catch (Exception e) {
	System.out.println("Exception in session");
	response.sendRedirect("http://localhost:8080/Classidor/pages/login.jsp");
}
%>
</body>
</html>