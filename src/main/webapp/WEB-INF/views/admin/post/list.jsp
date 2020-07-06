<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="vi">

<head>
    <title>Admin - Toeic</title>
    <%@include file="../../template/admin/head.jsp" %>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"/>
</head>

<body>
<div class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
    <%@include file="../../template/admin/top.jsp" %>
    <div class="app-main">
        <%@include file="../../template/admin/sidebar.jsp" %>
        <div class="app-main__outer">
            <%--Main--%>
            <div class="app-main__inner">
                <div class="app-page-title">
                    <div class="page-title-wrapper">
                        <div class="page-title-heading">
                            <div class="page-title-icon">
                                <i class="pe-7s-drawer icon-gradient bg-happy-itmeo">
                                </i>
                            </div>
                            <div>Post Table
                                <div class="page-title-subheading">Tables are the backbone of almost all web
                                    applications.
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="main-card mb-3 card">
                            <div class="card-body"><h5 class="card-title">Table dark</h5>
                                <table class="mb-0 table table-dark">
                                    <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Title</th>
                                        <th>Description</th>
                                        <th>Paragraph</th>
                                        <th>Image</th>
                                        <th>Category</th>
                                        <th>Action</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${postList}" var="post">
                                        <tr>
                                            <th scope="row">${post.id_post}</th>
                                            <td>${post.title}</td>
                                            <td>${post.description}</td>
                                            <td>${post.paragraph}</td>
                                            <td><img src="/post/${post.image}" width="50px" height="50px"/></td>
                                            <td>${post.category.title}</td>
                                            <td>
                                            <td>
                                                <a href="/admin/post/edit/${post.id_post}"><i
                                                        class='far fa-edit'></i></a> |
                                                <a href="/admin/post/delete/${post.id_post}"><i
                                                        class="fas fa-trash-alt"></i></a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="../../template/admin/script.jsp" %>
</body>

</html>