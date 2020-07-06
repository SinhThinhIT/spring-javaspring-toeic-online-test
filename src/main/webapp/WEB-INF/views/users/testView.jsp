<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- tag-libs -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fom" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <title>SB Admin 2 - Blank</title>
    <%@include file="../template/users/head.jsp"%>

</head>

<body id="page-top">

<!-- Page Wrapper -->
<div id="wrapper">

    <!-- Sidebar -->
    <%@include file="../template/users/sidebar.jsp"%>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">

            <!-- Topbar -->
            <%@include file="../template/users/top.jsp"%>
            <!-- End of Topbar -->

            <!-- Begin Page Content -->
            <div class="container-fluid">
                <table class="table">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Answer</th>
                            <th>Users</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${testViews}" var="testView">
                            <tr>
                                <td>${testView.id}</td>
                                <td>${testView.answer}</td>
                                <td>${testView.users.username}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <p>Point: ${point}</p>
            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- End of Main Content -->
    </div>
    <!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->
<%@include file="../template/users/script.jsp"%>
</body>

</html>