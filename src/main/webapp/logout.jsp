<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<html>
<body>
<%
    session.invalidate();
    response.sendRedirect(request.getContextPath());
%>
</body>
</html>
