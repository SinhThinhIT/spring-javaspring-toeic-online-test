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

                <!-- Page Heading -->
                <h1 class="h3 mb-4 text-gray-800">Edit Profile Users</h1>
                <div class="mb-4 text-gray-800">
                    <form:form action="/users/update/updateEdit" method="post" modelAttribute="avatarUsers" enctype="multipart/form-data">
                        <fom:input type="hidden" path="id_avatar" name="id_avatar" value="${avatarUsers.id_avatar}"/>
                        <div class="form-group">
                            <form:input path="users" disabled="true" value="${users.username}" class="form-control"/>
                        </div>
                        <div class="form-group">
                            <label for="name">Enter Name :</label>
                            <form:input path="name" type="text" class="form-control" placeholder="Enter name" id="name"/>
                        </div>
                        <div class="form-group">
                            <label for="address">Enter Address:</label>
                            <form:input path="address" type="text" class="form-control" placeholder="Enter address" id="address"/>
                        </div>
                        <div class="form-group">
                            <label for="avartarUsers">Choose File:</label>
                            <form:input path="image" type="file" class="form-control-file border" id="avartarUsers" name="avatarUsers"/>
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form:form>
                </div>
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