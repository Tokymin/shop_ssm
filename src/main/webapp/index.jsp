<%--
  Created by IntelliJ IDEA.
  User: Toky
  Date: 2019/12/27
  Time: 9:16
  To change this template use File | Settings | File Templates.
--%>
<%@page isELIgnored="false"%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
</head>
<body>
<jsp:forward page='/main'>
  <jsp:param name="test" value="1"/>
</jsp:forward>
hello
</body>
</html>
