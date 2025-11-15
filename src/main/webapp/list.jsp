<%--
  Created by IntelliJ IDEA.
  User: jlee23
  Date: 25. 11. 15.
  Time: 오후 1:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import ="java.util.ArrayList" %>
<%!
    // 임시 Mock Data
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
    //초기 임시 데이터 추가
    ArrayList<Book> books = new ArrayList<Book>();
    books.add( new Book(1, "해리 포터", "J.K. 롤링", "문학수첩", "2024-10-01", "판타지"));
    books.add( new Book(2, "데미안", "헤르만 헤세", "민음사", "2024-09-21", "소설"));
    books.add( new Book(3, "미드나잇 라이브러리", "매트 헤이그", "인플루엔셜", "2024-11-02", "소설"));
    books.add( new Book(4, "사피엔스", "유발 하라리", "김영사", "2024-08-15", "인문"));
    books.add( new Book(5, "나미야 잡화점의 기적", "히가시노 게이고", "현대문학", "2024-07-03", "소설"));
%>

<html>
<head>
    <title>도서 게시판 - 목록</title>
    <style>
        table {
            border-collapse: collapse;
            width: 700px;
        }
        th, td {
            border: 1px solid #777;
            padding: 8px;
            text-align: center;
        }
        th {
            background-color: #eee;
        }
        .top-btn {
            margin-bottom: 15px;
        }
    </style>
</head>
<body>
    <h2>📚 도서 목록</h2>

    <div class="top-btn">
        <a href="write.html">➕ 새 도서 등록</a>
    </div>

    <table>
        <tr>
            <th>ID</th>
            <th>제목</th>
            <th>저자</th>
            <th>출판사</th>
            <th>출판날짜</th>
            <th>장르</th>
            <th>관리</th>
        </tr>

        <%
            for (Book b : books) {
        %>
        <tr>
            <td><%= b.id %></td>
            <td><%= b.title %></td>
            <td><%= b.author %></td>
            <td><%= b.publisher %></td>
            <td><%= b.published_date %></td>
            <td><%= b.genre %></td>
            <td>
                <a href="view.jsp?id=<%=b.id%>">상세</a>
            </td>
        </tr>
        <%
            }
        %>
    </table>
</body>
</html>
