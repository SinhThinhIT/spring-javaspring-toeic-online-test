<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!-- tag-libs -->

<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="vi">

<head>
    <title>Admin - Toeic</title>
    <%@include file="../../template/admin/head.jsp" %>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" />
</head>

<body>
<div class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
    <%@include file="../../template/admin/top.jsp"%>
    <div class="app-main">
        <%@include file="../../template/admin/sidebar.jsp"%>
        <div class="app-main__outer">
            <div class="app-main__inner">

                <div class="tab-content">
                    <div class="tab-pane tabs-animation fade show active" id="tab-content-0" role="tabpanel">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="container">
                                    <h2>Danh sách level</h2>
                                    <a href="/admin/level/createLevel" class="btn btn-outline-success">Thêm Level</a>

                                    <table class="table">
                                        <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Tiêu đề</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${levelToeics}" var="level">
                                            <tr>
                                                <td>${level.id_level}</td>
                                                <td>${level.title}</td>
                                                <td>
                                                    <a href="/admin/level/edit/${level.id_level}"><i class="fa fa-edit"></i></a> |
                                                    <a href="/admin/level/delete/${level.id_level}"><i class='fas fa-trash-alt'></i></a>
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
</div>
<%@include file="../../template/admin/script.jsp" %>
</body>

</html>