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
                <h1 class="h3 mb-4 text-gray-800">Settings</h1>

                <div class="col-lg-12">

                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Edit Form</h6>
                        </div>
                        <a href="/users/update/editProfile" class="btn btn-success btn-icon-split">
                            <!--<span class="icon text-white-50">-->
                            <!--<i class="fas fa-check"></i>-->
                            <!--</span>-->
                            <span class="text">Update Users</span>
                        </a>
                    </div>
                </div>

<%--                <div class="col-lg-6">--%>

<%--                    <div class="card shadow mb-4">--%>
<%--                        <div class="card-header py-3">--%>
<%--                            <h6 class="m-0 font-weight-bold text-primary">Delete Account</h6>--%>
<%--                        </div>--%>
<%--                        <a href="#" class="btn btn-danger btn-icon-split">--%>
<%--                            <!--<span class="icon text-white-50">-->--%>
<%--                            <!--<i class="fas fa-check"></i>-->--%>
<%--                            <!--</span>-->--%>
<%--                            <span class="text">Delete Users</span>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                </div>--%>

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