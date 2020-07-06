<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->

<head>
    <%@include file="template/toeic/head.jsp"%>
    <title>${title.name}</title>
    <!-- Custom CSS -->
    <link rel="stylesheet" href="/web/css/style.css" />
    <!-- menu -->
    <link rel="stylesheet" href=/web/css/menu.css" />
    <!-- main content -->
    <link rel="stylesheet" href="/web/css/main.css" />

    <!-- Reset CSS -->
    <link rel="stylesheet" href="/web/css/reset.css" />


</head>

<body>
    <!--[if lt IE 7]>
            <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="#">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

    <%@include file="template/toeic/header.jsp"%>
    <div class="main-content">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 content-center">
                    <p style="color: white;">Thi Toeic mọi lúc mọi nơi</p>
                    <h1>Đăng Ký Tài Khoản Để Được học nhiều hơn</h1>
                    <p class="lead">
                        <a class="btn btn-primary btn-lg" href="/registration" role="button">Đăng Ký Ngay</a>
                    </p>
                </div>

            </div>
        </div>
    </div>
    <!-- Tin Tuc -->
    <div class="recent_news_area section__padding">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8 col-md-10">
                    <div class="section_title text-center mb-70">
                        <h3 class="mb-45">Tin Tức</h3>
<%--                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>--%>
                    </div>
                </div>
            </div>
            <div class="row">
                <c:forEach items="${postList}" var="post">
                <div class="col-md-6">
                    <div class="single__news">
                        <div class="thumb">
                            <a href="/viewpost/${post.id_post}">
                                <img src="/post/${post.image}" alt="">
                            </a>
                            <span class="badge">Group Study</span>
                        </div>
                        <div class="news_info">
                            <a href="/viewpost/${post.id_post}">
                                <h4>${post.title}</h4>
                            </a>
                            <p class="d-flex align-items-center">
                                <span><i class="fa fa-calendar" aria-hidden="true"></i>${post.create_date}</span>
                                <span><i class="fa fa-comment" aria-hidden="true"></i> 01 comments</span>
                            </p>
                        </div>
                    </div>
                </div>
                </c:forEach>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="single__news">
                        <div class="thumb">
                            <a href="details.jsp">
                                <img src="/web/img/toeic_background.jpg" alt="">
                            </a>
                            <span class="badge">Group Study</span>
                        </div>
                        <div class="news_info">
                            <a href="details.jsp">
                                <h4>Those Other College Expenses You Aren’t Thinking About</h4>
                            </a>
                            <p class="d-flex align-items-center">
                                <span><i class="fa fa-calendar" aria-hidden="true"></i>May 10, 2020</span>
                                <span><i class="fa fa-comment" aria-hidden="true"></i> 01 comments</span>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="single__news">
                        <div class="thumb">
                            <a href="details.jsp">
                                <img src="/web/img/toeic_background.jpg" alt="">
                            </a>
                            <span class="badge bandge_2">Hall Life</span>
                        </div>
                        <div class="news_info">
                            <a href="details.jsp">
                                <h4>Those Other College Expenses You Aren’t Thinking About</h4>
                            </a>
                            <p class="d-flex align-items-center">
                                <span><i class="fa fa-calendar" aria-hidden="true"></i>May 10, 2020</span>
                                <span><i class="fa fa-comment" aria-hidden="true"></i> 01 comments</span>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="single__news">
                        <div class="thumb">
                            <a href="details.jsp">
                                <img src="/web/img/toeic_background.jpg" alt="">
                            </a>
                            <span class="badge">Group Study</span>
                        </div>
                        <div class="news_info">
                            <a href="details.jsp">
                                <h4>Those Other College Expenses You Aren’t Thinking About</h4>
                            </a>
                            <p class="d-flex align-items-center">
                                <span><i class="fa fa-calendar" aria-hidden="true"></i>May 10, 2020</span>
                                <span><i class="fa fa-comment" aria-hidden="true"></i> 01 comments</span>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="single__news">
                        <div class="thumb">
                            <a href="details.jsp">
                                <img src="/web/img/toeic_background.jpg" alt="">
                            </a>
                            <span class="badge bandge_2">Hall Life</span>
                        </div>
                        <div class="news_info">
                            <a href="details.jsp">
                                <h4>Those Other College Expenses You Aren’t Thinking About</h4>
                            </a>
                            <p class="d-flex align-items-center">
                                <span><i class="fa fa-calendar" aria-hidden="true"></i>May 10, 2020</span>
                                <span><i class="fa fa-comment" aria-hidden="true"></i> 01 comments</span>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="course_all_btn text-center">
                        <a href="blog_news.jsp" class="boxed-btn4">View All course</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Tin tuc -->
    <!-- Tin Tuc -->
    <div class="recent_news_area section__padding1">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8 col-md-10">
                    <div class="section_title text-center mb-70">
                        <h3 class="mb-45">Tài Liệu Toeic</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="single__news">
                        <div class="thumb">
                            <a href="details.jsp">
                                <img src="/web/img/toeic_background.jpg" alt="">
                            </a>
                            <span class="badge">Group Study</span>
                        </div>
                        <div class="news_info">
                            <a href="details.jsp">
                                <h4>Those Other College Expenses You Aren’t Thinking About</h4>
                            </a>
                            <p class="d-flex align-items-center">
                                <span><i class="fa fa-calendar" aria-hidden="true"></i>May 10, 2020</span>
                                <span><i class="fa fa-comment" aria-hidden="true"></i> 01 comments</span>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="single__news">
                        <div class="thumb">
                            <a href="details.jsp">
                                <img src="/web/img/toeic_background.jpg" alt="">
                            </a>
                            <span class="badge bandge_2">Hall Life</span>
                        </div>
                        <div class="news_info">
                            <a href="details.jsp">
                                <h4>Those Other College Expenses You Aren’t Thinking About</h4>
                            </a>
                            <p class="d-flex align-items-center">
                                <span><i class="fa fa-calendar" aria-hidden="true"></i>May 10, 2020</span>
                                <span><i class="fa fa-comment" aria-hidden="true"></i> 01 comments</span>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="single__news">
                        <div class="thumb">
                            <a href="details.jsp">
                                <img src="/web/img/toeic_background.jpg" alt="">
                            </a>
                            <span class="badge">Group Study</span>
                        </div>
                        <div class="news_info">
                            <a href="details.jsp">
                                <h4>Those Other College Expenses You Aren’t Thinking About</h4>
                            </a>
                            <p class="d-flex align-items-center">
                                <span><i class="fa fa-calendar" aria-hidden="true"></i>May 10, 2020</span>
                                <span><i class="fa fa-comment" aria-hidden="true"></i> 01 comments</span>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="single__news">
                        <div class="thumb">
                            <a href="details.jsp">
                                <img src="/web/img/toeic_background.jpg" alt="">
                            </a>
                            <span class="badge bandge_2">Hall Life</span>
                        </div>
                        <div class="news_info">
                            <a href="details.jsp">
                                <h4>Those Other College Expenses You Aren’t Thinking About</h4>
                            </a>
                            <p class="d-flex align-items-center">
                                <span><i class="fa fa-calendar" aria-hidden="true"></i>May 10, 2020</span>
                                <span><i class="fa fa-comment" aria-hidden="true"></i> 01 comments</span>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="single__news">
                        <div class="thumb">
                            <a href="details.jsp">
                                <img src="/web/img/toeic_background.jpg" alt="">
                            </a>
                            <span class="badge">Group Study</span>
                        </div>
                        <div class="news_info">
                            <a href="details.jsp">
                                <h4>Those Other College Expenses You Aren’t Thinking About</h4>
                            </a>
                            <p class="d-flex align-items-center">
                                <span><i class="fa fa-calendar" aria-hidden="true"></i>May 10, 2020</span>
                                <span><i class="fa fa-comment" aria-hidden="true"></i> 01 comments</span>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="single__news">
                        <div class="thumb">
                            <a href="details.jsp">
                                <img src="/web/img/toeic_background.jpg" alt="">
                            </a>
                            <span class="badge bandge_2">Hall Life</span>
                        </div>
                        <div class="news_info">
                            <a href="details.jsp">
                                <h4>Those Other College Expenses You Aren’t Thinking About</h4>
                            </a>
                            <p class="d-flex align-items-center">
                                <span><i class="fa fa-calendar" aria-hidden="true"></i>May 10, 2020</span>
                                <span><i class="fa fa-comment" aria-hidden="true"></i> 01 comments</span>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="course_all_btn text-center">
                        <a href="blog_news.jsp" class="boxed-btn4">View All course</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Tin tuc -->
    <!-- Tin Tuc -->
    <div class="recent_news_area section__padding">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8 col-md-10">
                    <div class="section_title text-center mb-70">
                        <h3 class="mb-45">Kỹ Năng Toeic</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="single__news">
                        <div class="thumb">
                            <a href="details.jsp">
                                <img src="/web/img/toeic_background.jpg" alt="">
                            </a>
                            <span class="badge">Group Study</span>
                        </div>
                        <div class="news_info">
                            <a href="details.jsp">
                                <h4>Those Other College Expenses You Aren’t Thinking About</h4>
                            </a>
                            <p class="d-flex align-items-center">
                                <span><i class="fa fa-calendar" aria-hidden="true"></i>May 10, 2020</span>
                                <span><i class="fa fa-comment" aria-hidden="true"></i> 01 comments</span>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="single__news">
                        <div class="thumb">
                            <a href="details.jsp">
                                <img src="/web/img/toeic_background.jpg" alt="">
                            </a>
                            <span class="badge bandge_2">Hall Life</span>
                        </div>
                        <div class="news_info">
                            <a href="details.jsp">
                                <h4>Those Other College Expenses You Aren’t Thinking About</h4>
                            </a>
                            <p class="d-flex align-items-center">
                                <span><i class="fa fa-calendar" aria-hidden="true"></i>May 10, 2020</span>
                                <span><i class="fa fa-comment" aria-hidden="true"></i> 01 comments</span>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="single__news">
                        <div class="thumb">
                            <a href="details.jsp">
                                <img src="/web/img/toeic_background.jpg" alt="">
                            </a>
                            <span class="badge">Group Study</span>
                        </div>
                        <div class="news_info">
                            <a href="details.jsp">
                                <h4>Those Other College Expenses You Aren’t Thinking About</h4>
                            </a>
                            <p class="d-flex align-items-center">
                                <span><i class="fa fa-calendar" aria-hidden="true"></i>May 10, 2020</span>
                                <span><i class="fa fa-comment" aria-hidden="true"></i> 01 comments</span>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="single__news">
                        <div class="thumb">
                            <a href="details.jsp">
                                <img src="/web/img/toeic_background.jpg" alt="">
                            </a>
                            <span class="badge bandge_2">Hall Life</span>
                        </div>
                        <div class="news_info">
                            <a href="details.jsp">
                                <h4>Those Other College Expenses You Aren’t Thinking About</h4>
                            </a>
                            <p class="d-flex align-items-center">
                                <span><i class="fa fa-calendar" aria-hidden="true"></i>May 10, 2020</span>
                                <span><i class="fa fa-comment" aria-hidden="true"></i> 01 comments</span>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="single__news">
                        <div class="thumb">
                            <a href="details.jsp">
                                <img src="/web/img/toeic_background.jpg" alt="">
                            </a>
                            <span class="badge">Group Study</span>
                        </div>
                        <div class="news_info">
                            <a href="details.jsp">
                                <h4>Those Other College Expenses You Aren’t Thinking About</h4>
                            </a>
                            <p class="d-flex align-items-center">
                                <span><i class="fa fa-calendar" aria-hidden="true"></i>May 10, 2020</span>
                                <span><i class="fa fa-comment" aria-hidden="true"></i> 01 comments</span>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="single__news">
                        <div class="thumb">
                            <a href="details.jsp">
                                <img src="/web/img/toeic_background.jpg" alt="">
                            </a>
                            <span class="badge bandge_2">Hall Life</span>
                        </div>
                        <div class="news_info">
                            <a href="details.jsp">
                                <h4>Those Other College Expenses You Aren’t Thinking About</h4>
                            </a>
                            <p class="d-flex align-items-center">
                                <span><i class="fa fa-calendar" aria-hidden="true"></i>May 10, 2020</span>
                                <span><i class="fa fa-comment" aria-hidden="true"></i> 01 comments</span>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="course_all_btn text-center">
                        <a href="blog_news.jsp" class="boxed-btn4">View All course</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Tin tuc -->
    <!-- Footer Bean -->
    <%@include file="template/toeic/footer.jsp"%>
    <%@include file="template/toeic/script.jsp"%>
</body>

</html>