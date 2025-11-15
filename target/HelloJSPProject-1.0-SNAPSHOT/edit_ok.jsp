<%--
  Created by IntelliJ IDEA.
  User: jlee23
  Date: 25. 11. 15.
  Time: 오후 6:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // 데이터 받아오기
    String title = request.getParameter("title");
    String author = request.getParameter("author");
    String publisher = request.getParameter("publisher");
    String published_date = request.getParameter("published_date");
    String genre = request.getParameter("genre");
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>도서 수정 완료</h2>

<p>제목: <%= title %></p>
<p>저자: <%= author %></p>
<p>출판사: <%= publisher %></p>
<p>날짜: <%= published_date %></p>
<p>장르: <%= genre %></p>

<br>
<a href="list.jsp">목록으로 돌아가기</a>
</body>
</html>
