<%--
  Created by IntelliJ IDEA.
  User: jlee23
  Date: 25. 11. 13.
  Time: 오전 10:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // email, password
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String address1 = request.getParameter("address1");
    String address2 = request.getParameter("address2");
    String city = request.getParameter("city");
    String zipcode = request.getParameter("zip");

%>
<html>
<head>
    <title>Title</title>
</head>
<body>
이메일: <%=email%><br>
암호: <%=password%><br>
주소: <%=address1%> <%= address2%> <br>
도시: <%=city%><br>
우편번호: <%=zipcode%><br>
</body>
</html>
