<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
                <h1 class="h3 mb-4 text-gray-800">Profile</h1>
                <div class="row justify-content-md-center">
                    <div class="col-lg-1"></div>
                    <div class="col-lg-4 col-xlg-3 col-md-5">
                        <div class="card">
                            <div class="card-body">
                                <div style="text-align: center">
                                    <img src="/avatar/${avatarUsers.image}" class="img-circle" width="150">
                                    <h4 class="card-title m-t-10">${avatarUsers.name}</h4>
                                    <a href="/users/update/edit/${avatarUsers.id_avatar}" class="btn btn-success"><i class="fas fa-edit"></i></a> | <a href="#" class="btn btn-danger"><i class="fas fa-trash"></i></a>
                                </div>
                            </div>
                            <hr />
                            <div class="card-body">
                                <small class="text-muted">Username </small>
                                <h6>${avatarUsers.users.username}</h6>
                                <small class="text-muted">Email address </small>
                                <h6>${avatarUsers.users.email}</h6>
<%--                                <small class="text-muted p-t-30 db">Phone</small>--%>
<%--                                <h6>+91 654 784 547</h6>--%>
                                <small class="text-muted p-t-30 db">Address</small>
                                <h6>${avatarUsers.address}</h6>
                            </div>
                        </div>
                    </div>
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