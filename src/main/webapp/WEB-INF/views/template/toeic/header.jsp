    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <!-- tag-libs -->
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

    <!-- JSTL -->
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    <%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
    <header>
        <div class="header-area ">
            <div class="header-top_area">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="header_top_wrap d-flex justify-content-between align-items-center">
                                <div class="text_wrap">
                                    <p><span>Thinh Luffy</span> <span>Toeic | Online</span></p>
                                </div>
                                <div class="text_wrap">
                                    <p>
                                        <sec:authorize access="!isAuthenticated()">
                                            <a href="/login"><i class="fa fa-sign-in" aria-hidden="true"></i> Đăng Nhập</a>
                                            <a href="/registration"><i class="fa fa-user-plus" aria-hidden="true"
                                                                       style="padding-right: 4px;"></i>Đăng Ký</a>
                                        </sec:authorize>
                                        <sec:authorize access="isAuthenticated() and hasRole('ROLE_MEMBER')">
                                            <a href="/users/update/profile">${users.username} | <img style="border-radius: 50%;" src="/avatar/${users.avatar.image}" width="40px" height="40px" /></a>
                                            <a href="/logout"><i class="fa fa-sign-out" aria-hidden="true"></i>Layout</a>
                                        </sec:authorize>

                                    </p>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="sticky-header" class="main-header-area">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="header_wrap d-flex justify-content-between align-items-center">
                                <div class="header_left">
                                    <div class="logo">
                                        <a href="/index">
                                            <img src="/web/img/toeic-logo.png" alt="">
                                        </a>
                                    </div>
                                </div>
                                <div class="header_right d-flex align-items-center">
                                    <div class="main-menu d-none d-lg-block">
                                        <nav>
                                            <ul id="navigation">
                                                <li><a href="/index"><i class="fa fa-home" aria-hidden="true"></i>Trang
                                                    Chủ</a></li>
                                                <!-- <li><a href="Courses.html">Danh Mục</a></li> -->
                                                <li><a href="#">Thông Tin <i class="fa fa-angle-down"
                                                                             aria-hidden="true"></i></a>
                                                    <ul class="submenu">
                                                        <li><a href="/blog_news">Tin tức</a></li>
                                                        <li><a href="/blog_news">Tài Liệu Toeic</a></li>
                                                        <li><a href="/blog_news">Kỹ năng Toeic</a></li>
                                                    </ul>
                                                </li>
                                                <li><a href="#">Hướng Dẫn <i class="fa fa-angle-down"
                                                                             aria-hidden="true"></i></a>
                                                    <ul class="submenu">
                                                        <li><a href="/details">Tạo tài khoản</a></li>
                                                        <li><a href="/details">Cách Thức Thi</a></li>
                                                        <li><a href="/details">Cách Tính Điểm</a></li>
                                                    </ul>
                                                </li>
                                                <li><a href="/about">Về Chúng Tôi</a></li>
                                            </ul>
                                        </nav>
                                    </div>
                                    <div class="Appointment">
                                        <div class="book_btn d-none d-lg-block">
                                            <a data-scroll-nav='1' href="/users/"><i class="fa fa-graduation-cap"
                                                                                     aria-hidden="true"></i> Thi
                                                Ngay</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="mobile_menu d-block d-lg-none">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>