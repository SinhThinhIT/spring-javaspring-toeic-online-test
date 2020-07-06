<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="app-sidebar sidebar-shadow">
    <div class="app-header__logo">
        <div class="logo-src"></div>
        <div class="header__pane ml-auto">
            <div>
                <button type="button" class="hamburger close-sidebar-btn hamburger--elastic" data-class="closed-sidebar">
                                <span class="hamburger-box">
                                    <span class="hamburger-inner"></span>
                                </span>
                </button>
            </div>
        </div>
    </div>
    <div class="app-header__mobile-menu">
        <div>
            <button type="button" class="hamburger hamburger--elastic mobile-toggle-nav">
                            <span class="hamburger-box">
                                <span class="hamburger-inner"></span>
                            </span>
            </button>
        </div>
    </div>
    <div class="app-header__menu">
                        <span>
                        <button type="button"
                                class="btn-icon btn-icon-only btn btn-primary btn-sm mobile-toggle-header-nav">
                            <span class="btn-icon-wrapper">
                                <i class="fa fa-ellipsis-v fa-w-6"></i>
                            </span>
                        </button>
                        </span>
    </div>
    <div class="scrollbar-sidebar">
        <div class="app-sidebar__inner">
            <ul class="vertical-nav-menu metismenu">
                <li class="app-sidebar__heading">Thông Tin Users</li>
                <li>
                    <a href="/admin/" class="mm-active">
                        <i class="metismenu-icon pe-7s-rocket"></i> Bảng Thông Tin
                    </a>
                </li>
                <li>
                    <a href="/admin/edit-Info">
                        <i class="metismenu-icon pe-7s-mouse"></i> Sửa Thông Tin
                    </a>
                </li>
                <li class="app-sidebar__heading">Tạo Bài Viết/Tạo Bài Tập</li>
                <li>
                    <a href="#">
                        <i class="metismenu-icon pe-7s-diamond"></i> Thể Loại
                        <i class="metismenu-state-icon pe-7s-angle-down caret-left"></i>
                    </a>
                    <ul>
                        <li>
                            <a href="/admin/category/create">
                                <i class="metismenu-icon">
                                </i>Thêm Thể Loại
                            </a>
                        </li>
<%--                        <li>--%>
<%--                            <a href="/admin/category/edit">--%>
<%--                                <i class="metismenu-icon">--%>
<%--                                </i>Sửa thể loại--%>
<%--                            </a>--%>
<%--                        </li>--%>
                        <li>
                            <a href="/admin/category/list">
                                <i class="metismenu-icon">
                                </i>Xem thể loại
                            </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#">
                        <i class="metismenu-icon pe-7s-diamond"></i> Bài Viết
                        <i class="metismenu-state-icon pe-7s-angle-down caret-left"></i>
                    </a>
                    <ul>
                        <li>
                            <a href="/admin/post/create">
                                <i class="metismenu-icon">
                                </i>Thêm Bài Viết
                            </a>
                        </li>
                        <li>
<%--                            <a href="/admin/post/edit">--%>
<%--                                <i class="metismenu-icon">--%>
<%--                                </i>Sửa Bài Viết--%>
<%--                            </a>--%>
                        </li>
                        <li>
                            <a href="/admin/post/list">
                                <i class="metismenu-icon">
                                </i>Xem Bài Viết
                            </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#">
                        <i class="metismenu-icon pe-7s-car"></i> Bài Tập
                        <i class="metismenu-state-icon pe-7s-angle-down caret-left"></i>
                    </a>
                    <ul>
                        <li>
                            <a href="/admin/exam/create">
                                <i class="metismenu-icon">
                                </i>Thêm Bài Tập
                            </a>
                        </li>
                        <li>
                            <a href="/admin/exam/list">
                                <i class="metismenu-icon">
                                </i>Xem Bài Tập
                            </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#">
                        <i class="metismenu-icon pe-7s-car"></i> Mã Đề
                        <i class="metismenu-state-icon pe-7s-angle-down caret-left"></i>
                    </a>
                    <ul>
                        <li>
                            <a href="/admin/code/create">
                                <i class="metismenu-icon">
                                </i>Thêm Mã Đề
                            </a>
                        </li>
                        <li>
                            <a href="/admin/code/list">
                                <i class="metismenu-icon">
                                </i>Xem Mã Đề
                            </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#">
                        <i class="metismenu-icon pe-7s-car"></i> Câu Trả Lời
                        <i class="metismenu-state-icon pe-7s-angle-down caret-left"></i>
                    </a>
                    <ul>
                        <li>
                            <a href="/admin/answer/create">
                                <i class="metismenu-icon">
                                </i>Thêm Câu Trả lời
                            </a>
                        </li>
                        <li>
                            <a href="/admin/answer/list">
                                <i class="metismenu-icon">
                                </i>Xem Câu Trả lời
                            </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#">
                        <i class="metismenu-icon pe-7s-car"></i> Level Toeic
                        <i class="metismenu-state-icon pe-7s-angle-down caret-left"></i>
                    </a>
                    <ul>
                        <li>
                            <a href="/admin/level/createLevel">
                                <i class="metismenu-icon">
                                </i>Thêm Level
                            </a>
                        </li>
                        <li>
                            <a href="/admin/level/view">
                                <i class="metismenu-icon">
                                </i>Xem Level
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="app-sidebar__heading">Widgets</li>
                <li>
                    <a href="dashboard-boxes.html">
                        <i class="metismenu-icon pe-7s-display2"></i> Dashboard Boxes
                    </a>
                </li>
                <%--<li class="app-sidebar__heading">Forms</li>--%>
                <%--<li>--%>
                    <%--<a href="forms-controls.html">--%>
                        <%--<i class="metismenu-icon pe-7s-mouse">--%>
                        <%--</i>Forms Controls--%>
                    <%--</a>--%>
                <%--</li>--%>
                <%--<li>--%>
                    <%--<a href="forms-layouts.html">--%>
                        <%--<i class="metismenu-icon pe-7s-eyedropper">--%>
                        <%--</i>Forms Layouts--%>
                    <%--</a>--%>
                <%--</li>--%>
                <%--<li>--%>
                    <%--<a href="forms-validation.html">--%>
                        <%--<i class="metismenu-icon pe-7s-pendrive">--%>
                        <%--</i>Forms Validation--%>
                    <%--</a>--%>
                <%--</li>--%>
            </ul>
        </div>
    </div>
</div>