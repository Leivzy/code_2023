<%--
  Created by IntelliJ IDEA.
  User: Leivzy
  Date: 2023/10/18
  Time: 17:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String acc = request.getParameter("account");
//    out.print(acc);

%>
<form name="form2" action="page2.jsp" method="post">
    <input type="hidden" name="acc" value=<%= acc %>>
    请输入姓名: <input name="name" type="text"><br>
    <input type="submit" value="提交">
</form>
</body>
</html>
