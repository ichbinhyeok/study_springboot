<%--
  Created by IntelliJ IDEA.
  User: jhta
  Date: 2024-08-13
  Time: 오전 11:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.HashMap, java.util.ArrayList, com.yojulab.study_springboot.utils.Paginations" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bootstrap 5 Template</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
</head>
<body>
<%@ include file="/WEB-INF/views/commons/header.jsp" %>
<h1>Test</h1>
<table class="table">
    <thead>
    <tr>
        <th>회사이름</th>
        <th>자동차이름</th>
        <th>연식</th>
        <th>옵션갯수</th>
    </tr>
    </thead>
    <tbody id="carTableBody">
    <%
        ArrayList<HashMap<String, Object>> resultList = (ArrayList<HashMap<String, Object>>) request.getAttribute("result");
        for (HashMap<String, Object> record : resultList) {
    %>
    <tr>
        <td><%= record.get("회사이름") %></td>
        <td><%= record.get("자동차이름") %></td>
        <td><%= record.get("연식") %></td>
        <td><%= record.get("옵션갯수") %></td>
    </tr>
    <%
        }
    %>
    </tbody>
</table>

<%@ include file="/WEB-INF/views/commons/footer.jsp" %>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
