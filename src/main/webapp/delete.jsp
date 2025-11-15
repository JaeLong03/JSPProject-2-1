<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList" %>

<%!
    class Book {
        int id;
        String title;
        String author;
        String publisher;
        String published_date;
        String genre;

        Book(int id, String title, String author, String publisher, String published_date, String genre) {
            this.id = id;
            this.title = title;
            this.author = author;
            this.publisher = publisher;
            this.published_date = published_date;
            this.genre = genre;
        }
    }
%>

<%
    ArrayList<Book> books = new ArrayList<Book>();
    books.add( new Book(1, "해리 포터", "J.K. 롤링", "문학수첩", "2024-10-01", "판타지"));
    books.add( new Book(2, "데미안", "헤르만 헤세", "민음사", "2024-09-21", "소설"));
    books.add( new Book(3, "미드나잇 라이브러리", "매트 헤이그", "인플루엔셜", "2024-11-02", "소설"));
    books.add( new Book(4, "사피엔스", "유발 하라리", "김영사", "2024-08-15", "인문"));
    books.add( new Book(5, "나미야 잡화점의 기적", "히가시노 게이고", "현대문학", "2024-07-03", "소설"));

    int id = Integer.parseInt(request.getParameter("id"));
    Book target = null;
    for(Book b: books){
        if(b.id == id) target = b;
    }
%>

<html>
<head>
    <title>도서 상세보기</title>
    <style>
        table {
            width: 400px;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #777;
            padding: 8px;
        }
        th {
            background: #eee;
            width: 120px;
        }
    </style>
</head>
<body>

<h2>📖 도서 삭제 </h2>

<%
    if (target == null) {
%>
<p>해당 도서를 찾을 수 없습니다.</p>
<a href="list.jsp">목록으로 돌아가기</a>
<%
} else {
%>

<table>
    <tr>
        <th>ID</th>
        <td><%= target.id %></td>
    </tr>
    <tr>
        <th>제목</th>
        <td><%= target.title %></td>
    </tr>
    <tr>
        <th>저자</th>
        <td><%= target.author %></td>
    </tr> <tr>
    <th>출판사</th>
    <td><%= target.publisher %></td>
</tr>
    <tr>
        <th>출판날짜</th>
        <td><%= target.published_date %></td>
    </tr>
    <tr>
        <th>장르</th>
        <td><%= target.genre %></td>
    </tr>
</table>

<br>

<a href="list.jsp">📚 목록 돌아가기</a>

<%
    }
%>

</body>
</html>