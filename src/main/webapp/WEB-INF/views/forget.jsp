<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- tag-libs -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Toeic | Online</title>
    <meta name="description" content="Toeic Online danh cho moi nguoi" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="shortcut icon" href="/web/img/favicon.png" type="image/x-icon" />
    <!-- Custom CSS -->
    <!-- <link rel="stylesheet" href="css/style.css" /> -->
    <link rel="stylesheet" href="/web/css/forget-login-toeic.css">
    <!-- Reset CSS -->
    <link rel="stylesheet" href="/web/css/reset.css" />
    <!-- Fontawesome cdn -->
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
    <!-- Boostrap CSS -->
    <link rel="stylesheet" href="/web/assets/css/bootstrap.min.css" />
</head>

<body>
    <!--[if lt IE 7]>
            <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="#">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->


    <div class="forget-page">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-12">
                    <h1>Bạn Quên Mật Khẩu.</h1>
                    <!-- <p>Vui lòng chọn các lấy lại mật khẩu</p> -->
                    <div class="row">
                        <div class="col-md-12 col-12">
                            <form:form action="/forgotPassword" modelAttribute="forgotPassword" method="post">
                                <label for="email">Nhập email đăng ký toàn khoản:</label>
                                <div class="input-group mb-3">
                                    <form:input type="text" class="form-control" placeholder="Email" id="email" path="email" />
                                    <div class="input-group-append">
                                        <span class="input-group-text">@gmail.com</span>
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-primary">Xác nhận</button>
                            </form:form>
<%--                            <a href="/login" class="back">Đăng nhập lại</a>--%>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="/web/assets/js/jquery.min.js"></script>
    <script src="/web/assets/js/popper.min.js"></script>
    <script src="/web/assets/js/bootstrap.min.js"></script>
    <!-- Custom JS Login -->
    <script src="#"></script>
</body>

</html>