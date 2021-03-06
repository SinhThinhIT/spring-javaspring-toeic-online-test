<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
        <div class="sidebar-brand-icon rotate-n-15">
            <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3">SB Admin <sup>2</sup></div>
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider my-0">

    <!-- Nav Item - Dashboard -->
    <li class="nav-item active">
        <a class="nav-link active" href="/users/">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Dashboard</span></a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider">

    <%--!-- Nav Item - Dashboard -->--%>
    <%--<li class="nav-item">--%>
        <%--<a class="nav-link active" href="#">--%>
            <%--<i class="fas fa-fw fa-tachometer-alt"></i>--%>
            <%--<span>Thi </span></a>--%>
    <%--</li>--%>

    <%--<!-- Divider -->--%>
    <%--<hr class="sidebar-divider">--%>

    <!-- Heading -->
    <div class="sidebar-heading">
        Luyện Tập
    </div>

    <!-- Nav Item - Pages Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
            <i class="fas fa-fw fa-cog"></i>
            <span>Xem Videos Hướng Dẫn</span>
        </a>
        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Thể Loại </h6>
                <a class="collapse-item" href="/users/videos">Ngữ Pháp</a>
                <a class="collapse-item" href="/users/videos">Từ Vựng</a>
            </div>
        </div>
    </li>

    <!-- Nav Item - Utilities Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities" aria-expanded="true" aria-controls="collapseUtilities">
            <i class="fas fa-fw fa-wrench"></i>
            <span>Tải Đề</span>
        </a>
        <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Mức Đề:</h6>
                <a class="collapse-item" href="/users/downloads">Đề dễ</a>
                <a class="collapse-item" href="/users/downloads">Đề trung bình</a>
                <a class="collapse-item" href="/users/downloads">Đề khó</a>
            </div>
        </div>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Nav Item - Tables -->
    <li class="nav-item">
        <a class="nav-link" href="/users/rank">
            <i class="fas fa-fw fa-table"></i>
            <span>Bảng Xếp Hạng</span></a>
    </li>


    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>

</ul>